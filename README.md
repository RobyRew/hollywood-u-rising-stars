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
| Level and quest locks | Store items, buildings, clothes, makeovers, classes, and campus plots no longer check level or quest requirements. Lock badges are forced off. |
| Admissions office | Recruiting is no longer blocked by the “office is full” check. |
| OFFLINE button | A button on the game screen opens offline settings: export, import, and grants. It sits above the game, including while the normal settings dialog is open. |
| Save export and import | Export writes the real `files/`, `shared_prefs/`, and `databases/` data into a `.hollywoodujson` file. Import puts those bytes back and restarts the game. |

In the game, rings are the premium currency (the code calls them hearts) and coins are cash. Books are stars.

The offline menu grants are `hwu_rings_1000`, `hwu_coins_10000`, `hwu_stars_500`, `hwu_pencils_100`, `hwu_tickets_25`, and `hwu_xp_2000`. The number in the id is the amount added.

## Requirements

- Python 3.9 or newer
- A JDK, 17 or newer (`java` on `PATH`, or `JAVA_HOME`)
- Hollywood U 3.8.0, package `com.pixelberrystudios.hwuandroid`

Apktool 3.0.3 and uber-apk-signer 1.3.0 are included under `tools/`. Their licenses are in `tools/THIRD_PARTY.txt`.

## Build a patched APK

```bash
python3 patcher/patch_apk.py --apk /path/to/HollywoodU-3.8.0.apk
```

The result is `dist/Hollywood-U-3.8.0-offline.apk`. The first run creates `build/offline.keystore` and signs with it. Keep that keystore if you want later builds to install as an update instead of a different app.

```bash
python3 patcher/patch_apk.py --apk game.apk --out ~/Desktop/HollywoodU-offline.apk --java "$JAVA_HOME/bin/java"
```

## Install

1. Copy the APK to the phone.
2. If an older copy is installed and Android refuses the update, uninstall that copy first. A new signature cannot replace a different one.
3. Play Protect will say it has not seen this developer. That is the local signing key. Choose **Install anyway**.
4. Open the game. If a later dialog offers a local or new game, take it. The campus and the content shipped inside the APK run from the phone.
5. Tap the **OFFLINE** button at the bottom of the screen for export, import, and grants. It stays available while the game’s own settings dialog is open.
6. Open the store from the ring or coin button and buy a pack. The amount in the product id is what gets added (`hwu_rings_1490` adds 1490 rings, `hwu_coins_5000` adds 5000 coins). Locked cards can be bought without the level or quest.

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
