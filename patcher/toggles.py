"""Cheat switches. Off unless RR Mod Settings turns a bit on.

The letter, the dead network, and the account gate are not switches.
"""

from __future__ import annotations

import struct

from hwu_native import (
    GET_STATIC_METHOD,
    IS_TUTORIAL_ACTIVE,
    RUN_TUTORIAL_TRIGGERS,
    SET_LOCKED,
    START_TUTORIAL,
    _b_wide,
    _bl,
    _hw,
)

# Writable word inside an unused GOST table. Zero means every switch is off.
FLAG = 0x980BD0
READ_FLAGS = 0x3A4572
SYNC = 0x36A7A8
SYNC_END = 0x36A7F8
CLASS_STRING = 0x3A44FC
FORCE_LOCK = 0x3A44B6
CALL_STATIC_INT = 0x82

# bit, address, original 4 bytes, cheat return (None means jump to FORCE_LOCK).
# The first four live in the dead server-time tail. The rest live after the grant stubs.
GATES = (
    (0, START_TUTORIAL, bytes.fromhex("38b5041c"), 0),
    (0, RUN_TUTORIAL_TRIGGERS, bytes.fromhex("f0b5061c"), 0),
    (0, IS_TUTORIAL_ACTIVE, bytes.fromhex("10b58823"), 0),
    (1, 0x3ECC58, bytes.fromhex("70b5131c"), 1),
    (1, 0x3E7928, bytes.fromhex("f0b55746"), 1),
    (2, 0x3D6834, bytes.fromhex("10b5041c"), 1),
    (2, 0x3F3F34, bytes.fromhex("70b5ca6e"), 1),
    (2, 0x3F4FF8, bytes.fromhex("f0b54746"), 1),
    (2, 0x3F50B8, bytes.fromhex("38b5051c"), 1),
    (2, SET_LOCKED, bytes.fromhex("f8b58623"), None),
)


def _lsls(reg: int, shift: int) -> bytes:
    return _hw(0x0000 | (shift << 6) | (reg << 3) | reg)


def _pool_word(add_addr: int, target: int) -> bytes:
    return struct.pack("<I", (target - (add_addr + 4)) & 0xFFFFFFFF)


def _read_flags() -> bytes:
    # push {r3,lr}; ldr r0,[pc,#4]; add r0,pc; ldr r0,[r0]; pop {r3,pc}; .word
    blob = bytearray(bytes.fromhex("08b5014878440068"))
    blob += _hw(0xBD08)
    add_addr = READ_FLAGS + 4
    blob += _pool_word(add_addr, FLAG)
    if len(blob) != 14:
        raise RuntimeError(f"read_flags is {len(blob)} bytes")
    return bytes(blob)


def _pop_args() -> bytes:
    # pop.w {r0, r3, lr}. 16-bit pop cannot restore lr without returning.
    return bytes.fromhex("bde80940")


def _gate(stub: int, func: int, bit: int, original: bytes, cheat: int | None) -> bytes:
    shift = 31 - bit
    blob = bytearray()
    blob += _hw(0xB509)  # push {r0, r3, lr}
    blob += _bl(stub + len(blob), READ_FLAGS)
    blob += _lsls(0, shift)
    blob += _hw(0xD501)  # bpl original, fixed below
    if cheat is None:
        blob += _pop_args()
        blob += _b_wide(stub + len(blob), FORCE_LOCK)
    else:
        blob += _hw(0x2000 | cheat)  # movs r0, #cheat
        blob += _hw(0xBD0A)  # pop {r1, r3, pc}
    bpl_at = 8
    target = len(blob)
    delta = target - (bpl_at + 4)
    if delta % 2 or not (-256 <= delta <= 254):
        raise RuntimeError(f"gate bpl {delta}")
    blob[bpl_at : bpl_at + 2] = _hw(0xD500 | ((delta >> 1) & 0xFF))
    blob += _pop_args()
    blob += original
    blob += _b_wide(stub + len(blob), func + 4)
    return bytes(blob)


def _sync() -> bytes:
    method = b"flags\x00"
    sig = b"()I\x00"
    code = bytearray()
    code += _hw(0xB510)  # push {r4, lr}
    code += _hw(0xB083)  # sub sp, #12
    code += _hw(0x4668)  # mov r0, sp
    slots = []
    for _reg in (1, 2, 3):
        slots.append(len(code))
        code += b"\x00\x00\x00\x00"
    bl_at = len(code)
    code += _bl(SYNC + bl_at, GET_STATIC_METHOD)
    code += _hw(0x2800)  # cmp r0, #0
    beq_at = len(code)
    code += b"\x00\x00"
    code += bytes.fromhex("00980199029a0368")
    code += _hw(0x2000 | (4 << 8) | CALL_STATIC_INT)
    code += _hw(0x0000 | (2 << 6) | (4 << 3) | 4)  # lsls r4, r4, #2
    code += bytes.fromhex("1c59a047")  # ldr r4,[r3,r4]; blx r4
    flag_ldr = len(code)
    code += b"\x00\x00\x00\x00"
    code += _hw(0x6018)  # str r0, [r3]
    done = len(code)
    code += _hw(0xB003)  # add sp, #12
    code += _hw(0xBD10)  # pop {r4, pc}
    delta = done - (beq_at + 4)
    if delta % 2 or not (0 <= delta <= 254):
        raise RuntimeError(f"sync beq {delta}")
    code[beq_at : beq_at + 2] = _hw(0xD000 | (delta >> 1))
    if len(code) % 4:
        code += b"\x00" * (4 - (len(code) % 4))
    pool = SYNC + len(code)
    strings = method + sig
    string_at = pool + 16
    targets = [CLASS_STRING, string_at, string_at + len(method), FLAG]
    pool_bytes = bytearray()
    for index, slot in enumerate(slots):
        reg = index + 1
        ldr_addr = SYNC + slot
        word_at = pool + index * 4
        pc_base = (ldr_addr + 4) & ~3
        imm = word_at - pc_base
        if imm < 0 or imm > 0x3FC or imm & 3:
            raise RuntimeError(f"sync literal {imm:#x}")
        code[slot : slot + 2] = _hw(0x4800 | (reg << 8) | (imm >> 2))
        code[slot + 2 : slot + 4] = _hw(0x4478 | reg)
        pool_bytes += _pool_word(SYNC + slot + 2, targets[index])
    flag_word_at = pool + 12
    pc_base = (SYNC + flag_ldr + 4) & ~3
    imm = flag_word_at - pc_base
    if imm < 0 or imm > 0x3FC or imm & 3:
        raise RuntimeError(f"sync flag literal {imm:#x}")
    code[flag_ldr : flag_ldr + 2] = _hw(0x4800 | (3 << 8) | (imm >> 2))
    code[flag_ldr + 2 : flag_ldr + 4] = _hw(0x4478 | 3)
    pool_bytes += _pool_word(SYNC + flag_ldr + 2, FLAG)
    blob = bytes(code) + bytes(pool_bytes) + strings
    if SYNC + len(blob) > SYNC_END:
        raise RuntimeError(f"sync stub is {len(blob)} bytes, room is {SYNC_END - SYNC}")
    return blob


def install(data: bytearray) -> None:
    read = _read_flags()
    data[READ_FLAGS : READ_FLAGS + len(read)] = read
    cursor = READ_FLAGS + len(read)
    holes = [0x36A818, 0x36A870, 0x36A8C8]
    hole_i = 0
    hole_at = holes[0]
    placed = 0
    for bit, func, original, cheat in GATES:
        if placed < 4:
            at = cursor
            end = 0x3A45F8
        else:
            trial = _gate(hole_at, func, bit, original, cheat)
            if hole_at + len(trial) > holes[hole_i] + 56:
                hole_i += 1
                if hole_i >= len(holes):
                    raise RuntimeError("unlock stubs spilled")
                hole_at = holes[hole_i]
            at = hole_at
            end = holes[hole_i] + 56
        stub = _gate(at, func, bit, original, cheat)
        if at + len(stub) > end:
            raise RuntimeError(f"stub at {at:#x} spilled ({len(stub)} bytes)")
        data[at : at + len(stub)] = stub
        data[func : func + 4] = _b_wide(func, at)
        if placed < 4:
            cursor = at + len(stub)
        else:
            hole_at = at + len(stub)
        placed += 1
    sync = _sync()
    data[SYNC : SYNC + len(sync)] = sync
