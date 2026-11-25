"""Build rr_mod_card.ccb and its Config.protobin style entry.

The game's .ccb files are darthkitty.Proto.CcbNode protobufs. The RR card is
made from android_settings_card.ccb: the same SettingsCard root, the same
three linen panels and the same three Lobster section titles, with eleven
game buttons (4 + 4 + 3) in place of music, effects, privacy, about and
sign in. Every button calls privacyPolicyButtonCallback and carries a tag that
rr_tab.py maps to an action.
"""

from __future__ import annotations

import struct

# CcbNode field numbers (darthkitty::Proto::CcbNode::k*FieldNumber in libHSS.so).
NODE_CLASS = 1
MEMBER_NAME = 7
MEMBER_TYPE = 8
POSITION = 9
SCALE_X = 11
SCALE_Y = 12
TAG = 17
LABEL_STRING = 62
SPRITE_NORMAL = 63
SPRITE_SELECTED = 64
SPRITE_DISABLED = 65
SELECTOR = 67
CHILDREN = 69

CALLBACK = b"privacyPolicyButtonCallback"
GREEN = b"button_generic06.png"
BLUE = b"button_generic06_blue.png"
RED = b"button_generic06_red.png"

# (tag, label, sprite). Rows top to bottom, matching the three title labels.
# Labels use "\n" for two lines (CCLabelBMFont splits on it).
ROWS = (
    (
        (1, b"+10M\nCASH", GREEN),
        (2, b"+100M\nCASH", GREEN),
        (3, b"+10M\nDIAMONDS", GREEN),
        (4, b"+100M\nDIAMONDS", GREEN),
    ),
    (
        (5, b"+1\nLEVEL", BLUE),
        (6, b"+5M\nXP", BLUE),
        (7, b"MAX\nFRIENDS", BLUE),
        (8, b"MAX\nBUILDINGS", BLUE),
    ),
    ((9, b"EVERYTHING", RED), (10, b"EXPORT", RED), (11, b"IMPORT", RED)),
)
ROW_Y = (54.0, -29.0, -112.0)
# The linen panels span x -140..195 (centre 27.5).
COLUMNS = {
    3: ((-80.5, 27.5, 135.5), (0.68, 0.68), 0.78),
    4: ((-97.0, -14.0, 69.0, 152.0), (0.55, 0.72), 0.6),
}

TITLE_MEMBERS = (b"soundTitleLabel", b"generalTitleLabel", b"accountTitleLabel")
CARD_FILE = b"rr_mod_card.ccb"
CONFIG_CCB_STYLES = 23  # Config field holding per-ccb label styles


# ---- minimal protobuf codec ------------------------------------------------
def _varint(data: bytes, i: int) -> tuple[int, int]:
    value = shift = 0
    while True:
        byte = data[i]
        i += 1
        value |= (byte & 0x7F) << shift
        shift += 7
        if byte < 0x80:
            return value, i


def _enc_varint(value: int) -> bytes:
    out = bytearray()
    while True:
        byte = value & 0x7F
        value >>= 7
        if value:
            out.append(byte | 0x80)
        else:
            out.append(byte)
            return bytes(out)


def parse(data: bytes) -> list[list]:
    fields: list[list] = []
    i = 0
    while i < len(data):
        key, i = _varint(data, i)
        number, wire = key >> 3, key & 7
        if wire == 0:
            value, i = _varint(data, i)
        elif wire == 2:
            size, i = _varint(data, i)
            value = data[i : i + size]
            i += size
        elif wire == 5:
            value = data[i : i + 4]
            i += 4
        elif wire == 1:
            value = data[i : i + 8]
            i += 8
        else:
            raise ValueError(f"wire type {wire}")
        fields.append([number, wire, value])
    return fields


def encode(fields: list[list]) -> bytes:
    out = bytearray()
    for number, wire, value in fields:
        out += _enc_varint((number << 3) | wire)
        if wire == 0:
            out += _enc_varint(value)
        elif wire == 2:
            out += _enc_varint(len(value)) + value
        else:
            out += value
    return bytes(out)


def _get(fields: list[list], number: int) -> bytes | int | None:
    for field in fields:
        if field[0] == number:
            return field[2]
    return None


def _set(fields: list[list], number: int, wire: int, value) -> None:
    for field in fields:
        if field[0] == number:
            field[1], field[2] = wire, value
            return
    fields.append([number, wire, value])


def _drop(fields: list[list], *numbers: int) -> None:
    fields[:] = [field for field in fields if field[0] not in numbers]


def _f32(value: float) -> bytes:
    return struct.pack("<f", value)


def _point(x: float, y: float) -> bytes:
    return encode([[1, 5, _f32(x)], [2, 5, _f32(y)]])


def _children(node: list[list]) -> list[list[list]]:
    holder = _get(node, CHILDREN)
    return [parse(child[2]) for child in parse(holder or b"") if child[0] == 1]


def _set_children(node: list[list], kids: list[list[list]]) -> None:
    _set(node, CHILDREN, 2, encode([[1, 2, encode(kid)] for kid in kids]))


# ---- card ------------------------------------------------------------------
def build_card(template: bytes) -> bytes:
    """Return rr_mod_card.ccb built from android_settings_card.ccb."""
    top = parse(template)
    root_index = next(i for i, field in enumerate(top) if field[0] == 2)
    root = parse(top[root_index][2])
    kids = _children(root)

    panels = [kid for kid in kids if _get(kid, MEMBER_NAME) in (b"insertTop", b"insertBottom")]
    titles = [kid for kid in kids if _get(kid, MEMBER_NAME) in TITLE_MEMBERS]
    menu = next(kid for kid in kids if _get(kid, NODE_CLASS) == b"CCMenu")
    label_holder = next(kid for kid in kids if _get(kid, MEMBER_NAME) == b"buttonLabels")
    if len(panels) != 3 or len(titles) != 3:
        raise RuntimeError("android_settings_card.ccb layout changed")

    button_template = next(b for b in _children(menu) if _get(b, MEMBER_NAME) == b"privacyPolicyButton")
    label_template = next(l for l in _children(label_holder) if _get(l, MEMBER_NAME) == b"privacyPolicyLabel")

    buttons, labels = [], []
    for row, y in zip(ROWS, ROW_Y):
        xs, (scale_x, scale_y), label_scale = COLUMNS[len(row)]
        for (tag, text, sprite), x in zip(row, xs):
            button = [list(field) for field in button_template]
            _drop(button, MEMBER_NAME, MEMBER_TYPE)
            _set(button, POSITION, 2, _point(x, y))
            _set(button, SCALE_X, 5, _f32(scale_x))
            _set(button, SCALE_Y, 5, _f32(scale_y))
            _set(button, TAG, 0, tag)
            for number in (SPRITE_NORMAL, SPRITE_SELECTED, SPRITE_DISABLED):
                _set(button, number, 2, sprite)
            _set(button, SELECTOR, 2, CALLBACK)
            buttons.append(button)

            label = [list(field) for field in label_template]
            _drop(label, MEMBER_NAME, MEMBER_TYPE)
            _set(label, POSITION, 2, _point(x, y + 1.0))
            _set(label, SCALE_X, 5, _f32(label_scale))
            _set(label, SCALE_Y, 5, _f32(label_scale))
            _set(label, LABEL_STRING, 2, text)
            labels.append(label)

    _set_children(menu, buttons)
    _set_children(label_holder, labels)
    _set_children(root, panels + [menu] + titles + [label_holder])
    top[root_index][2] = encode(root)
    return encode(top)


# ---- Config.protobin ---------------------------------------------------------
def add_config_style(config: bytes) -> bytes:
    """Give rr_mod_card.ccb the Lobster section-title style of the Settings card."""
    top = parse(config)
    index = next(i for i, field in enumerate(top) if field[0] == CONFIG_CCB_STYLES)
    entries = parse(top[index][2])
    if any(_get(parse(entry[2]), 1) == CARD_FILE for entry in entries):
        return config
    settings = next(parse(entry[2]) for entry in entries if _get(parse(entry[2]), 1) == b"android_settings_card.ccb")
    groups = [field for field in settings if field[0] == 2]
    title_group = next(group for group in groups if b"soundTitleLabel" in group[2])
    entries.append([1, 2, encode([[1, 2, CARD_FILE], title_group])])
    top[index][2] = encode(entries)
    return encode(top)
