<div align="center">

# ⭐ Hollywood U · RR Mod

**Hollywood U: Rising Stars 3.8.0, playable again — offline, on current Android, with a fully unlocked store.**

[![Release](https://img.shields.io/github/v/release/RobyRew/hollywood-u-rising-stars?label=release&color=1e88e5)](https://github.com/RobyRew/hollywood-u-rising-stars/releases/latest)
![Game](https://img.shields.io/badge/game-3.8.0-f5b301)
![Android](https://img.shields.io/badge/Android-10%20→%2017-3ddc84?logo=android&logoColor=white)
![targetSdk](https://img.shields.io/badge/targetSdk-35-3ddc84)
![ABI](https://img.shields.io/badge/ABI-32--bit%20ARM-orange)
![Network](https://img.shields.io/badge/network-not%20needed-6c757d)
[![License](https://img.shields.io/badge/patcher-MIT-blue)](LICENSE)

<img src="docs/images/loading.jpg" alt="Hollywood U loading screen with the blue RR gear on the right" width="760">

</div>

Pixelberry shut Hollywood U's servers and store listings on **10 August 2022**. The last client, 3.8.0 (2017), stops at an *Offline* wall, refuses to install on modern phones, and its store can no longer pay out. This repository rewrites that APK so it runs entirely on the phone.

> [!NOTE]
> Hollywood U, its art, scripts and native library are © Pixelberry Studios. The `decoded/` tree and the release APKs are the 3.8.0 client, published here so the game survives. The patcher code in `patcher/` is MIT.

---

## ✨ What you get

<table>
<tr>
<td width="50%" valign="top">

### 📱 Runs on today's phones
- `targetSdkVersion` **35** — installs on Android 14–17 without the "built for an older version" block
- `exported` flags, `PendingIntent` immutability and receiver export flags for Android 12+
- 32-bit libraries also packaged as `armeabi-v7a`
- Cleartext HTTP, legacy storage and `org.apache.http.legacy` kept for the 2017 libraries

</td>
<td width="50%" valign="top">

### 🔌 No servers, no account
- The dead server-time call uses the phone clock, so the *Offline* dialog never blocks
- Store, currency tab and clothing tab skip their "Network error" screens
- No Pixelberry account, no Google account, no signal needed to buy
- Crash-prone leftovers after a buy (sound JNI, analytics, LeanPlum, sale-date check, reward cinematic) are skipped

</td>
</tr>
<tr>
<td valign="top">

### 🛍️ Store that pays out
- Every pack, bundle, building, outfit and friend buys locally and grants **what its config says**
- *Unlocks with Quest …* cards are buyable — the quest itself still runs normally
- *Unlocks with Club VIP* friends are buyable; the Club VIP building stays a normal buy

</td>
<td valign="top">

### ⚙️ RR MOD settings tab
- **+10M / +100M cash** and **diamonds**, **+1 level**, **+5M XP**, **max level**
- **Max** every friend, A-lister and building in one tap, **UNLOCK ALL**, or **RESET** the save
- Locked clothing, makeovers, classes, expansions and store items are open; missing art falls back to an empty sprite instead of crashing
- **Export / import** the real save (`files/`, `shared_prefs/`, `databases/`) as a `.hollywoodujson` file
- The first-run acceptance letter doesn't wait for a tap; the tutorial after it runs as usual
- Quests keep the game's own rules — nothing is marked complete for you

</td>
</tr>
</table>

<div align="center">
<img src="docs/images/store.jpg" alt="Building store open over the campus, level 70" width="49%">
<img src="docs/images/settings-dialog.jpg" alt="The game's Settings dialog with Help, Settings and Alerts tabs" width="49%">
</div>

### ⚙️ RR MOD — inside the game's own Settings

Open the game's **Settings** (Help · Settings · Alerts) and pick the fourth tab, **RR MOD**, with the settings gear icon. It is a real cocos card in the game's `.ccb` format, styled like the Settings card:

| Section | Buttons |
| --- | --- |
| **Currency & Levels** | `+10M CASH` · `+100M CASH` · `+10M DIAMONDS` · `+100M DIAMONDS` · `+1 LEVEL` (exactly the XP missing to the next level) · `+5M XP` · `MAX LEVEL` |
| **Unlock & Save** | `MAX FRIENDS` (every friend and A-lister to the top skill level) · `MAX BUILDINGS` (every building to its top upgrade level) · `UNLOCK ALL` · `EXPORT` · `IMPORT` · `RESET` |

- **UNLOCK ALL** adds 100M cash and 100M diamonds, sets the top player level and maxes every friend, A-lister and building.
- **RESET** asks first, then deletes the save on the phone and starts a new game.
- Every grant stops at **2,000,000,000**, so no counter wraps past the 32-bit limit.
- The Settings tab's **BACKUP SAVE** button starts an export. There are no floating buttons or Android pop-ups.

---

## 📥 Install

1. Download `Hollywood-U_3.8.0_RR-Mod_1.0.x.apk` from [**Releases**](https://github.com/RobyRew/hollywood-u-rising-stars/releases/latest) and copy it to the phone. Each release also carries `Hollywood-U_3.8.0_original.apk`, Pixelberry's untouched client, and `SHA256SUMS.txt`.
2. Play Protect will say it doesn't know the developer — that's the mod's own signing key. Choose **Install anyway**.
3. Open the game. The campus and everything shipped inside the APK runs from the phone.

Every release from 1.0.0 on is signed with the same key, so a new release installs over the old one and keeps your save.

> [!IMPORTANT]
> **Coming from a build before 1.0.0** (the old "Fully Unlocked" 1.0.20 was signed with a key that no longer exists): in the old build tap the blue gear → **Export progress**, uninstall it, install 1.0.0, then Settings → **RR MOD** → **IMPORT**. (`adb restore` refuses data across signing keys, so use the export.)

<details>
<summary><b>📵 Phones it can't run on</b></summary>

The client ships only 32-bit ARM code (`libHSS.so`). Phones that dropped 32-bit support — Samsung from the Galaxy S24 and A55, recent Pixels — report the app as incompatible, and no manifest change fixes that. Any phone or emulator that still runs 32-bit ARM can.

</details>

<details>
<summary><b>🧩 What isn't in 3.8.0</b></summary>

Content Pixelberry only delivered from the server is not in the APK, including the last stretch of the main quest. Outfit bundles are still defined and buyable; the patch doesn't invent missing quest files.

</details>

---

## 🛠️ Build it yourself

```mermaid
flowchart LR
    A[Hollywood U 3.8.0 APK] -->|apktool d| B[decoded tree]
    B --> C[manifest + styles<br/>targetSdk 35, exported, cleartext]
    B --> D[smali<br/>ModernCompat, OfflineMenu]
    B --> E[assets<br/>rr_mod_card.ccb, Config style, hss.lua]
    B --> F[libHSS.so<br/>Thumb patches + caves]
    C & D & E & F -->|apktool b| G[unsigned.apk]
    G -->|uber-apk-signer| H[Hollywood-U_3.8.0_RR-Mod_1.0.x.apk]
```

**Needs:** Python 3.9+, a JDK 17+ (`java` on `PATH`, `JAVA_HOME`, or `--java`). Apktool 3.0.3 and uber-apk-signer 1.3.0 are in `tools/` (licenses in `tools/THIRD_PARTY.txt`).

```bash
python3 patcher/patch_apk.py --apk "Hollywood+U-+Rising+Stars_3.8.0_APKPure.apk"
```

The result is `dist/Hollywood-U_3.8.0_RR-Mod_1.0.x.apk`. Releases stay on `1.0.x`; `VERSION_PATCH` in `patcher/patch_apk.py` is the only number to bump.

> [!IMPORTANT]
> **One key signs everything.** Builds are signed with `build/offline.keystore` (alias `hwu`), or the file in `SIGNING_KEYSTORE` with the password in `SIGNING_PASSWORD`. Without that exact key a build can't update an installed copy. A local run creates the key only when none exists; on CI a missing key stops the build.

| Option | Default |
| --- | --- |
| `--apk` | *(required)* the 3.8.0 APK, package `com.pixelberrystudios.hwuandroid` |
| `--out` | `dist/Hollywood-U_3.8.0_RR-Mod_1.0.x.apk` |
| `--java` | `JAVA_HOME/bin/java`, then `java` on `PATH` |
| `--work` | `build/decoded` |

Every native patch checks the original bytes first, so any version other than 3.8.0 stops with an error instead of writing a broken library.

### GitHub Actions

| Workflow | Runs on | Does |
| --- | --- | --- |
| **Check patcher** | every push and PR | compiles the Python |
| **Build and release** | manual run, or a pushed `1.0.x` tag | downloads the original from the `source-apk` release, patches it, signs it with the permanent key, and publishes release `1.0.x` with the RR-Mod APK, the original APK and `SHA256SUMS.txt` |

To ship a new version: add a `## 1.0.x` section to [CHANGELOG.md](CHANGELOG.md) with what changed, bump `VERSION_PATCH`, push, then run **Build and release** (or push the matching tag, e.g. `git tag 1.0.1 && git push origin 1.0.1`). The release note is that CHANGELOG section.

The workflow needs two repo secrets, set once:

```bash
base64 -i build/offline.keystore | gh secret set SIGNING_KEYSTORE_B64
gh secret set SIGNING_PASSWORD --body android
```

---

## 🗂️ Repository map

```text
patcher/
├── patch_apk.py        decode → patch manifest, styles, smali, assets, lib → build → sign (versions, names, key)
├── hwu_native.py       libHSS.so byte patches (offline, store, gates, HUD, grants)
├── rr_tab.py           RR MOD tab: Settings-dialog hook, button actions, max-level loops
├── rr_card.py          builds rr_mod_card.ccb and its Config.protobin title style
├── thumb.py            small Thumb assembler used by rr_tab.py
├── ModernCompat.smali  PendingIntent / registerReceiver / notification shims
└── OfflineMenu*.smali  export / import / reset, toasts, nativeAction bridge
docs/REVERSE.md         how the store, quest card, HUD and grants were traced
decoded/                apktool tree of the 3.8.0 client
tools/                  apktool, uber-apk-signer, Frida hook list
```

How the store payout, quest card, HUD buttons and grant entry points were found is in [docs/REVERSE.md](docs/REVERSE.md).

---

## 🐞 Support

Open an [issue](https://github.com/RobyRew/hollywood-u-rising-stars/issues) with:

- phone model and Android version
- fresh install or update
- a screenshot of the dialog
- if you can, `adb logcat` from the moment it fails

<div align="center">
<sub>Patcher © RobyRew · MIT &nbsp;·&nbsp; Hollywood U © Pixelberry Studios, not licensed by this repository</sub>
</div>
