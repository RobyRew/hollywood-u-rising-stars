"""Binary patches for libHSS.so from Hollywood U 3.8.0.

The library is a 32-bit ARM ELF. File offsets match virtual addresses in the
executable segment, so the addresses below are both.
"""

from __future__ import annotations

import struct
from pathlib import Path

# onServerTimeFailure. The original function showed the Offline dialog.
SERVER_TIME_FAIL = 0x3A43E8
GET_CURRENT_MILLIS = 0x40BFA0
ON_SERVER_TIME_SUCCESS = 0x3A2D08

# AppStoreManager
ARE_PRODUCTS_AVAILABLE = 0x4014D0
HAS_PRODUCT = 0x401568
CAN_PURCHASE = 0x4015BC
PURCHASE = 0x4015C8

GET_SINGLETON = 0x3DD234
CREDIT_COINS = 0x3E69B4
CREDIT_HEARTS = 0x3E69F0
FIRE_PURCHASE_COMPLETED = 0x4028D4

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


def _purchase_cave() -> bytes:
    """Grant hwu_rings_* as hearts and hwu_coins_* as coins, then close the UI.

    Product ids in the 3.8.0 config look like hwu_rings_1490 and
    hwu_coins_5000. hwu_rings_280_real stops at the underscore, so the amount
    is 280. Anything else still completes the purchase so the dialog closes.
    """
    labels: dict[str, int] = {}
    pending: list[tuple[str, int, str]] = []
    out = bytearray()

    def here() -> int:
        return CAVE + len(out)

    def emit(data: bytes) -> None:
        out.extend(data)

    def mark(name: str) -> None:
        labels[name] = here()

    def emit_b(cond: str, name: str) -> None:
        pending.append((cond, here(), name))
        emit(b"\x00\x00")

    emit(_hw(0xB5F0))  # push {r4-r7, lr}
    emit(_hw(0xB081))  # sub sp, #4
    emit(_mov_low(4, 0))
    emit(_mov_low(5, 1))
    emit(_ldr_imm(6, 5, 0))
    emit(_ldrb(0, 6, 4))
    emit(_cmp_imm(0, ord("r")))
    emit_b("eq", "hearts")
    emit(_cmp_imm(0, ord("c")))
    emit_b("ne", "finish")
    emit(_movs_imm(7, 1))
    emit_b("al", "parse")
    mark("hearts")
    emit(_movs_imm(7, 2))
    mark("parse")
    emit(_add_imm(6, 10))
    emit(_movs_imm(0, 0))
    mark("loop")
    emit(_ldrb(1, 6, 0))
    emit(_cmp_imm(1, ord("0")))
    emit_b("lt", "parsed")
    emit(_cmp_imm(1, ord("9")))
    emit_b("gt", "parsed")
    emit(_sub_imm(1, ord("0")))
    emit(_movs_imm(2, 10))
    emit(_muls(0, 2))
    emit(_adds_reg(0, 0, 1))
    emit(_add_imm(6, 1))
    emit_b("al", "loop")
    mark("parsed")
    emit(_cmp_imm(0, 0))
    emit_b("eq", "finish")
    emit(_mov_low(6, 0))
    emit(_bl(here(), GET_SINGLETON))
    emit(_ldr_imm(3, 0, 0))
    emit(_ldr_imm(3, 3, 0x48))
    emit(_hw(0x4798))  # blx r3
    emit(_mov_low(1, 6))
    emit(_cmp_imm(7, 1))
    emit_b("ne", "hearts_credit")
    emit(_bl(here(), CREDIT_COINS))
    emit_b("al", "finish")
    mark("hearts_credit")
    emit(_bl(here(), CREDIT_HEARTS))
    mark("finish")
    emit(_mov_low(0, 4))
    emit(_mov_low(1, 5))
    emit(_bl(here(), FIRE_PURCHASE_COMPLETED))
    emit(_hw(0xB001))  # add sp, #4
    emit(_hw(0xBDF0))  # pop {r4-r7, pc}

    cond = {"eq": 0, "ne": 1, "lt": 11, "gt": 12, "al": None}
    for kind, src, name in pending:
        dst = labels[name]
        if kind == "al":
            encoded = _b_short(src, dst)
        else:
            encoded = _b_cond(src, cond[kind], dst)
        out[src - CAVE : src - CAVE + 2] = encoded
    if len(out) > 0x200:
        raise RuntimeError("purchase cave spilled into the next function")
    return bytes(out)


def _return_true() -> bytes:
    return _movs_imm(0, 1) + _hw(0x4770)  # movs r0, #1; bx lr


def patch_libhss(path: Path) -> None:
    data = bytearray(path.read_bytes())
    for addr, expected in EXPECTED.items():
        found = bytes(data[addr : addr + len(expected)])
        if found != expected:
            raise RuntimeError(
                f"{path.name} at {addr:#x} is {found.hex()}, expected {expected.hex()}. "
                "This patcher only matches the 3.8.0 libHSS.so."
            )
    trampoline = _server_time_trampoline()
    cave = _purchase_cave()
    data[SERVER_TIME_FAIL : SERVER_TIME_FAIL + len(trampoline)] = trampoline
    data[CAVE : CAVE + len(cave)] = cave
    data[ARE_PRODUCTS_AVAILABLE : ARE_PRODUCTS_AVAILABLE + 4] = _return_true()
    data[HAS_PRODUCT : HAS_PRODUCT + 4] = _return_true()
    data[CAN_PURCHASE : CAN_PURCHASE + 4] = _return_true()
    data[PURCHASE : PURCHASE + 4] = _b_wide(PURCHASE, CAVE)
    path.write_bytes(data)
