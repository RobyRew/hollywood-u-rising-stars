# Hollywood U offline patch

Patcher for a personal copy of **Hollywood U: Rising Stars 3.8.0**. It makes that 2017 client install on current Android, gets past the shutdown login wall, and lets the gem and cash store pay out with no Google account and no signal.

This repository does **not** contain the game. Hollywood U is copyright Pixelberry Studios. The official servers and store listings closed on 10 August 2022. You supply an APK you already have. The patcher only rewrites that file.

## What it changes

| Tweak | Why |
| --- | --- |
| `targetSdkVersion` 35 | Android 15 and later refuse anything below 24, and Play Protect warns when an app is more than two API levels behind the phone. 35 covers Android 14 through 17. |
| `android:exported` on receivers that were missing it | Required before an app targeting Android 12 or later will install. |
| Cleartext HTTP, legacy storage, and `org.apache.http.legacy` | The 2017 client and its libraries still use those platform behaviors. |
| `PendingIntent` immutability and `registerReceiver` export flags | Without them the process crashes on Android 12 and 13. |
| 32-bit libraries also packaged as `armeabi-v7a` | Many phones dropped the ancient `armeabi` ABI name and still run 32-bit code under `armeabi-v7a`. |
| Server-time bypass | Startup calls `android-api-live.playhollywoodu.com`, which no longer exists. That is the Offline dialog. The patch uses the phone clock and continues. |
| Store, rings, and coins offline | `canPurchase`, `hasProduct`, and `areProductsAvailable` no longer depend on Google Play. Buying `hwu_rings_*` adds rings and `hwu_coins_*` adds coins straight into the local save. No account and no network. |
| Currency and clothing tabs | The “Network error. Cannot access currency store” path is skipped. The clothing tab’s matching network error is skipped too. |
| Quests | Quest requirements, the tutorial, and lock checks stay on the game's own logic. |
| Admissions office | Recruiting is no longer blocked by the “office is full” check. |
| RR gear | A blue gear opens RR Mod Settings for cash, diamonds, XP, export, and import. Those grants add currency. They do not skip a quest step. |
| Acceptance letter | The first-run letter does not wait for a tap. The rest of a new game, including quests and the shop, still runs. |
| HUD plus buttons | The cash and diamond plus buttons open the store. The settings panel is what adds 10,000,000. |
| Skip tutorial | `startTutorial` and later tutorial triggers return immediately, and the “tutorial is active” check stays false, so a half-finished tutorial does not lock the campus. |
| Save export and import | Export writes the real `files/`, `shared_prefs/`, and `databases/` data into a `.hollywoodujson` file. Import puts those bytes back and restarts the game. |

In the game, rings are the premium currency (the code calls them hearts) and coins are cash. Books are stars.

A store product id such as `hwu_rings_1490` or `hwu_coins_5000` grants the number in the id. The gear menu can also add 10,000,000 cash or diamonds.

## Requirements

- Python 3.9 or newer
- A JDK, 17 or newer (`java` on `PATH`, or `JAVA_HOME`)
- Hollywood U 3.8.0, package `com.pixelberrystudios.hwuandroid`

Apktool 3.0.3 and uber-apk-signer 1.3.0 are included under `tools/`. Their licenses are in `tools/THIRD_PARTY.txt`.

## Build a patched APK

```bash
python3 patcher/patch_apk.py --apk /path/to/HollywoodU-3.8.0.apk
```

The result is `dist/Hollywood-U-1.0.x.apk`. Every release stays on `1.0.x`. The current one is `1.0.8`. That is the package version name and the filename. The first run creates `build/offline.keystore` and signs with it. Keep that keystore if you want later builds to install as an update instead of a different app.

How the quest card, the plus buttons, and the store payout were traced is written up in [docs/REVERSE.md](docs/REVERSE.md).

## GitHub build

Push this repo, then create a release named `source-apk` and attach your 3.8.0 APK to that release. The game stays out of git. Run the **Build tweaked APK** workflow. It downloads that release, patches it, and uploads `Hollywood-U-1.0.x.apk` as an artifact.

Every push also runs **Check patcher**, which only compiles the Python.

```bash
python3 patcher/patch_apk.py --apk game.apk --out ~/Desktop/HollywoodU-offline.apk --java "$JAVA_HOME/bin/java"
```

## Install

1. Copy the APK to the phone.
2. If an older copy is installed and Android refuses the update, uninstall that copy first. A new signature cannot replace a different one.
3. Play Protect will say it has not seen this developer. That is the local signing key. Choose **Install anyway**.
4. Open the game. If a later dialog offers a local or new game, take it. The campus and the content shipped inside the APK run from the phone.
5. Tap the blue gear for RR Mod Settings when you want to add cash, diamonds, or XP. Quests, the tutorial, and building moves stay on the game's own logic.
6. The cash and diamond plus buttons open the store. Buying a pack adds the amount in its product id, with no Google account and no network.
7. The acceptance letter does not wait for a tap. The next tutorial step still runs.

## Phones it cannot run on

The client ships only 32-bit ARM code (`libHSS.so`). Samsung dropped 32-bit apps starting with the Galaxy S24 and the Galaxy A55. On those phones the installer says the app is not compatible. No manifest change fixes that. A phone or emulator that still includes 32-bit ARM can run the patched build.

Levels that Pixelberry only delivered from the server are not in the 3.8.0 APK, including the last stretch of the main quest. Outfit bundles in the store are still defined, but this patch grants the ring and coin packs. It does not invent the missing quest files.

## Support

Open a GitHub issue when something fails. Include:

- phone model and Android version
- whether this was a fresh install or an update
- a screenshot of the dialog
- if you can, `adb logcat` from the moment you tap the store

Patches are matched to the 3.8.0 `libHSS.so`. Another version will stop with an error instead of writing a broken library.

## License

The patcher is [MIT](LICENSE). Hollywood U, its art, scripts, and native library remain Pixelberry Studios' copyright and are not licensed by this repository.
