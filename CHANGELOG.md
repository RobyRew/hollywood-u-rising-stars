# Changelog

Each `## <version>` section is the release note for that version. The
**Build and release** workflow publishes the section whose heading matches
`VERSION_NAME` in `patcher/patch_apk.py`. Add a new section with only what
changed before bumping `VERSION_PATCH`.

## 1.0.0

First release of the RR Mod for **Hollywood U: Rising Stars 3.8.0**, the last
client Pixelberry shipped before the servers closed on 10 August 2022.

### Install and run
- `targetSdkVersion` 35: installs on Android 10 through 17.
- Android 12+ requirements: `exported` receivers, immutable `PendingIntent`s,
  receiver export flags, notification permission request.
- 32-bit libraries also packaged as `armeabi-v7a`; cleartext HTTP, legacy
  storage and `org.apache.http.legacy` kept for the 2017 libraries.
- Signed with one permanent key: every later release installs over this one
  and keeps the save.

### Offline
- The dead server-time call uses the phone clock, so the *Offline* dialog
  never blocks the game.
- No Pixelberry account, Google account or network is needed.
- Store, currency and clothing tabs skip their "Network error" screens.

### Store
- Every pack, bundle, building, outfit and friend buys locally and grants what
  its config says.
- Account-creation gates are skipped; requirement checks inside a product do
  not block the credit.
- Java calls that used to abort the process after a buy (currency sound,
  analytics, LeanPlum, sale-date check, reward cinematic) are skipped.
- *Unlocks with Quest* cards and *Unlocks with Club VIP* friends are buyable.

### Unlocked content
- Locked store items, clothing, makeovers, classes and expansions are open.
- Art the 3.8.0 APK never shipped falls back to an empty sprite instead of
  crashing (`CCSprite::initWithSpriteFrame(NULL)`).
- Quests keep the game's own rules.

### RR MOD tab (Settings → RR MOD)
A fourth tab in the game's own Settings dialog, built in the game's `.ccb`
format with native buttons:

| Section | Buttons |
| --- | --- |
| Currency & Levels | +10M cash · +100M cash · +10M diamonds · +100M diamonds · +1 level · +5M XP · max level |
| Unlock & Save | max friends · max buildings · unlock all · export · import · reset |

- **Unlock all**: +100M cash, +100M diamonds, top player level, every
  friend, A-lister and building at the top level.
- **Reset** asks first, then deletes the save on the phone and restarts into a
  new game.
- Every grant stops at **2,000,000,000**, so a counter never wraps past the
  32-bit limit.
- **Export / import** the real save (`files/`, `shared_prefs/`,
  `databases/`) as a `.hollywoodujson` file; the Settings tab's
  **BACKUP SAVE** button starts an export too.
- No floating buttons or Android pop-ups: everything lives in the game's UI.

### Release files
- `Hollywood-U_3.8.0_RR-Mod_1.0.0.apk`: the mod.
- `Hollywood-U_3.8.0_original.apk`: Pixelberry's untouched client.
- `SHA256SUMS.txt`: checksums of both.
