#!/usr/bin/env python3
"""Patch a Hollywood U: Rising Stars 3.8.0 APK for current Android and offline play.

The game itself is not in this repository. Pass the path to an APK you already have.
"""

from __future__ import annotations

import argparse
import os
import re
import shutil
import subprocess
import sys
from pathlib import Path

from hwu_native import patch_libhss
from rr_card import add_config_style, build_card

ROOT = Path(__file__).resolve().parents[1]
TOOLS = ROOT / "tools"
COMPAT = ROOT / "patcher" / "ModernCompat.smali"
# Tweak releases stay on 1.0.x. Bump only VERSION_PATCH.
VERSION_PATCH = 21
VERSION_NAME = f"1.0.{VERSION_PATCH}"
# 1.0.0 -> 10000, 1.0.1 -> 10001. Each build still replaces the previous one.
VERSION_CODE = 10000 + VERSION_PATCH
APK_NAME = f"Hollywood-U-{VERSION_NAME}.apk"

METHOD_RE = re.compile(r"^\.method\b.*?^\.end method", re.M | re.S)
LOCALS_RE = re.compile(r"^([ \t]*)\.locals (\d+)\s*$", re.M)
PEND_RE = re.compile(
    r"^([ \t]*)invoke-static \{([^}]*)\}, Landroid/app/PendingIntent;->"
    r"(getActivity|getActivities|getBroadcast|getService|getForegroundService)"
    r"\(([^)]*)\)Landroid/app/PendingIntent;\s*$",
    re.M,
)
RECV_RE = re.compile(
    r"^([ \t]*)invoke-virtual \{([^}]*)\}, L[^;]+;->registerReceiver"
    r"\(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;\)Landroid/content/Intent;\s*$",
    re.M,
)
RECV4_RE = re.compile(
    r"^([ \t]*)invoke-virtual \{([^}]*)\}, L[^;]+;->registerReceiver"
    r"\(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;\)"
    r"Landroid/content/Intent;\s*$",
    re.M,
)
SIG_RE = re.compile(r"^\.method\s+(.*?)\((.*?)\)", re.M)


def slots(descriptor: str) -> int:
    count = index = 0
    while index < len(descriptor):
        char = descriptor[index]
        if char == "[":
            while index < len(descriptor) and descriptor[index] == "[":
                index += 1
            if index < len(descriptor) and descriptor[index] == "L":
                index = descriptor.index(";", index) + 1
            else:
                index += 1
            count += 1
        elif char == "L":
            index = descriptor.index(";", index) + 1
            count += 1
        elif char in "JD":
            count += 2
            index += 1
        else:
            count += 1
            index += 1
    return count


def register_used(method: str, name: str) -> bool:
    return re.search(rf"(?<![A-Za-z0-9_/]){name}(?![A-Za-z0-9_])", method) is not None


def patch_method(method: str) -> tuple[str, int, int, int]:
    pending = list(PEND_RE.finditer(method))
    receivers = list(RECV_RE.finditer(method))
    receivers4 = list(RECV4_RE.finditer(method))
    if not pending and not receivers and not receivers4:
        return method, 0, 0, 0
    if re.search(r"^\s*\.registers\s+\d+", method, re.M) and pending:
        raise RuntimeError("a PendingIntent method uses .registers; this patcher expects .locals")

    counts = [0, 0, 0]
    if pending:
        local = LOCALS_RE.search(method)
        if not local:
            raise RuntimeError("PendingIntent method has no .locals")
        local_count = int(local.group(2))
        header = SIG_RE.search(method)
        param_slots = slots(header.group(2)) + (0 if re.search(r"\bstatic\b", header.group(1)) else 1)
        needs_extra = local_count + param_slots >= 16
        new_reg = f"v{local_count}"
        if not needs_extra:
            if register_used(method, new_reg):
                raise RuntimeError(f"{new_reg} is already used in a .locals {local_count} method")
            method = method[: local.start()] + f"{local.group(1)}.locals {local_count + 1}" + method[local.end() :]

        def rewrite(match: re.Match[str]) -> str:
            indent, regs, name, signature = match.group(1), match.group(2), match.group(3), match.group(4)
            parts = [part.strip() for part in regs.split(",") if part.strip()]
            if len(parts) < 4:
                raise RuntimeError(f"unexpected PendingIntent invoke: {match.group(0)}")
            flags = parts[3]
            destination = flags if needs_extra else new_reg
            if needs_extra and flags in parts[:3] + parts[4:]:
                raise RuntimeError(f"cannot reuse aliased flags register {flags}")
            parts[3] = destination
            counts[0] += 1
            return (
                f"{indent}invoke-static {{{flags}}}, Lcom/pixelberrystudios/hwuandroid/ModernCompat;->pendingFlags(I)I\n"
                f"{indent}move-result {destination}\n"
                f"{indent}invoke-static {{{', '.join(parts)}}}, Landroid/app/PendingIntent;->"
                f"{name}({signature})Landroid/app/PendingIntent;"
            )

        method = PEND_RE.sub(rewrite, method)

    def rewrite_receiver(match: re.Match[str]) -> str:
        counts[1] += 1
        return (
            f"{match.group(1)}invoke-static {{{match.group(2)}}}, "
            "Lcom/pixelberrystudios/hwuandroid/ModernCompat;->registerReceiver"
            "(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;"
        )

    def rewrite_receiver4(match: re.Match[str]) -> str:
        counts[2] += 1
        return (
            f"{match.group(1)}invoke-static {{{match.group(2)}}}, "
            "Lcom/pixelberrystudios/hwuandroid/ModernCompat;->registerReceiverExported"
            "(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;"
        )

    method = RECV_RE.sub(rewrite_receiver, method)
    method = RECV4_RE.sub(rewrite_receiver4, method)
    return method, counts[0], counts[1], counts[2]


def patch_smali_tree(smali_root: Path) -> None:
    destination = smali_root / "com/pixelberrystudios/hwuandroid/ModernCompat.smali"
    destination.parent.mkdir(parents=True, exist_ok=True)
    shutil.copyfile(COMPAT, destination)
    for extra in (
        "OfflineMenu.smali",
        "OfflineMenu$Click.smali",
        "OfflineMenu$Open.smali",
        "OfflineMenu$Gear.smali",
        "OfflineMenu$Row.smali",
        "OfflineMenu$Run.smali",
        "OfflineMenu$Toggle.smali",
        "OfflineMenu$Native.smali",
    ):
        shutil.copyfile(ROOT / "patcher" / extra, destination.parent / extra)
    pending = receivers = receivers4 = 0
    for path in smali_root.rglob("*.smali"):
        if path.name == "ModernCompat.smali":
            continue
        text = path.read_text(encoding="utf-8")
        if "PendingIntent;->get" not in text and "registerReceiver(" not in text:
            continue
        pieces = []
        cursor = 0
        changed = False
        for method in METHOD_RE.finditer(text):
            pieces.append(text[cursor : method.start()])
            patched, p_count, r_count, r4_count = patch_method(method.group(0))
            pieces.append(patched)
            changed = changed or patched != method.group(0)
            pending += p_count
            receivers += r_count
            receivers4 += r4_count
            cursor = method.end()
        pieces.append(text[cursor:])
        if changed:
            path.write_text("".join(pieces), encoding="utf-8")
    activity = smali_root / "com/pixelberrystudios/iab/BaseIabActivity.smali"
    source = activity.read_text(encoding="utf-8")
    needle = "    invoke-super {p0, p1}, Lcom/pixelberrystudios/googleplay/GooglePlayBaseActivity;->onCreate(Landroid/os/Bundle;)V\n"
    insert = needle + "\n    invoke-static {p0}, Lcom/pixelberrystudios/hwuandroid/ModernCompat;->requestNotifications(Landroid/app/Activity;)V\n"
    if needle not in source:
        raise RuntimeError("could not find BaseIabActivity.onCreate")
    if "requestNotifications" not in source:
        source = source.replace(needle, insert, 1)
    source = source.replace(
        ".method protected onCreate(Landroid/os/Bundle;)V\n    .locals 2\n",
        ".method protected onCreate(Landroid/os/Bundle;)V\n    .locals 4\n",
        1,
    )
    result_old = """.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
"""
    result_new = result_old + """    invoke-static {p0, p1, p2, p3}, Lcom/pixelberrystudios/hwuandroid/OfflineMenu;->onResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :hwu_offline_continue

    return-void

    :hwu_offline_continue
"""
    if "OfflineMenu;->onResult" not in source:
        if result_old not in source:
            raise RuntimeError("could not find onActivityResult")
        source = source.replace(result_old, result_new, 1)
    content = "    invoke-virtual {p0, v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->setContentView(I)V\n"
    gear = content + "\n    invoke-static {p0}, Lcom/pixelberrystudios/hwuandroid/OfflineMenu;->attach(Landroid/app/Activity;)V\n"
    if "OfflineMenu;->attach" not in source:
        if content not in source:
            raise RuntimeError("could not find setContentView")
        source = source.replace(content, gear, 1)
    if "runOnGame" not in source:
        source += """
.method public static runOnGame(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->i:Lcom/pixelberrystudios/iab/BaseIabActivity;

    if-eqz v0, :missing

    iget-object v0, v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->j:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    if-eqz v0, :missing

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :missing
    return-void
.end method
"""
    activity.write_text(source, encoding="utf-8")
    sponsor = smali_root / "com/pixelberrystudios/darthkitty/DKSponsorPay.smali"
    if sponsor.is_file():
        sponsor_text = sponsor.read_text(encoding="utf-8")
        if "syncRr" not in sponsor_text:
            old = ".method public static native DKSponsorPayOnChangeStatusError()V\n.end method\n"
            new = old + """
.method public static syncRr()V
    .locals 0

    invoke-static {}, Lcom/pixelberrystudios/darthkitty/DKSponsorPay;->DKSponsorPayOnSPBrandEngageOffersAvailable()V

    return-void
.end method
"""
            if old not in sponsor_text:
                raise RuntimeError("could not find SponsorPay error native")
            sponsor.write_text(sponsor_text.replace(old, new, 1), encoding="utf-8")
    helpshift = smali_root / "com/helpshift/bs.smali"
    if helpshift.is_file():
        text = helpshift.read_text(encoding="utf-8")
        old = "    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;\n"
        new = (
            "    :try_start_svc\n"
            + old
            + "    :try_end_svc\n"
            + "    .catch Ljava/lang/IllegalStateException; {:try_start_svc .. :try_end_svc} :catch_svc\n\n"
            + "    :catch_svc\n"
        )
        if old in text and ":try_start_svc" not in text:
            helpshift.write_text(text.replace(old, new, 1), encoding="utf-8")
    print(f"smali: {pending} pending intents, {receivers} receivers, {receivers4} exported receivers")


def patch_manifest(manifest: Path) -> None:
    text = manifest.read_text(encoding="utf-8")
    if "POST_NOTIFICATIONS" not in text:
        text = text.replace(
            '    <uses-permission android:name="android.permission.READ_PHONE_STATE"/>\n',
            '    <uses-permission android:name="android.permission.READ_PHONE_STATE"/>\n'
            '    <uses-permission android:name="android.permission.POST_NOTIFICATIONS"/>\n'
            '    <uses-permission android:name="com.google.android.gms.permission.AD_ID"/>\n',
            1,
        )
    if "<queries>" not in text:
        text = text.replace(
            '    <application android:allowBackup="true"',
            "    <queries>\n"
            '        <package android:name="com.android.vending"/>\n'
            '        <package android:name="com.facebook.katana"/>\n'
            '        <package android:name="com.facebook.orca"/>\n'
            "        <intent>\n"
            '            <action android:name="android.intent.action.VIEW"/>\n'
            '            <data android:scheme="https"/>\n'
            "        </intent>\n"
            "        <intent>\n"
            '            <action android:name="android.intent.action.VIEW"/>\n'
            '            <data android:scheme="http"/>\n'
            "        </intent>\n"
            "    </queries>\n"
            '    <application android:allowBackup="true"',
            1,
        )
    old_app = (
        '<application android:allowBackup="true" android:icon="@drawable/ic_launcher" '
        'android:label="@string/app_name" android:name="com.pixelberrystudios.hwuandroid.HWUApp" '
        'android:theme="@style/Theme.NoTitleBar.FullScreen">'
    )
    new_app = (
        '<application android:allowBackup="true" android:extractNativeLibs="true" '
        'android:icon="@drawable/ic_launcher" android:label="@string/app_name" '
        'android:name="com.pixelberrystudios.hwuandroid.HWUApp" '
        'android:preserveLegacyExternalStorage="true" android:requestLegacyExternalStorage="true" '
        'android:theme="@style/Theme.NoTitleBar.FullScreen" android:usesCleartextTraffic="true">'
    )
    if old_app not in text and "usesCleartextTraffic" not in text:
        raise RuntimeError("application tag did not match the 3.8.0 manifest")
    text = text.replace(old_app, new_app, 1)
    if "org.apache.http.legacy" not in text:
        text = text.replace(
            new_app + "\n",
            new_app + '\n        <uses-library android:name="org.apache.http.legacy" android:required="false"/>\n',
            1,
        )
    text = text.replace(
        '<receiver android:name="com.leanplum.GcmBroadcastReceiver"',
        '<receiver android:exported="true" android:name="com.leanplum.GcmBroadcastReceiver"',
        1,
    )
    text = text.replace(
        '<receiver android:enabled="true" android:name="com.google.android.gms.measurement.AppMeasurementReceiver">',
        '<receiver android:enabled="true" android:exported="true" android:name="com.google.android.gms.measurement.AppMeasurementReceiver">',
        1,
    )
    manifest.write_text(text, encoding="utf-8")


def patch_styles(decoded: Path) -> None:
    item = '        <item name="android:windowOptOutEdgeToEdgeEnforcement">true</item>\n'
    replacements = {
        decoded / "res/values/styles.xml": (
            '        <item name="android:windowActionBar">false</item>\n    </style>',
            '        <item name="android:windowActionBar">false</item>\n' + item + "    </style>",
        ),
        decoded / "res/values-v11/styles.xml": (
            '        <item name="android:windowActionBar">false</item>\n    </style>',
            '        <item name="android:windowActionBar">false</item>\n' + item + "    </style>",
        ),
        decoded / "res/values-v14/styles.xml": (
            '    <style name="Theme.NoTitleBar.FullScreen" parent="@android:style/Theme.Holo.Light.NoActionBar.Fullscreen" />',
            '    <style name="Theme.NoTitleBar.FullScreen" parent="@android:style/Theme.Holo.Light.NoActionBar.Fullscreen">\n'
            + item
            + "    </style>",
        ),
    }
    for path, (old, new) in replacements.items():
        text = path.read_text(encoding="utf-8")
        if "windowOptOutEdgeToEdgeEnforcement" in text:
            continue
        if old not in text:
            raise RuntimeError(f"could not update {path.name}")
        path.write_text(text.replace(old, new, 1), encoding="utf-8")


def patch_apktool_yml(path: Path) -> None:
    text = path.read_text(encoding="utf-8")
    text = re.sub(r"targetSdkVersion:\s*\d+", "targetSdkVersion: 35", text, count=1)
    text = re.sub(r"versionCode:\s*\d+", f"versionCode: {VERSION_CODE}", text, count=1)
    text = re.sub(r"versionName:\s*\S+", f"versionName: {VERSION_NAME}", text, count=1)
    if "targetSdkVersion: 35" not in text:
        raise RuntimeError("apktool.yml has no targetSdkVersion")
    path.write_text(text, encoding="utf-8")


def patch_native_libs(decoded: Path) -> None:
    lib = decoded / "lib"
    armeabi = lib / "armeabi"
    v7a = lib / "armeabi-v7a"
    if not (armeabi / "libHSS.so").is_file():
        raise RuntimeError("lib/armeabi/libHSS.so is missing; this is not the 3.8.0 client")
    if v7a.exists():
        shutil.rmtree(v7a)
    shutil.copytree(armeabi, v7a)
    for folder in (armeabi, v7a):
        patch_libhss(folder / "libHSS.so")
    print(f"native: offline client, store, RR MOD tab, save menu, {VERSION_NAME}")


def run(command: list[str]) -> None:
    print("+", " ".join(command))
    subprocess.run(command, check=True)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--apk", required=True, type=Path, help="path to Hollywood U 3.8.0")
    parser.add_argument("--out", type=Path, default=ROOT / "dist" / APK_NAME)
    parser.add_argument("--java", type=Path, default=None, help="java binary; defaults to JAVA_HOME or PATH")
    parser.add_argument("--work", type=Path, default=ROOT / "build" / "decoded")
    args = parser.parse_args()

    java = args.java
    if java is None:
        home = Path(os.environ["JAVA_HOME"]) / "bin" / "java" if "JAVA_HOME" in os.environ else None
        java = home if home and home.is_file() else Path(shutil.which("java") or "")
    if not java or not Path(java).is_file():
        sys.exit("Java 17 or newer is required. Install a JDK and pass --java or set JAVA_HOME.")

    apktool = TOOLS / "apktool.jar"
    signer = TOOLS / "uber-apk-signer.jar"
    if args.work.exists():
        shutil.rmtree(args.work)
    args.work.parent.mkdir(parents=True, exist_ok=True)
    run([str(java), "-Xmx3g", "-jar", str(apktool), "d", "-f", "-o", str(args.work), str(args.apk)])
    patch_apktool_yml(args.work / "apktool.yml")
    patch_manifest(args.work / "AndroidManifest.xml")
    patch_styles(args.work)
    patch_smali_tree(args.work / "smali")
    strings = args.work / "assets" / "strings.json"
    if strings.is_file():
        import json
        table = json.loads(strings.read_text(encoding="utf-8"))
        table["settings.about"] = "OFFLINE"
        strings.write_text(json.dumps(table, ensure_ascii=False, separators=(", ", ": ")), encoding="utf-8")
    helper = args.work / "assets" / "hss.lua"
    if helper.is_file():
        lua = helper.read_text(encoding="utf-8")
        old_wait = 'function tutorialWaitForTap(co)\nshowFullscreenImage("", co) -- just show an empty screen\nend\n'
        new_wait = "function tutorialWaitForTap(co)\nend\n"
        if old_wait not in lua and new_wait not in lua:
            raise RuntimeError("could not find tutorialWaitForTap")
        helper.write_text(lua.replace(old_wait, new_wait, 1), encoding="utf-8")
    assets = args.work / "assets"
    (assets / "rr_mod_card.ccb").write_bytes(build_card((assets / "android_settings_card.ccb").read_bytes()))
    config = assets / "Config.protobin"
    config.write_bytes(add_config_style(config.read_bytes()))
    patch_native_libs(args.work)

    unsigned = args.work.parent / "unsigned.apk"
    run([str(java), "-Xmx3g", "-jar", str(apktool), "b", str(args.work), "-o", str(unsigned)])
    keystore = args.work.parent / "offline.keystore"
    if not keystore.exists():
        keytool = Path(java).with_name("keytool")
        run(
            [
                str(keytool),
                "-genkeypair",
                "-keystore",
                str(keystore),
                "-alias",
                "hwu",
                "-keyalg",
                "RSA",
                "-keysize",
                "2048",
                "-validity",
                "10000",
                "-storepass",
                "android",
                "-keypass",
                "android",
                "-dname",
                "CN=Hollywood U Offline, O=Local, C=US",
            ]
        )
    signed_dir = args.work.parent / "signed"
    if signed_dir.exists():
        shutil.rmtree(signed_dir)
    run(
        [
            str(java),
            "-jar",
            str(signer),
            "-a",
            str(unsigned),
            "--ks",
            str(keystore),
            "--ksAlias",
            "hwu",
            "--ksPass",
            "android",
            "--ksKeyPass",
            "android",
            "-o",
            str(signed_dir),
        ]
    )
    signed = next(signed_dir.glob("*.apk"))
    args.out.parent.mkdir(parents=True, exist_ok=True)
    shutil.copyfile(signed, args.out)
    print(f"wrote {args.out}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
