'use strict';

// Live trace for Hollywood U 3.8.0 libHSS.so. Addresses are file offsets
// in the 32-bit library (they match the executable virtual addresses).
const lib = Process.findModuleByName('libHSS.so');
if (lib === null) {
  throw new Error('libHSS.so is not loaded');
}

function thumb(offset) {
  return lib.base.add(offset).or(1);
}

function log(message) {
  console.log(message);
  send(message);
}

const hooks = [
  ['evaluateQuestState', 0x3ed7cc, true],
  ['getQuestState', 0x3ed9f0, true],
  ['meetsPassiveRequirements', 0x3ecc58, true],
  ['doesCharacterMeetRequirement', 0x3e7928, true],
  ['handleQuestActionButton', 0x3b72c4, false],
  ['addCoinsPressed', 0x475c6c, false],
  ['addHeartsPressed', 0x475d4c, false],
  ['grantCash', 0x36a7f8, false],
  ['grantDiamonds', 0x36a850, false],
  ['grantXp', 0x36a8a8, false],
];

for (const [name, offset, returns] of hooks) {
  Interceptor.attach(thumb(offset), {
    onEnter() {
      log(name + ' enter');
    },
    onLeave(retval) {
      if (returns) {
        log(name + ' -> ' + retval.toInt32());
      }
    },
  });
}

log('hooks installed at ' + lib.base);
