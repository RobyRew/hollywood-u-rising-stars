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
# purchase(): LogicManager -> StoreLogic::creditPurchase(product) (the config
# reward), then firePurchaseCompleted. 34 bytes, stops before rewardPurchase.
# push/pop include r3 so the frame is 16 bytes and calls see an 8-byte aligned sp.
LOCAL_PURCHASE = bytes.fromhex(
    "38b504460d46dbf731fe03685b6e98472946f3f759fe2046294601f077f938bd"
)
# No Pixelberry account exists anymore; "has account" returns true.
HAS_ACCOUNT = 0x40CA38

# Currency tab shows "Network error" when this bit is clear, before the pack list.
CURRENCY_NETWORK_BPL = 0x3C219C
CURRENCY_NETWORK_B = 0x3C2660
# Clothing tab takes this branch into the same kind of error string.
CLOTHING_NETWORK_BNE = 0x45ADA0

# Store and content gates that return true (unlocked).
UNLOCK_TRUE = {
    0x3F50B8: bytes.fromhex("38b5051c"),  # StoreLogic::isCurrencyItemUnlocked
    0x3F4FF8: bytes.fromhex("f0b54746"),  # StoreLogic::isCurrencyBuildingUnlocked
    0x3F3F34: bytes.fromhex("70b5ca6e"),  # StoreLogic::isCurrencyClothingUnlocked
    0x3F3FD0: None,                       # store card "Unlocks with Quest ..." (the quest still runs)
    0x3D6834: bytes.fromhex("10b5041c"),  # ClothingLogic::isClothingUnlocked
    0x3CD95C: bytes.fromhex("10b50ff0"),  # CharacterLogic::isMakeoverUnlocked
    0x3D8E04: bytes.fromhex("f8b5061c"),  # EducationLogic::isUnlocked
    0x3DB544: bytes.fromhex("10b5041c"),  # ExpansionLogic::isUnlocked
}
CLOTHING_IS_LOCKED = 0x3D6750             # ClothingLogic::isLocked -> false
# Quest predicates (meetsPassiveCompletionRequirements 0x3ECC58,
# doesCharacterMeetRequirement 0x3E7928) are left alone: quests keep the game's rules.

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
# Requirement failures inside a real product (level, quest, clothing) do not
# block the credit. A missing product still returns 2 and is not granted.
PRODUCT_REQUIREMENT_FAILS = (0x3F4EC8, 0x3F4EEA, 0x3F4EFA)
# PlayerLogic::credit tells listeners, and the sound listener calls into Java
# audio. That JNI FindClass faults (SIGBUS) and kills the process after a buy.
CURRENCY_EARNED_SOUND = 0x41B074
# creditPurchase plays the same effect itself when the product has no extra reward.
CREDIT_PURCHASE_SOUND = 0x3F54FC
# Dead analytics. FindClass faults on this Android version and aborts the buy.
EMIT_TELEMETRY = 0x42D7F0
# Sale-date checks call Java and abort the process. Cards stay visible.
CURRENCY_ITEM_VISIBLE = 0x3F50D4
# LeanPlum track calls Java and aborts the process. Each overload returns at
# its first instruction; rr_tab uses the dead bodies for caves.
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
# SettingsCard::aboutButtonCallback (the "BACKUP SAVE" button) -> OFFLINE_CAVE,
# which calls OfflineMenu.showFromGame() through JNI.
ABOUT_BUTTON = 0x49E87C
OFFLINE_CAVE = 0x3A44C0
GET_STATIC_METHOD = 0x35FD98

# Config::loadConfigFile: beq over the signature check, and the parse it skips to.
CONFIG_SIG_BRANCH = 0x37EFE2
CONFIG_PARSE = 0x37F096

EXPECTED = {
    SERVER_TIME_FAIL: bytes.fromhex("f0b55646"),
    ARE_PRODUCTS_AVAILABLE: bytes.fromhex("00b53422"),
    HAS_PRODUCT: bytes.fromhex("f8b54646"),
    CAN_PURCHASE: bytes.fromhex("08b560f7"),
    PURCHASE: bytes.fromhex("f8b5071c"),
    CLOTHING_IS_LOCKED: bytes.fromhex("f8b5061c"),
    CURRENCY_NETWORK_BPL: bytes.fromhex("00d5"),
    CURRENCY_NETWORK_B: bytes.fromhex("9ee5"),
    CLOTHING_NETWORK_BNE: bytes.fromhex("68d1"),
    PURCHASE_ITEM_SKIP_SETUP: bytes.fromhex("2ad0"),
    PURCHASE_ITEM_REQUIRE_ACCOUNT: bytes.fromhex("01d1"),
    PURCHASE_CURRENCY_SKIP_SETUP: bytes.fromhex("2bd0"),
    PURCHASE_CURRENCY_REQUIRE_ACCOUNT: bytes.fromhex("11d0"),
    PREPURCHASE_ACCOUNT_GATE: bytes.fromhex("1cf029fd"),
    CAN_PURCHASE_CHARACTER_PARTY: bytes.fromhex("20690368"),
    CURRENCY_EARNED_SOUND: bytes.fromhex("38b5"),
    CREDIT_PURCHASE_SOUND: bytes.fromhex("25f000fd"),
    EMIT_TELEMETRY: bytes.fromhex("10b5"),
    CURRENCY_ITEM_VISIBLE: bytes.fromhex("f0b54546"),
    POST_PURCHASE_SCENE: bytes.fromhex("fff78dfd"),
    ABOUT_BUTTON: bytes.fromhex("10b5041c"),
    CONFIG_SIG_BRANCH: bytes.fromhex("58d0"),
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
    blob += _hw(0x9800)  # ldr r0, [sp]  (sp stays 8-byte aligned for the call)
    blob += _bl(addr + len(blob), ON_SERVER_TIME_SUCCESS)
    blob += _hw(0xBD01)  # pop {r0, pc}
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
            "84b0"  # sub sp, #16 (8 + 16 keeps sp 8-byte aligned for JNI)
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
            "04b0"  # add sp, #16
            "10bd"  # pop {r4, pc}
        )
    )
    done_off = body.find(bytes.fromhex("04b010bd"))
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
    for addr, expected in UNLOCK_TRUE.items():
        if expected is not None:
            _expect(data, addr, expected)

    # Offline wall: the dead server-time call uses the phone clock.
    trampoline = _server_time_trampoline()
    data[SERVER_TIME_FAIL : SERVER_TIME_FAIL + len(trampoline)] = trampoline

    # Store: products are always available and pay out locally.
    data[ARE_PRODUCTS_AVAILABLE : ARE_PRODUCTS_AVAILABLE + 4] = _return_imm(1)
    data[HAS_PRODUCT : HAS_PRODUCT + 4] = _return_imm(1)
    data[CAN_PURCHASE : CAN_PURCHASE + 4] = _return_imm(1)
    if len(LOCAL_PURCHASE) > 34:
        raise RuntimeError("local purchase stub does not fit")
    data[PURCHASE : PURCHASE + len(LOCAL_PURCHASE)] = LOCAL_PURCHASE
    data[HAS_ACCOUNT : HAS_ACCOUNT + 4] = _return_imm(1)
    # Fall through into the real currency list instead of the network error.
    data[CURRENCY_NETWORK_BPL : CURRENCY_NETWORK_BPL + 2] = _hw(0x46C0)
    data[CURRENCY_NETWORK_B : CURRENCY_NETWORK_B + 2] = _hw(0xE7FF)
    data[CLOTHING_NETWORK_BNE : CLOTHING_NETWORK_BNE + 2] = _hw(0x46C0)
    # Skip the create-account setup, then take the purchase branch anyway.
    data[PURCHASE_ITEM_SKIP_SETUP : PURCHASE_ITEM_SKIP_SETUP + 2] = bytes.fromhex("2ae0")
    data[PURCHASE_ITEM_REQUIRE_ACCOUNT : PURCHASE_ITEM_REQUIRE_ACCOUNT + 2] = bytes.fromhex("01e0")
    data[PURCHASE_CURRENCY_SKIP_SETUP : PURCHASE_CURRENCY_SKIP_SETUP + 2] = bytes.fromhex("2be0")
    data[PURCHASE_CURRENCY_REQUIRE_ACCOUNT : PURCHASE_CURRENCY_REQUIRE_ACCOUNT + 2] = bytes.fromhex("00bf")
    data[PREPURCHASE_ACCOUNT_GATE : PREPURCHASE_ACCOUNT_GATE + 2] = _b_short(PREPURCHASE_ACCOUNT_GATE, PREPURCHASE_BUY)
    # Club VIP friends: the party-building branch of canPurchaseCharacterType
    # returns true. Level-gated characters still use the real level check.
    party_ok = _movs_imm(5, 1) + _b_short(CAN_PURCHASE_CHARACTER_PARTY + 2, CAN_PURCHASE_CHARACTER_RETURN)
    data[CAN_PURCHASE_CHARACTER_PARTY : CAN_PURCHASE_CHARACTER_PARTY + len(party_ok)] = party_ok
    for addr in PRODUCT_REQUIREMENT_FAILS:
        data[addr : addr + 2] = _movs_imm(0, 0)
    # Java calls that abort the process after a buy are skipped.
    data[CURRENCY_EARNED_SOUND : CURRENCY_EARNED_SOUND + 2] = _hw(0x4770)
    data[CREDIT_PURCHASE_SOUND : CREDIT_PURCHASE_SOUND + 4] = bytes.fromhex("00bf00bf")
    data[EMIT_TELEMETRY : EMIT_TELEMETRY + 2] = _hw(0x4770)
    data[CURRENCY_ITEM_VISIBLE : CURRENCY_ITEM_VISIBLE + 4] = _return_imm(1)
    for addr in LEANPLUM_TRACK:
        data[addr : addr + 2] = _hw(0x4770)
    data[POST_PURCHASE_SCENE : POST_PURCHASE_SCENE + 4] = bytes.fromhex("00bf00bf")

    # Locked content: store items, clothing, makeovers, classes, expansions.
    # Art the APK never shipped is covered by rr_tab's CCSprite guard.
    for addr in UNLOCK_TRUE:
        data[addr : addr + 4] = _return_imm(1)
    data[CLOTHING_IS_LOCKED : CLOTHING_IS_LOCKED + 4] = _return_imm(0)

    # Config::loadConfigFile checks config.protobin.sig (RSA) whenever the path
    # contains "config.protobin" (strstr) and drops the config on a mismatch.
    # rr_card adds a style entry to config.protobin, so the branch that skips
    # the check is taken always.
    data[CONFIG_SIG_BRANCH : CONFIG_SIG_BRANCH + 2] = _b_short(CONFIG_SIG_BRANCH, CONFIG_PARSE)

    # BACKUP SAVE button and the RR MOD tab.
    menu = _offline_menu_cave()
    data[OFFLINE_CAVE : OFFLINE_CAVE + len(menu)] = menu
    menu_class = OFFLINE_CAVE + menu.index(b"com/pixelberrystudios/hwuandroid/OfflineMenu\x00")
    data[ABOUT_BUTTON : ABOUT_BUTTON + 4] = _b_wide(ABOUT_BUTTON, OFFLINE_CAVE)
    rr_tab.install(data, menu_class, OFFLINE_CAVE + len(menu))
    path.write_bytes(data)
