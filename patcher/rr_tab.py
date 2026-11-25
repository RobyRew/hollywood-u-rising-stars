"""RR MOD tab inside the game's own Settings dialog (libHSS.so 3.8.0).

SettingsDialogState::onInit adds the Help, Settings and Alerts tabs. A fourth
tab is appended after them: it loads rr_mod_card.ccb (a SettingsCard built by
rr_card.py) and adds it with the settings gear icon.

Every button on that card uses privacyPolicyButtonCallback and carries its own
CocosBuilder tag. The callback is hooked: when `this` is the RR card the tag
selects a native action, then OfflineMenu.nativeAction(tag) runs in Java for
the toast, export and import. Any other card falls through to the original.

Tags:
  1 cash +10,000,000     2 diamonds +10,000,000    3 XP +5,000,000
  4 everything (1, 2, 3, 5, 6)
  5 every friend and A-lister to the top skill level
  6 every building to its top upgrade level
  7 export save           8 import save             9 open the RR panel
"""

from __future__ import annotations

from thumb import Asm

# --- game functions -------------------------------------------------------
LOGIC_MANAGER = 0x3DD234          # HSS::LogicManager::sharedManager()
LM_CHARACTER_LOGIC = 0x28         # vtable slot -> CharacterLogic*
LM_BUILDING_LOGIC = 0x20          # vtable slot -> BuildingLogic*
CCB_SHARED = 0x61126C             # cocos2d::CCBuilder::sharedBuilder()
CCB_NODE_GRAPH = 0x611434         # CCBuilder::nodeGraphWithFile(file, owner, bool)
ADD_TAB = 0x4B6970                # TabbedDialog::addTab(name, icon, node, bool)
SET_TAB_ENABLED = 0x4B69D8        # TabbedDialog::setTabEnabled(name, bool)
SKILL_LEVELS_TO_MAX = 0x3CDB3C    # CharacterLogic::getNumOfSkillLevelsToMax(int)
ADD_SKILL_POINTS = 0x3CDBBC       # CharacterLogic::addSkillPoints(int id, unsigned levels)
RB_TREE_INCREMENT = 0x720C9C      # std::_Rb_tree_increment(node)
MAX_UPGRADE_LEVEL = 0x3C7D18      # BuildingLogic::getMaxUpgradeLevel(type)
GET_STATIC_METHOD = 0x35FD98      # JniHelper::getStaticMethodInfo(info, cls, name, sig)
GRANT_CASH = 0x36A7F8
GRANT_DIAMONDS = 0x36A850
GRANT_XP = 0x36A8A8

# --- data -----------------------------------------------------------------
# Writable word inside an unused GOST table; holds the RR card pointer.
RR_CARD = 0x980BD0
# GOT slot holding the HSS::BuildingKey vtable symbol (vtable + 8 is the object vptr).
BUILDING_KEY_VTABLE_GOT = 0x9725CC
SETTINGS_ICON = 0x8A8B14          # "button_settings.png"
CARD_DIALOG = 0x15C               # TabbedDialogContentNode -> TabbedDialog
TITLE_MEMBERS = (0x164, 0x168, 0x16C)  # sound / general / account title labels

# --- patch sites ----------------------------------------------------------
ONINIT_TAIL = 0x3B93E4            # movs r3,#0xa4; mov r1,sb; str r4,[r1,r3]
ONINIT_RETURN = 0x3B93EA
PRIVACY_CALLBACK = 0x49E8A8       # push {r4,lr}; adds r4,r0,#0
PRIVACY_CONTINUE = 0x49E8AC

# --- caves ----------------------------------------------------------------
ACTION_CAVE = (0x3A43FA, 0x3A44B6)   # former product-id parser, unreachable
INIT_CAVE_END = 0x3A45F8             # after the OFFLINE menu cave
# DKLeanPlumManager::track overloads return at their first instruction
# (LEANPLUM_TRACK in hwu_native), so everything after that halfword is dead.
# Callers only branch to the entries.
CHAR_CAVE = (0x36973A, 0x3697A0)
BUILD_CAVE = (0x369892, 0x369928)
TITLE_CAVE = (0x36992A, 0x3699A4)

TAB_NAME = b"RR MOD"
CARD_FILE = b"rr_mod_card.ccb"
TITLES = (b"Currency", b"Max Levels", b"Save Data")


def _put(data: bytearray, region: tuple[int, int], blob: bytes, what: str) -> None:
    start, end = region
    if start + len(blob) > end:
        raise RuntimeError(f"{what} is {len(blob)} bytes, room is {end - start}")
    data[start : start + len(blob)] = blob


def _max_characters() -> bytes:
    a = Asm(CHAR_CAVE[0])
    a.push(3, 4, 5, 6, 7, lr=True)  # 24 bytes keeps sp 8-byte aligned
    a.bl(LOGIC_MANAGER)
    a.ldr(3, 0)
    a.ldr(3, 3, LM_CHARACTER_LOGIC)
    a.blx_reg(3)
    a.addr(7, 0)                 # r7 = CharacterLogic
    a.ldr(4, 7, 0x68)            # leftmost node of the character map
    a.movs(6, 0x60)
    a.adds_reg(6, 6, 7)          # r6 = map header (end)
    a.label("loop")
    a.cmp(4, 6)
    a.bcc("eq", "done")
    a.ldr(5, 4, 0x10)            # character id
    a.addr(1, 5)                 # this is unused: the callee fetches its own manager
    a.bl(SKILL_LEVELS_TO_MAX)
    a.subs3(2, 0, 0)             # r2 = levels left, flags set
    a.bcc("le", "next")
    a.addr(1, 5)
    a.addr(0, 7)
    a.bl(ADD_SKILL_POINTS)
    a.label("next")
    a.addr(0, 4)
    a.bl(RB_TREE_INCREMENT)
    a.addr(4, 0)
    a.b("loop")
    a.label("done")
    a.pop(3, 4, 5, 6, 7, pc=True)
    return a.assemble()


def _max_buildings() -> bytes:
    a = Asm(BUILD_CAVE[0])
    a.push(3, 4, 5, 6, 7, lr=True)
    a.sub_sp(16)                  # BuildingKey {vptr, type, id} + level
    a.bl(LOGIC_MANAGER)
    a.ldr(3, 0)
    a.ldr(3, 3, LM_BUILDING_LOGIC)
    a.blx_reg(3)
    a.addr(7, 0)                  # r7 = BuildingLogic
    a.ldr(0, 7, 0x24)
    a.ldr(3, 0)
    a.ldr(3, 3, 0x14)
    a.blx_reg(3)
    a.addr(6, 0)                  # r6 = mutable GameState
    a.movs(5, 0)
    a.label("loop")
    a.ldr(3, 6, 0x3C)             # building count
    a.cmp(5, 3)
    a.bcc("hs", "done")
    a.ldr(3, 6, 0x38)
    a.lsls(2, 5, 2)
    a.ldr_reg(4, 3, 2)            # r4 = Building*
    a.ldr(1, 4, 0x20)             # type; getMaxUpgradeLevel ignores this
    a.bl(MAX_UPGRADE_LEVEL)
    a.ldr(1, 4, 0x2C)             # current level
    a.cmp(0, 1)
    a.bcc("le", "next")           # signed: a type with no upgrades returns -1
    a.str_(0, 4, 0x2C)            # level = max
    a.str_sp(0, 12)
    a.ldr(2, 4, 0x3C)
    a.movs(3, 4)
    a.orrs(2, 3)
    a.str_(2, 4, 0x3C)            # has_upgrade_level
    a.lea(3, BUILDING_KEY_VTABLE_GOT)
    a.ldr(3, 3)
    a.adds_imm(3, 8)
    a.str_sp(3, 0)
    a.ldr(3, 4, 0x20)
    a.str_sp(3, 4)
    a.ldr(3, 4, 0x24)
    a.str_sp(3, 8)
    a.ldr(4, 7, 0x1C)             # listener list (std::list head at +0x1c)
    a.label("notify")
    a.movs(3, 0x1C)
    a.adds_reg(3, 3, 7)
    a.cmp(4, 3)
    a.bcc("eq", "next")
    a.ldr(0, 4, 8)
    a.mov_sp(1)
    a.ldr_sp(2, 12)
    a.ldr(3, 0)
    a.ldr(3, 3, 4)
    a.blx_reg(3)                  # listener->onBuildingUpgradePurchased(key, level)
    a.ldr(4, 4)
    a.b("notify")
    a.label("next")
    a.adds_imm(5, 1)
    a.b("loop")
    a.label("done")
    a.add_sp(16)
    a.pop(3, 4, 5, 6, 7, pc=True)
    return a.assemble()


def _titles() -> bytes:
    """Set the three section titles on the card in r0 (CCLabelProtocol::setString)."""
    a = Asm(TITLE_CAVE[0])
    a.push(4, lr=True)
    a.addr(4, 0)
    for index, (member, text) in enumerate(zip(TITLE_MEMBERS, TITLES)):
        a.movs(3, member >> 1)
        a.lsls(3, 3, 1)
        a.ldr_reg(0, 4, 3)
        a.cmp_imm(0, 0)
        a.bcc("eq", f"title{index}")
        a.ldr(3, 0)
        a.ldr(3, 3)
        a.lea(1, a.string(f"title{index}", text))
        a.blx_reg(3)
        a.label(f"title{index}")
    a.pop(4, pc=True)
    return a.assemble()


def _action_cave(class_string: int, max_chars: int, max_builds: int) -> bytes:
    a = Asm(ACTION_CAVE[0])
    # Hook entry for privacyPolicyButtonCallback(this=r0, sender=r1).
    a.lea(2, RR_CARD)
    a.ldr(2, 2)
    a.cmp(0, 2)
    a.bcc("ne", "original")
    a.push(4, lr=True)
    a.ldr(0, 1, 0x7C)             # CCNode::m_nTag of the tapped button
    a.bl("action")
    a.pop(4, pc=True)
    a.label("original")
    a.push(4, lr=True)
    a.addr(4, 0)
    a.b_w(PRIVACY_CONTINUE)

    a.label("action")
    a.push(4, 5, 6, lr=True)
    a.addr(4, 0)
    for tag, calls in (
        (1, (GRANT_CASH,)),
        (2, (GRANT_DIAMONDS,)),
        (3, (GRANT_XP,)),
        (5, (max_chars,)),
        (6, (max_builds,)),
        (4, (GRANT_CASH, GRANT_DIAMONDS, GRANT_XP, max_chars, max_builds)),
    ):
        a.cmp_imm(4, tag)
        a.bcc("ne", f"not{tag}")
        for call in calls:
            a.bl(call)
        a.b("java")
        a.label(f"not{tag}")
    a.label("java")
    a.sub_sp(16)                  # JniMethodInfo {env, class, method}; 16 keeps alignment
    a.mov_sp(0)
    a.lea(1, class_string)
    a.lea(2, a.string("method", b"nativeAction"))
    a.lea(3, a.string("sig", b"(I)V"))
    a.bl(GET_STATIC_METHOD)
    a.cmp_imm(0, 0)
    a.bcc("eq", "skip")
    a.ldr_sp(0, 0)
    a.ldr_sp(1, 4)
    a.ldr_sp(2, 8)
    a.addr(3, 4)
    a.ldr(5, 0)
    a.movs(6, 0x8D)               # CallStaticVoidMethod is JNIEnv slot 141
    a.lsls(6, 6, 2)
    a.ldr_reg(5, 5, 6)
    a.blx_reg(5)
    a.label("skip")
    a.add_sp(16)
    a.pop(4, 5, 6, pc=True)
    return a.assemble()


def _init_cave(start: int) -> bytes:
    a = Asm(start)
    # The three instructions the branch replaced.
    a.movs(3, 0xA4)
    a.mov(1, 9)
    a.str_reg(4, 1, 3)
    a.bl(CCB_SHARED)
    a.lea(1, a.string("card", CARD_FILE))
    a.movs(2, 0)
    a.movs(3, 1)
    a.bl(CCB_NODE_GRAPH)
    a.addr(4, 0)
    a.cmp_imm(4, 0)
    a.bcc("eq", "done")
    a.movs(3, CARD_DIALOG >> 1)
    a.lsls(3, 3, 1)
    a.str_reg(5, 4, 3)            # card->dialog = TabbedDialog (r5)
    a.lea(2, RR_CARD)
    a.str_(4, 2)
    a.addr(0, 4)
    a.bl(TITLE_CAVE[0])
    name = a.string("tab", TAB_NAME)
    a.movs(3, 0)
    a.str_sp(3, 0)
    a.lea(1, name)
    a.lea(2, SETTINGS_ICON)
    a.addr(3, 4)
    a.addr(0, 5)
    a.bl(ADD_TAB)
    a.addr(0, 5)
    a.lea(1, name)
    a.mov(2, 8)
    a.bl(SET_TAB_ENABLED)
    a.label("done")
    a.b_w(ONINIT_RETURN)
    return a.assemble()


def install(data: bytearray, class_string: int, init_cave_start: int) -> None:
    from hwu_native import _b_wide, _expect

    _expect(data, ONINIT_TAIL, bytes.fromhex("a4234946cc50"))
    _expect(data, PRIVACY_CALLBACK, bytes.fromhex("10b5041c"))

    _put(data, CHAR_CAVE, _max_characters(), "max characters")
    _put(data, BUILD_CAVE, _max_buildings(), "max buildings")
    _put(data, TITLE_CAVE, _titles(), "section titles")
    action = _action_cave(class_string, CHAR_CAVE[0], BUILD_CAVE[0])
    _put(data, ACTION_CAVE, action, "action cave")
    start = (init_cave_start + 1) & ~1
    _put(data, (start, INIT_CAVE_END), _init_cave(start), "settings tab cave")

    data[ONINIT_TAIL : ONINIT_TAIL + 6] = _b_wide(ONINIT_TAIL, start) + bytes.fromhex("c046")
    data[PRIVACY_CALLBACK : PRIVACY_CALLBACK + 4] = _b_wide(PRIVACY_CALLBACK, ACTION_CAVE[0])
