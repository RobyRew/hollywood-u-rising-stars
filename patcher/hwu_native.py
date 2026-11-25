"""Binary patches for libHSS.so from Hollywood U 3.8.0.

The library is a 32-bit ARM ELF. File offsets match virtual addresses in the
executable segment, so the addresses below are both.
"""

from __future__ import annotations

import struct
from pathlib import Path

import rr_tab

# onServerTimeFailure. The original function showed the Offline dialog.
SERVER_TIME_FAIL = 0x3A43E8
GET_CURRENT_MILLIS = 0x40BFA0
ON_SERVER_TIME_SUCCESS = 0x3A2D08

# AppStoreManager
ARE_PRODUCTS_AVAILABLE = 0x4014D0
HAS_PRODUCT = 0x401568
CAN_PURCHASE = 0x4015BC
PURCHASE = 0x4015C8
# Gives the real config reward locally, then closes the buy dialog.
# Fits in the 34-byte purchase function and stops before rewardPurchase.
LOCAL_PURCHASE = bytes.fromhex(
    "30b504460d46dbf731fe03685b6e98472946f3f759fe2046294601f077f930bd"
)

GET_SINGLETON = 0x3DD234
CREDIT_COINS = 0x3E69B4
CREDIT_HEARTS = 0x3E69F0
CREDIT_XP = 0x3E40E0
CREDIT_STARS = 0x3E69D0
CREDIT_PENCILS = 0x3E6A10
CREDIT_TICKETS = 0x3E6A30
FIRE_PURCHASE_COMPLETED = 0x4028D4

# Currency tab shows "Network error" when this bit is clear, before the pack list.
CURRENCY_NETWORK_BPL = 0x3C219C
CURRENCY_NETWORK_B = 0x3C2660
# Clothing tab takes this branch into the same kind of error string.
CLOTHING_NETWORK_BNE = 0x45ADA0

# These bool checks gate the store cards, clothes, classes, plots, and recruiting.
RETURN_TRUE = {
    0x3F50B8: bytes.fromhex("38b5051c"),  # isCurrencyItemUnlocked
    0x3F4FF8: bytes.fromhex("f0b54746"),  # isCurrencyBuildingUnlocked
    0x3F3F34: bytes.fromhex("70b5ca6e"),  # isCurrencyClothingUnlocked
    0x3D6834: bytes.fromhex("10b5041c"),  # isClothingUnlocked
    0x3CD95C: bytes.fromhex("10b50ff0"),  # isMakeoverUnlocked
    0x3D8E04: bytes.fromhex("f8b5061c"),  # EducationLogic::isUnlocked
    0x3DB544: bytes.fromhex("10b5041c"),  # ExpansionLogic::isUnlocked
    0x3ECC58: bytes.fromhex("70b5131c"),  # QuestLogic::meetsPassiveCompletionRequirements
    0x3E7928: bytes.fromhex("f0b55746"),  # QuestLogic::doesCharacterMeetRequirement
}
RETURN_FALSE = {
    0x3D6750: bytes.fromhex("f8b5061c"),  # ClothingLogic::isLocked
}
SET_LOCKED = 0x4AD860
# Opening tutorial and the later tutorial triggers. isTutorialActive stays false
# so a save that was mid-tutorial does not keep the campus locked.
START_TUTORIAL = 0x400EA4
RUN_TUTORIAL_TRIGGERS = 0x400EE0
IS_TUTORIAL_ACTIVE = 0x3FB224
# Buying with no Pixelberry account used to call the dead create-account server
# and show "Could not make purchase because an account could not be created."
PURCHASE_ITEM_SKIP_SETUP = 0x3BF686
PURCHASE_ITEM_REQUIRE_ACCOUNT = 0x3BF6EC
PURCHASE_CURRENCY_SKIP_SETUP = 0x3C069C
PURCHASE_CURRENCY_REQUIRE_ACCOUNT = 0x3C0700
# Currency buys show the account dialog before purchaseCurrency when two
# save flags are clear. Skip those flags and go straight to the local buy.
PREPURCHASE_ACCOUNT_GATE = 0x3C07DE
PREPURCHASE_BUY = 0x3C083A
# Friends labeled "Unlocks with Club VIP" are character types whose config
# bit requires a placed PARTY building (type 10). That branch returns true.
CAN_PURCHASE_CHARACTER_PARTY = 0x3CD85C
CAN_PURCHASE_CHARACTER_RETURN = 0x3CD8AC
HAS_CREDITED_BUILDING = 0x3F4878
# PlayerLogic::credit tells listeners, and the sound listener calls into Java
# audio. That JNI FindClass faults (SIGBUS) and kills the process after a buy.
CURRENCY_EARNED_SOUND = 0x41B074
# creditPurchase plays the same effect itself when the product has no extra reward.
CREDIT_PURCHASE_SOUND = 0x3F54FC
# Dead analytics. FindClass faults on this Android version and aborts the buy.
EMIT_TELEMETRY = 0x42D7F0
# Sale-date checks call Java and abort the process. Cards stay visible.
CURRENCY_ITEM_VISIBLE = 0x3F50D4
# LeanPlum track calls Java and aborts the process. The purchase is already credited.
LEANPLUM_TRACK = (
    0x369738,
    0x3697A0,
    0x369820,
    0x369890,
    0x369928,
    0x3699A4,
)
# The reward cinematic draws a label through Java and aborts. The items are
# already credited. Skip the scene and let the store close.
POST_PURCHASE_SCENE = 0x3C1B5E
# The settings gear is skipped unless a progress bit is set. That bit stays
# clear when the tutorial never runs, so the gear has to be added anyway,
# and the rest of the HUD icons still have to be added after it.
SETTINGS_ICON_SKIP = 0x38CD00
SETTINGS_ICON_RETURN = 0x38CE20
ABOUT_BUTTON = 0x49E87C
# The + buttons on cash and diamonds. Each tap grants currency directly.
ADD_COINS = 0x475C6C
ADD_HEARTS = 0x475D4C
# 10000000 coins / diamonds. Null-checks the player, then credits. Disassembler-checked.
ADD_COINS_STUB = bytes.fromhex("10b567f7e1fa002807d003689b6c9847002802d0014970f797fe10bd80969800")
ADD_HEARTS_STUB = bytes.fromhex("10b567f771fa002807d003689b6c9847002802d0014970f745fe10bd80969800")
# Public JNI voids the settings screen calls on the game thread.
# DKSponsorPayOnChangeStatusCloseFinished / CloseAborted / Error.
GRANT_CASH = 0x36A7F8
GRANT_DIAMONDS = 0x36A850
GRANT_XP = 0x36A8A8
GRANT_CASH_STUB = bytes.fromhex("10b572f01bfd002807d003689b6c9847002802d001497cf0d1f810bd80969800")
GRANT_DIAMONDS_STUB = bytes.fromhex("10b572f0effc002807d003689b6c9847002802d001497cf0c3f810bd80969800")
GRANT_XP_STUB = bytes.fromhex("10b572f0c3fc002807d003689b6c9847002802d0014979f00ffc10bd404b4c00")
PAYOUT_TAIL = bytes.fromhex(
    "38f078fe03689b6c98470646064942f031fa3046054942f04bfa"
    "204629465ef0b9f901b0f0bd00bf8096980080969800"
)
OFFLINE_CAVE = 0x3A44C0
GET_STATIC_METHOD = 0x35FD98
# Every finished store purchase lands here. The tail also pays 10000000 cash
# and 10000000 diamonds, so a bundle with no plain product id still pays.
PURCHASE_FINISH = 0x3A44AA
PAYOUT_EPILOGUE = 0x3A4540

# Config::loadConfigFile: beq over the signature check, and the parse it skips to.
CONFIG_SIG_BRANCH = 0x37EFE2
CONFIG_PARSE = 0x37F096

CAVE = SERVER_TIME_FAIL + 18  # immediately after the 18-byte time trampoline

EXPECTED = {
    SERVER_TIME_FAIL: bytes.fromhex("f0b55646"),
    ARE_PRODUCTS_AVAILABLE: bytes.fromhex("00b53422"),
    HAS_PRODUCT: bytes.fromhex("f8b54646"),
    CAN_PURCHASE: bytes.fromhex("08b560f7"),
    PURCHASE: bytes.fromhex("f8b5071c"),
}


def _bl(src: int, dst: int) -> bytes:
    offset = dst - (src + 4)
    if offset & 1 or not (-0x1000000 <= offset <= 0xFFFFFF):
        raise ValueError(f"BL out of range {src:#x} -> {dst:#x}")
    sign = (offset >> 24) & 1
    i1 = (offset >> 23) & 1
    i2 = (offset >> 22) & 1
    imm10 = (offset >> 12) & 0x3FF
    imm11 = (offset >> 1) & 0x7FF
    j1 = (~(i1 ^ sign)) & 1
    j2 = (~(i2 ^ sign)) & 1
    hw1 = 0xF000 | (sign << 10) | imm10
    hw2 = (0b11 << 14) | (j1 << 13) | (1 << 12) | (j2 << 11) | imm11
    return struct.pack("<HH", hw1, hw2)


def _b_wide(src: int, dst: int) -> bytes:
    offset = dst - (src + 4)
    if offset & 1 or not (-0x1000000 <= offset <= 0xFFFFFF):
        raise ValueError(f"B out of range {src:#x} -> {dst:#x}")
    sign = (offset >> 24) & 1
    i1 = (offset >> 23) & 1
    i2 = (offset >> 22) & 1
    imm10 = (offset >> 12) & 0x3FF
    imm11 = (offset >> 1) & 0x7FF
    j1 = (~(i1 ^ sign)) & 1
    j2 = (~(i2 ^ sign)) & 1
    hw1 = 0xF000 | (sign << 10) | imm10
    hw2 = (0b10 << 14) | (j1 << 13) | (1 << 12) | (j2 << 11) | imm11
    return struct.pack("<HH", hw1, hw2)


def _hw(value: int) -> bytes:
    return struct.pack("<H", value)


def _mov_low(dst: int, src: int) -> bytes:
    return _hw(0x4600 | (src << 3) | dst)


def _movs_imm(reg: int, imm: int) -> bytes:
    return _hw(0x2000 | (reg << 8) | imm)


def _cmp_imm(reg: int, imm: int) -> bytes:
    return _hw(0x2800 | (reg << 8) | imm)


def _add_imm(reg: int, imm: int) -> bytes:
    return _hw(0x3000 | (reg << 8) | imm)


def _sub_imm(reg: int, imm: int) -> bytes:
    return _hw(0x3800 | (reg << 8) | imm)


def _ldrb(dst: int, base: int, imm: int) -> bytes:
    return _hw(0x7800 | (imm << 6) | (base << 3) | dst)


def _ldr_imm(dst: int, base: int, byte_off: int) -> bytes:
    if byte_off % 4:
        raise ValueError(byte_off)
    return _hw(0x6800 | ((byte_off // 4) << 6) | (base << 3) | dst)


def _adds_reg(dst: int, left: int, right: int) -> bytes:
    return _hw(0x1800 | (right << 6) | (left << 3) | dst)


def _muls(dst: int, multiplier: int) -> bytes:
    return _hw(0x4340 | (multiplier << 3) | dst)


def _b_cond(src: int, cond: int, dst: int) -> bytes:
    offset = dst - (src + 4)
    if offset % 2 or not (-256 <= offset <= 254):
        raise ValueError(f"short branch {src:#x} -> {dst:#x} ({offset})")
    imm8 = (offset >> 1) & 0xFF
    return _hw(0xD000 | (cond << 8) | imm8)


def _b_short(src: int, dst: int) -> bytes:
    offset = dst - (src + 4)
    if offset % 2 or not (-2048 <= offset <= 2046):
        raise ValueError(f"b {src:#x} -> {dst:#x}")
    imm11 = (offset >> 1) & 0x7FF
    return _hw(0xE000 | imm11)


def _server_time_trampoline() -> bytes:
    addr = SERVER_TIME_FAIL
    blob = _hw(0xB501)  # push {r0, lr}
    blob += _bl(addr + len(blob), GET_CURRENT_MILLIS)
    blob += _mov_low(2, 0)
    blob += _mov_low(3, 1)
    blob += _hw(0xBC01)  # pop {r0}
    blob += _bl(addr + len(blob), ON_SERVER_TIME_SUCCESS)
    blob += _hw(0xBD00)  # pop {pc}
    if len(blob) != 18:
        raise RuntimeError(f"trampoline is {len(blob)} bytes, expected 18")
    return blob


def _offline_menu_cave() -> bytes:
    """Call OfflineMenu.showFromGame from the settings card's About button."""
    cls = b"com/pixelberrystudios/hwuandroid/OfflineMenu\x00"
    method = b"showFromGame\x00"
    sig = b"()V\x00"
    body = bytearray(
        bytes.fromhex(
            "10b5"  # push {r4, lr}
            "83b0"  # sub sp, #12
            "6846"  # mov r0, sp
            "0000"  # ldr r1, [pc, #?]
            "7944"  # add r1, pc
            "0000"  # ldr r2, [pc, #?]
            "7a44"  # add r2, pc
            "0000"  # ldr r3, [pc, #?]
            "7b44"  # add r3, pc
            "00000000"  # bl getStaticMethodInfo
            "0028"  # cmp r0, #0
            "00d0"  # beq done
            "0098"  # ldr r0, [sp, #0]
            "0199"  # ldr r1, [sp, #4]
            "029a"  # ldr r2, [sp, #8]
            "0368"  # ldr r3, [r0]
            "8e24"  # movs r4, #0x8e
            "a400"  # lsls r4, r4, #2
            "1c59"  # ldr r4, [r3, r4]
            "a047"  # blx r4
            "03b0"  # add sp, #12
            "10bd"  # pop {r4, pc}
        )
    )
    done_off = body.find(bytes.fromhex("03b010bd"))
    beq_off = body.find(bytes.fromhex("002800d0")) + 2
    disp = done_off - (beq_off + 4)
    if disp < 0 or disp & 1 or disp > 254:
        raise RuntimeError(f"offline cave beq out of range {disp}")
    body[beq_off : beq_off + 2] = _hw(0xD000 | (disp >> 1))
    bl_off = body.find(bytes.fromhex("00000000"))
    body[bl_off : bl_off + 4] = _bl(OFFLINE_CAVE + bl_off, GET_STATIC_METHOD)
    blob = body
    if len(blob) & 3:
        blob += b"\x00" * (4 - (len(blob) & 3))
    pool = OFFLINE_CAVE + len(blob)
    strings = cls + method + sig
    string_at = pool + 12
    addrs = [string_at, string_at + len(cls), string_at + len(cls) + len(method)]
    ldr_addrs = []
    cursor = 0
    for rt in (1, 2, 3):
        marker = _hw(0x0000) + _hw(0x4478 | rt)
        at = blob.find(marker, cursor)
        if at < 0:
            raise RuntimeError("offline cave ldr slot missing")
        ldr_addrs.append(OFFLINE_CAVE + at)
        cursor = at + 4
    pool_words = bytearray()
    for index, (ldr_addr, str_addr) in enumerate(zip(ldr_addrs, addrs)):
        rt = index + 1
        slot = pool + len(pool_words)
        pc_base = (ldr_addr + 4) & ~3
        imm = slot - pc_base
        if imm < 0 or imm > 0x3FC or imm & 3:
            raise RuntimeError(f"offline cave literal {imm:#x} from {ldr_addr:#x}")
        blob[ldr_addr - OFFLINE_CAVE : ldr_addr - OFFLINE_CAVE + 2] = _hw(0x4800 | (rt << 8) | (imm >> 2))
        add_addr = ldr_addr + 2
        pool_words += struct.pack("<I", (str_addr - (add_addr + 4)) & 0xFFFFFFFF)
    end = OFFLINE_CAVE + len(blob) + len(pool_words) + len(strings)
    if end >= 0x3A45F8:
        raise RuntimeError("offline cave spilled into the next function")
    return blob + pool_words + strings


def _return_imm(value: int) -> bytes:
    return _movs_imm(0, value) + _hw(0x4770)  # movs r0, #imm; bx lr


def _expect(data: bytearray, addr: int, expected: bytes) -> None:
    found = bytes(data[addr : addr + len(expected)])
    if found != expected:
        raise RuntimeError(
            f"libHSS.so at {addr:#x} is {found.hex()}, expected {expected.hex()}. "
            "This patcher only matches the 3.8.0 library."
        )


def patch_libhss(path: Path) -> None:
    data = bytearray(path.read_bytes())
    for addr, expected in EXPECTED.items():
        _expect(data, addr, expected)
    for addr, expected in {**RETURN_TRUE, **RETURN_FALSE}.items():
        _expect(data, addr, expected)
    _expect(data, CURRENCY_NETWORK_BPL, bytes.fromhex("00d5"))
    _expect(data, CURRENCY_NETWORK_B, bytes.fromhex("9ee5"))
    _expect(data, CLOTHING_NETWORK_BNE, bytes.fromhex("68d1"))
    _expect(data, SET_LOCKED, bytes.fromhex("f8b5"))
    _expect(data, START_TUTORIAL, bytes.fromhex("38b5"))
    _expect(data, RUN_TUTORIAL_TRIGGERS, bytes.fromhex("f0b5"))
    _expect(data, IS_TUTORIAL_ACTIVE, bytes.fromhex("10b5"))
    _expect(data, PURCHASE_ITEM_SKIP_SETUP, bytes.fromhex("2ad0"))
    _expect(data, PURCHASE_ITEM_REQUIRE_ACCOUNT, bytes.fromhex("01d1"))
    _expect(data, PURCHASE_CURRENCY_SKIP_SETUP, bytes.fromhex("2bd0"))
    _expect(data, PURCHASE_CURRENCY_REQUIRE_ACCOUNT, bytes.fromhex("11d0"))
    _expect(data, ABOUT_BUTTON, bytes.fromhex("10b5041c"))
    _expect(data, ADD_COINS, bytes.fromhex("38b5041c"))
    _expect(data, ADD_HEARTS, bytes.fromhex("38b5041c"))
    _expect(data, GRANT_CASH, bytes.fromhex("30b51820"))
    _expect(data, GRANT_DIAMONDS, bytes.fromhex("30b51820"))
    _expect(data, GRANT_XP, bytes.fromhex("30b51820"))

    trampoline = _server_time_trampoline()
    data[SERVER_TIME_FAIL : SERVER_TIME_FAIL + len(trampoline)] = trampoline
    # CAVE..0x3A44B6 held a product-id parser that nothing branched to after
    # purchase() moved to the game's own creditPurchase. rr_tab reuses it.
    locked_cave = 0x3A44B6
    stub = _movs_imm(1, 0) + bytes(data[SET_LOCKED : SET_LOCKED + 4]) + _b_wide(locked_cave + 6, SET_LOCKED + 4)
    if locked_cave + len(stub) >= 0x3A45F8:
        raise RuntimeError("lock stub spilled into the next function")
    data[locked_cave : locked_cave + len(stub)] = stub
    if locked_cave != 0x3A44B6:
        raise RuntimeError(f"lock stub moved to {locked_cave:#x}")

    data[ARE_PRODUCTS_AVAILABLE : ARE_PRODUCTS_AVAILABLE + 4] = _return_imm(1)
    data[HAS_PRODUCT : HAS_PRODUCT + 4] = _return_imm(1)
    data[CAN_PURCHASE : CAN_PURCHASE + 4] = _return_imm(1)
    if len(LOCAL_PURCHASE) > 34:
        raise RuntimeError("local purchase stub does not fit")
    data[PURCHASE : PURCHASE + len(LOCAL_PURCHASE)] = LOCAL_PURCHASE
    # Store cards for buildings and clothes, including Club VIP.
    data[0x3F4FF8 : 0x3F4FF8 + 4] = _return_imm(1)
    data[0x3F3F34 : 0x3F3F34 + 4] = _return_imm(1)
    # Fall through into the real currency list instead of the network error.
    data[CURRENCY_NETWORK_BPL : CURRENCY_NETWORK_BPL + 2] = _hw(0x46C0)
    data[CURRENCY_NETWORK_B : CURRENCY_NETWORK_B + 2] = _hw(0xE7FF)
    data[CLOTHING_NETWORK_BNE : CLOTHING_NETWORK_BNE + 2] = _hw(0x46C0)
    # Skip the create-account setup, then take the purchase branch anyway.
    data[PURCHASE_ITEM_SKIP_SETUP : PURCHASE_ITEM_SKIP_SETUP + 2] = bytes.fromhex("2ae0")
    data[PURCHASE_ITEM_REQUIRE_ACCOUNT : PURCHASE_ITEM_REQUIRE_ACCOUNT + 2] = bytes.fromhex("01e0")
    data[PURCHASE_CURRENCY_SKIP_SETUP : PURCHASE_CURRENCY_SKIP_SETUP + 2] = bytes.fromhex("2be0")
    data[PURCHASE_CURRENCY_REQUIRE_ACCOUNT : PURCHASE_CURRENCY_REQUIRE_ACCOUNT + 2] = bytes.fromhex("00bf")
    menu = _offline_menu_cave()
    data[OFFLINE_CAVE : OFFLINE_CAVE + len(menu)] = menu
    menu_class = OFFLINE_CAVE + menu.index(b"com/pixelberrystudios/hwuandroid/OfflineMenu\x00")
    data[ABOUT_BUTTON : ABOUT_BUTTON + 4] = _b_wide(ABOUT_BUTTON, OFFLINE_CAVE)
    data[GRANT_CASH : GRANT_CASH + len(GRANT_CASH_STUB)] = GRANT_CASH_STUB
    data[GRANT_DIAMONDS : GRANT_DIAMONDS + len(GRANT_DIAMONDS_STUB)] = GRANT_DIAMONDS_STUB
    data[GRANT_XP : GRANT_XP + len(GRANT_XP_STUB)] = GRANT_XP_STUB
    # No Pixelberry account exists anymore. Pretending one does skips the
    # "could not create an account" dialog and lets the buy continue.
    data[0x40CA38 : 0x40CA38 + 4] = _return_imm(1)
    _expect(data, PREPURCHASE_ACCOUNT_GATE, bytes.fromhex("1cf029fd"))
    gate = _b_short(PREPURCHASE_ACCOUNT_GATE, PREPURCHASE_BUY)
    data[PREPURCHASE_ACCOUNT_GATE : PREPURCHASE_ACCOUNT_GATE + 2] = gate
    # Club VIP friends: the party-building branch of canPurchaseCharacterType
    # returns true. Level-gated characters still use the real level check.
    # The building itself stays a real purchase so party benefits have a building.
    _expect(data, CAN_PURCHASE_CHARACTER_PARTY, bytes.fromhex("20690368"))
    party_ok = _movs_imm(5, 1) + _b_short(CAN_PURCHASE_CHARACTER_PARTY + 2, CAN_PURCHASE_CHARACTER_RETURN)
    data[CAN_PURCHASE_CHARACTER_PARTY : CAN_PURCHASE_CHARACTER_PARTY + len(party_ok)] = party_ok
    # A previous build pretended PARTY was already owned. That hid the building
    # and did not put one in the save. Ownership is the real check again.
    data[HAS_CREDITED_BUILDING : HAS_CREDITED_BUILDING + 4] = bytes.fromhex("f8b5006a")
    # The buy already added the currency. Skip the sound that crashes the process.
    _expect(data, CURRENCY_EARNED_SOUND, bytes.fromhex("38b5"))
    data[CURRENCY_EARNED_SOUND : CURRENCY_EARNED_SOUND + 2] = _hw(0x4770)
    _expect(data, CREDIT_PURCHASE_SOUND, bytes.fromhex("25f000fd"))
    data[CREDIT_PURCHASE_SOUND : CREDIT_PURCHASE_SOUND + 4] = bytes.fromhex("00bf00bf")
    _expect(data, EMIT_TELEMETRY, bytes.fromhex("10b5"))
    data[EMIT_TELEMETRY : EMIT_TELEMETRY + 2] = _hw(0x4770)
    _expect(data, CURRENCY_ITEM_VISIBLE, bytes.fromhex("f0b54546"))
    data[CURRENCY_ITEM_VISIBLE : CURRENCY_ITEM_VISIBLE + 4] = _return_imm(1)
    for addr in LEANPLUM_TRACK:
        data[addr : addr + 2] = _hw(0x4770)
    _expect(data, POST_PURCHASE_SCENE, bytes.fromhex("fff78dfd"))
    data[POST_PURCHASE_SCENE : POST_PURCHASE_SCENE + 4] = bytes.fromhex("00bf00bf")
    # "Unlocks with Quest ..." is only the store card. The quest itself still runs.
    data[0x3F3FD0 : 0x3F3FD0 + 4] = _return_imm(1)
    # Requirement failures inside a real product (level, quest, clothing) should
    # not block the credit. A missing product still returns 2 and is not granted.
    data[0x3F4EC8 : 0x3F4EC8 + 2] = _movs_imm(0, 0)
    data[0x3F4EEA : 0x3F4EEA + 2] = _movs_imm(0, 0)
    data[0x3F4EFA : 0x3F4EFA + 2] = _movs_imm(0, 0)
    # Config::loadConfigFile checks config.protobin.sig (RSA) whenever the path
    # contains "config.protobin" (strstr) and drops the config on a mismatch.
    # rr_card adds a style entry to config.protobin, so the branch that skips
    # the check is taken always.
    _expect(data, CONFIG_SIG_BRANCH, bytes.fromhex("58d0"))
    data[CONFIG_SIG_BRANCH : CONFIG_SIG_BRANCH + 2] = _b_short(CONFIG_SIG_BRANCH, CONFIG_PARSE)
    # RR MOD tab in the game's Settings dialog. See rr_tab.py.
    rr_tab.install(data, menu_class, OFFLINE_CAVE + len(menu))
    path.write_bytes(data)
