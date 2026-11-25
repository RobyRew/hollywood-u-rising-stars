"""Small Thumb (ARMv7, 16-bit + BL/B.W) assembler with labels and a literal pool.

Only the instructions the libHSS.so caves need. Every piece is placed at a
fixed address, so branches to absolute addresses inside the library resolve
when the piece is assembled.
"""

from __future__ import annotations

import struct

COND = {"eq": 0, "ne": 1, "hs": 2, "lo": 3, "mi": 4, "pl": 5, "hi": 8, "ls": 9, "ge": 10, "lt": 11, "gt": 12, "le": 13}


def _hw(value: int) -> bytes:
    return struct.pack("<H", value & 0xFFFF)


def _branch32(src: int, dst: int, link: bool) -> bytes:
    offset = dst - (src + 4)
    if offset & 1 or not (-0x1000000 <= offset <= 0xFFFFFF):
        raise ValueError(f"branch out of range {src:#x} -> {dst:#x}")
    sign = (offset >> 24) & 1
    i1 = (offset >> 23) & 1
    i2 = (offset >> 22) & 1
    imm10 = (offset >> 12) & 0x3FF
    imm11 = (offset >> 1) & 0x7FF
    j1 = (~(i1 ^ sign)) & 1
    j2 = (~(i2 ^ sign)) & 1
    hw1 = 0xF000 | (sign << 10) | imm10
    hw2 = ((0b11 if link else 0b10) << 14) | (j1 << 13) | (1 << 12) | (j2 << 11) | imm11
    return struct.pack("<HH", hw1, hw2)


def _reglist(regs: tuple[int, ...], extra_bit: int | None) -> int:
    bits = 0
    for reg in regs:
        if not 0 <= reg <= 7:
            raise ValueError(f"r{reg} is not a low register")
        bits |= 1 << reg
    if extra_bit is not None:
        bits |= 1 << 8
    return bits


class Asm:
    """Collects instructions, then resolves labels and appends a pool."""

    def __init__(self, base: int) -> None:
        if base & 1:
            raise ValueError("pieces start on a halfword boundary")
        self.base = base
        self.items: list[tuple] = []
        self.size = 0
        self.labels: dict[str, int] = {}
        self.pool: list[tuple[str, object]] = []  # (kind, value) kinds: "pcrel"
        self.strings: dict[str, bytes] = {}

    # ---- bookkeeping -------------------------------------------------
    def here(self) -> int:
        return self.base + self.size

    def label(self, name: str) -> None:
        if name in self.labels:
            raise ValueError(f"label {name} twice")
        self.labels[name] = self.here()

    def _emit(self, kind: str, size: int, *args) -> None:
        self.items.append((kind, self.here(), size, args))
        self.size += size

    def raw(self, value: int) -> None:
        self._emit("raw", 2, value)

    # ---- data movement -----------------------------------------------
    def movs(self, rd: int, imm: int) -> None:
        if not 0 <= imm <= 255:
            raise ValueError(imm)
        self.raw(0x2000 | (rd << 8) | imm)

    def mov(self, rd: int, rm: int) -> None:
        """mov rd, rm (high-register form, flags unchanged)."""
        self.raw(0x4600 | ((rd & 8) << 4) | (rm << 3) | (rd & 7))

    def adds_imm(self, rd: int, imm: int) -> None:
        self.raw(0x3000 | (rd << 8) | imm)

    def subs_imm(self, rd: int, imm: int) -> None:
        self.raw(0x3800 | (rd << 8) | imm)

    def subs3(self, rd: int, rn: int, imm: int) -> None:
        """subs rd, rn, #imm3 (subs rd, rn, #0 copies and sets flags)."""
        self.raw(0x1E00 | (imm << 6) | (rn << 3) | rd)

    def adds_reg(self, rd: int, rn: int, rm: int) -> None:
        self.raw(0x1800 | (rm << 6) | (rn << 3) | rd)

    def addr(self, rd: int, rs: int) -> None:
        """adds rd, rs, #0 (copy a low register)."""
        self.raw(0x1C00 | (rs << 3) | rd)

    def lsls(self, rd: int, rm: int, shift: int) -> None:
        self.raw((shift << 6) | (rm << 3) | rd)

    def orrs(self, rd: int, rm: int) -> None:
        self.raw(0x4300 | (rm << 3) | rd)

    def cmp_imm(self, rn: int, imm: int) -> None:
        self.raw(0x2800 | (rn << 8) | imm)

    def cmp(self, rn: int, rm: int) -> None:
        self.raw(0x4280 | (rm << 3) | rn)

    def ldr(self, rt: int, rn: int, off: int = 0) -> None:
        if off % 4 or not 0 <= off <= 124:
            raise ValueError(off)
        self.raw(0x6800 | ((off // 4) << 6) | (rn << 3) | rt)

    def str_(self, rt: int, rn: int, off: int = 0) -> None:
        if off % 4 or not 0 <= off <= 124:
            raise ValueError(off)
        self.raw(0x6000 | ((off // 4) << 6) | (rn << 3) | rt)

    def ldr_reg(self, rt: int, rn: int, rm: int) -> None:
        self.raw(0x5800 | (rm << 6) | (rn << 3) | rt)

    def str_reg(self, rt: int, rn: int, rm: int) -> None:
        self.raw(0x5000 | (rm << 6) | (rn << 3) | rt)

    def ldr_sp(self, rt: int, off: int) -> None:
        self.raw(0x9800 | (rt << 8) | (off // 4))

    def str_sp(self, rt: int, off: int) -> None:
        self.raw(0x9000 | (rt << 8) | (off // 4))

    def mov_sp(self, rd: int) -> None:
        """add rd, sp, #0"""
        self.raw(0xA800 | (rd << 8))

    def sub_sp(self, imm: int) -> None:
        self.raw(0xB080 | (imm // 4))

    def add_sp(self, imm: int) -> None:
        self.raw(0xB000 | (imm // 4))

    def push(self, *regs: int, lr: bool = False) -> None:
        self.raw(0xB400 | _reglist(regs, 1 if lr else None))

    def pop(self, *regs: int, pc: bool = False) -> None:
        self.raw(0xBC00 | _reglist(regs, 1 if pc else None))

    def blx_reg(self, rm: int) -> None:
        self.raw(0x4780 | (rm << 3))

    def nop(self) -> None:
        self.raw(0x46C0)

    # ---- branches ----------------------------------------------------
    def b(self, target: str) -> None:
        self._emit("b", 2, target)

    def bcc(self, cond: str, target: str) -> None:
        self._emit("bcc", 2, COND[cond], target)

    def bl(self, target: int | str) -> None:
        self._emit("bl", 4, target)

    def b_w(self, target: int | str) -> None:
        self._emit("bw", 4, target)

    # ---- addresses ---------------------------------------------------
    def lea(self, rd: int, target: int | str) -> None:
        """rd = absolute address of target (ldr from pool, then add pc)."""
        slot = len(self.pool)
        self.pool.append(("pcrel", (target, self.here() + 2)))
        self._emit("ldrlit", 2, rd, slot)
        self.raw(0x4478 | rd)  # add rd, pc

    def ldr_const(self, rd: int, value: int) -> None:
        """rd = 32-bit constant from the literal pool."""
        entry = ("abs", value & 0xFFFFFFFF)
        if entry in self.pool:
            slot = self.pool.index(entry)
        else:
            slot = len(self.pool)
            self.pool.append(entry)
        self._emit("ldrlit", 2, rd, slot)

    def string(self, name: str, text: bytes) -> str:
        key = f"str:{name}"
        self.strings[key] = text if text.endswith(b"\x00") else text + b"\x00"
        return key

    # ---- assembly ----------------------------------------------------
    def assemble(self) -> bytes:
        code_end = self.base + self.size
        pool_at = (code_end + 3) & ~3
        strings_at = pool_at + 4 * len(self.pool)
        cursor = strings_at
        for key, text in self.strings.items():
            self.labels[key] = cursor
            cursor += len(text)

        def resolve(target: int | str) -> int:
            return self.labels[target] if isinstance(target, str) else target

        out = bytearray()
        for kind, at, size, args in self.items:
            if kind == "raw":
                out += _hw(args[0])
            elif kind == "b":
                off = resolve(args[0]) - (at + 4)
                if off % 2 or not -2048 <= off <= 2046:
                    raise ValueError(f"b out of range at {at:#x}")
                out += _hw(0xE000 | ((off >> 1) & 0x7FF))
            elif kind == "bcc":
                off = resolve(args[1]) - (at + 4)
                if off % 2 or not -256 <= off <= 254:
                    raise ValueError(f"b{args[0]} out of range at {at:#x} ({off})")
                out += _hw(0xD000 | (args[0] << 8) | ((off >> 1) & 0xFF))
            elif kind == "bl":
                out += _branch32(at, resolve(args[0]), True)
            elif kind == "bw":
                out += _branch32(at, resolve(args[0]), False)
            elif kind == "ldrlit":
                rd, slot = args
                word = pool_at + 4 * slot
                imm = word - ((at + 4) & ~3)
                if imm < 0 or imm > 1020 or imm & 3:
                    raise ValueError(f"literal out of range at {at:#x}")
                out += _hw(0x4800 | (rd << 8) | (imm >> 2))
            else:
                raise AssertionError(kind)
        out += b"\x00" * (pool_at - code_end)
        for kind, value in self.pool:
            if kind == "abs":
                out += struct.pack("<I", value & 0xFFFFFFFF)
                continue
            target, add_at = value
            out += struct.pack("<I", (resolve(target) - (add_at + 4)) & 0xFFFFFFFF)
        for text in self.strings.values():
            out += text
        return bytes(out)
