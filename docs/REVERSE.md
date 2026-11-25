# Hollywood U 3.8.0 notes

These notes are for the personal offline patch of `com.pixelberrystudios.hwuandroid` 3.8.0. The game itself is not in this repo. Addresses are offsets in `lib/armeabi-v7a/libHSS.so`. The first executable LOAD is identity-mapped, so a file offset is the same number as the Thumb address with the low bit cleared.

## What changed after 1.0.8

The sections below were written against 1.0.8. Later builds changed these parts:

| 1.0.8 | 1.0.20 / 1.0.21 |
| --- | --- |
| HUD plus buttons credit 10,000,000 (`ADD_COINS_STUB`) | the stubs are no longer written; the plus buttons open the store |
| `AppStoreManager::purchase` branches to the product-id cave at `0x3A43FA` | `purchase` (`0x4015C8`) calls the game's `creditPurchase` (`0x3F5290`) through `LOCAL_PURCHASE`, so a product grants its config reward. Nothing branched to `0x3A43FA` any more; 1.0.21 reuses that space |
| `meetsPassiveCompletionRequirements` / `doesCharacterMeetRequirement` forced true | only byte-checked, not patched; quests use the game's rules |
| tutorial entry points return early | only byte-checked; `hss.lua` `tutorialWaitForTap` is emptied so the letter does not wait |
| `0x3A4540` payout epilogue | not written; the 1.0.20 release still carried unreachable bytes there and in `0x36A818..0x36A900` from an earlier build |

## RR MOD settings tab (1.0.21)

`SettingsDialogState::onInit` (`0x3B9204`) builds the dialog from three cards, each `CCBuilder::nodeGraphWithFile(ccb)` then `TabbedDialog::addTab(name, icon, node, false)` (`0x4B6970`) and `setTabEnabled` (`0x4B69D8`):

| Tab | Name key | Icon | Card |
| --- | --- | --- | --- |
| Help | `icon.help` | `button_help.png` | `help_card.ccb` |
| Settings | store title type 4 | `button_settings.png` | `android_settings_card.ccb` (`SettingsCard`) |
| Alerts | `icon.alerts` | `button_notifications_tab.png` | `alerts_settings_card.ccb` |

`rr_tab.py` replaces the last store at `0x3B93E4` with a branch to a cave that adds a fourth tab, `RR MOD`, with `button_settings.png` and `rr_mod_card.ccb`.

- `.ccb` files are `darthkitty.Proto.CcbNode` protobufs. Field numbers come from `CcbNode::k*FieldNumber` in the library: 1 class, 7/8 member name/type, 9 position, 11/12 scale, 17 tag, 59 custom class, 62 label string, 63-65 sprite frames, 67 selector, 69 children.
- Section titles are `DKLabelTTF` members of `SettingsCard` at `+0x164`, `+0x168`, `+0x16C`. `SettingsCard::init` dereferences every member, so the RR card skips `init` and sets the three titles through `CCLabelProtocol::setString` (vtable slot 0). Their Lobster font comes from a `Config.protobin` field 23 entry keyed by the ccb file name.
- Card callbacks call `listener->onDialogResult(dialog, action, NULL)`: no sender reaches `onDialogResult`. The hook is on `SettingsCard::privacyPolicyButtonCallback` (`0x49E8A8`) instead. When `this` equals the pointer stored at `0x980BD0`, the tapped `CCMenuItem`'s tag (`CCNode` `+0x7C`) selects the action, then `OfflineMenu.nativeAction(int)` runs through `JniHelper::getStaticMethodInfo` and JNIEnv slot 141 (`CallStaticVoidMethod`).
- Friends and A-listers: `LogicManager` vtable `+0x28` is `CharacterLogic`. Its character map header is `+0x60` (leftmost node at `+0x68`, id at node `+0x10`). For each id, `getNumOfSkillLevelsToMax` (`0x3CDB3C`) levels go to `addSkillPoints(id, levels)` (`0x3CDBBC`), which walks the level table and tells the character listeners.
- Buildings: `LogicManager` vtable `+0x20` is `BuildingLogic`. `[+0x24]` vtable `+0x14` is the mutable `GameState`; buildings are the repeated field at `+0x38` / count `+0x3C`. `Building` is type `+0x20`, id `+0x24`, upgrade level `+0x2C`, has-bits `+0x3C` (bit 4 = level). `getMaxUpgradeLevel(type)` (`0x3C7D18`) is `StructureConfig[+0x38] - 1`. After writing the level the cave calls each listener in the `std::list` at `BuildingLogic+0x1C` with `(BuildingKey{vptr, type, id}, level)`, as `purchaseUpgrade` (`0x3CB1D8`) does. The `BuildingKey` vptr is the GOT entry at `0x9725CC` plus 8.
- The caves live in the dead bodies of the `DKLeanPlumManager::track` overloads (`0x369738..0x369A30`; every entry is already `bx lr` and callers only branch to entries), the former product-id cave (`0x3A43FA..0x3A44B6`) and the server-time tail after the OFFLINE cave (`..0x3A45F8`).

The phone used for the live checks is an LG Wing, Android 10, not rooted. Frida cannot attach with `frida-server`. The debug build loads `libfrida-gadget.so` and listens on `127.0.0.1:27042`. A normal patch from `patcher/patch_apk.py` does not include the gadget. `tools/frida/quest.js` is the hook list.

## Cash and diamonds

Rings in the scripts are hearts. Hearts are the diamond counter. Coins are the cash counter.

The HUD plus buttons are:

| Function | Address | What a tap does in 1.0.8 |
| --- | --- | --- |
| `HUD::addCoinsPressed` | `0x475C6C` | credit 10,000,000 coins |
| `HUD::addHeartsPressed` | `0x475D4C` | credit 10,000,000 hearts |

Both stubs call `PlayerLogic` through the singleton at `0x3DD234` (`bl` there, then vtable `+0x48`) and then:

| Wallet | Credit function |
| --- | --- |
| coins | `0x3E69B4` |
| hearts | `0x3E69F0` |
| XP | `0x3E40E0` |
| stars (books) | `0x3E69D0` |
| pencils | `0x3E6A10` |
| tickets | `0x3E6A30` |

`libHSS.so` is the engine shared with High School Story, so it carries all six
wallets. Hollywood U's own `HUD.ccb` has only `coinsMeter` (cash),
`heartsMeter` (diamonds) and `ticketsMeter`; it has no stars or pencil nodes,
and its level icon `starpower.png` is the XP level. `WorldMapState::updateGoalsButton`
calls `HUD::showTickets(QuestLogic::isQuestCompleted(<weekly goals quest>))`, and
the weekly goals themselves come from `Net::GoalManager` (server). The RR MOD
tab grants cash, diamonds and XP only.

The amount is a 32-bit argument in `r1`. 10,000,000 is `0x00989680`.

`BaseIabActivity.startPurchaseFlow` does **not** reach those functions. It builds a Google Play payload and starts the billing UI. The Play servers for this game are gone, so a settings button that only calls `startPurchaseFlow` never adds currency.

The C++ store path is `AppStoreManager::purchase` at `0x4015C8`. That entry branches to the offline cave at `0x3A43FA`. The cave reads the product id (`hwu_coins_5000` grants 5000 coins, and parsing stops at the first non-digit). When it finishes, `0x3A44AA` branches to `0x3A4540`, which also grants 10,000,000 coins and 10,000,000 hearts and then calls `firePurchaseCompleted` at `0x4028D4`.

The gear menu cannot add a new JNI export without rebuilding the ELF hash tables. It reuses three existing public JNI methods that only ran for the removed SponsorPay offer flow, and calls them on the cocos thread with `GLSurfaceView.queueEvent`:

| JNI method | Address | Grant |
| --- | --- | --- |
| `DKSponsorPayOnChangeStatusCloseFinished` | `0x36A7F8` | 10,000,000 cash |
| `DKSponsorPayOnChangeStatusCloseAborted` | `0x36A850` | 10,000,000 diamonds |
| `DKSponsorPayOnChangeStatusError` | `0x36A8A8` | 5,000,000 XP |

## Quest bypass

`QuestLogic::evaluateQuestState` at `0x3ED7CC` is the switch the quest card uses. `getQuestState` at `0x3ED9F0` is a 56-byte wrapper around it.

| Return | Meaning on the quest card |
| --- | --- |
| 1 | Locked, or not viewable |
| 2 | Can be started (`startActiveQuest` at `0x3B6D40`) |
| 3 | Started, requirements still open |
| 4 | Ready to collect (`startQuestRewardCollection` at `0x3B5D48`) |

The body is small:

- Quest proto byte `+0x1C` is the started flag.
- If it is not started, a viewable quest returns 2 and a hidden one returns 1.
- If it is started and viewable, bit 11 of the dword at `+0x54` means “this quest has completion requirements”.
- That bit set calls `meetsPassiveCompletionRequirements` at `0x3ECC58`. True returns 4. False returns 3.
- That bit clear returns 4 immediately. Those quests only need to be started.

`QuestSelectionScreenState::handleQuestActionButton` at `0x3B72C4` is the card button. State 2 starts the quest, state 4 collects the reward through the real game path, state 3 tries the in-progress action.

1.0.8 makes two predicates return true:

- `meetsPassiveCompletionRequirements` (`0x3ECC58`) so a started quest is ready to collect.
- `doesCharacterMeetRequirement` (`0x3E7928`) so a character slot accepts the character you send.

Open the quest and tap it. The collect path is still the game’s own reward function, so the next quest and the reward dialog stay intact. Quest files that were never shipped in the 3.8.0 APK are still absent. Forcing `isQuestCompleted` (`0x3E71F4`) true was not done: that function walks the chain and reports whether an earlier quest id is already behind the current one, and a permanent true there skips the reward handoff.

`advanceToNextQuestInChain` is `0x3EE044`. It takes the quest id string and moves the chain. The settings screen does not call it directly because the reward button already does, once the requirement check passes.

## Other gates already forced open

These return true (`movs r0, #1; bx lr`) unless noted:

| Check | Address |
| --- | --- |
| `isCurrencyItemUnlocked` | `0x3F50B8` |
| `isCurrencyBuildingUnlocked` | `0x3F4FF8` |
| `isCurrencyClothingUnlocked` | `0x3F3F34` |
| `isClothingUnlocked` | `0x3D6834` |
| `isMakeoverUnlocked` | `0x3CD95C` |
| `EducationLogic::isUnlocked` | `0x3D8E04` |
| `ExpansionLogic::isUnlocked` | `0x3DB544` |
| `ClothingLogic::isLocked` | `0x3D6750` returns false |
| `setLocked` | `0x4AD860` ignores the flag and clears the badge |
| `areProductsAvailable` / `hasProduct` / `canPurchase` | `0x4014D0` / `0x401568` / `0x4015BC` |
| tutorial start, triggers, and `isTutorialActive` | `0x400EA4`, `0x400EE0`, `0x3FB224` |

Account-creation branches inside `purchaseItem` (`0x3BF686`, `0x3BF6EC`) and `purchaseCurrency` (`0x3C069C`, `0x3C0700`) no longer divert into the dead create-account server. The currency and clothing “network error” branches are `0x3C219C`, `0x3C2660`, and `0x45ADA0`.

## Settings gear

The cocos settings card is `SettingsDialogState`. `onInit` is `0x3B9204`. The map callback that opens it is `WorldMapState::menuSettingsCallback` at `0x38BAA8`. That gear is not on the HUD for a save that never finished the tutorial, because the icon setup around `0x38CD00` bails out on a progress bit.

1.0.8 does not replace that cocos widget. `OfflineMenu.attach` adds a blue rounded button in the same column as the other HUD buttons (under the hide button on a 2460×1080 landscape frame) and opens the RR Mod Settings panel on top of the game, including while the game’s own settings dialog is up. The panel is an Android dialog styled with the game’s blue and white, not a system alert list.

## Frida on this phone

```bash
adb forward tcp:27042 tcp:27042
python3 - << 'PY'
import frida
dev = frida.get_device_manager().add_remote_device('127.0.0.1:27042')
session = dev.attach('Gadget')
script = session.create_script(open('tools/frida/quest.js').read())
script.on('message', lambda m, d: print(m))
script.load()
input()
PY
```

Hook the Thumb entry with the low bit set. `evaluateQuestState`’s return is the table above. `addCoinsPressed` and `addHeartsPressed` log when the HUD plus buttons run.

On the LG Wing build of 1.0.8 the hook showed `meetsPassiveCompletionRequirements` returning 1 and `evaluateQuestState` returning 4, which is the collect-reward state. The gear opened RR Mod Settings over the campus, and the cash and diamond counters moved by exact multiples of 10,000,000. The game’s own settings card has the OFFLINE row, which calls the same panel.
