module("hss", package.seeall)
collectgarbage("setpause", 100)
collectgarbage("setstepmul", 5000)
DIALOG_DEFAULT = 0
DIALOG_LEFT = 1
DIALOG_RIGHT = 2
DIALOG_CENTER = 3
ANIMATION_DEFAULT = 0
ANIMATION_HAPPY = 1
ANIMATION_SAD = 2
ANIMATION_ANGRY = 3
ANIMATION_SURPRISED = 4
ANIMATION_CHEER = 5
ANIMATION_GIRLFLIRT = 6
ANIMATION_GUYFLIRT = 7
ANIMATION_DANCE = 8
ANIMATION_LOVE = 9
ANIMATION_YAWN = 11
NO_REWARD = 0
REWARD_COINS = 1
REWARD_RINGS = 2
REWARD_BOOKS = 3
REWARD_TICKETS = 5
PLATFORM_IOS = "IOS"
PLATFORM_GOOGLE = "GOOGLE"
PLATFORM_AMAZON = "AMAZON"
D1 = "{DATE_CHAR_1}"
D2 = "{DATE_CHAR_2}"
A = "ADDISON"
B = "BIANCA"
BR = "BRIAN"
C = "CHRIS"
CA = "CARLOTTA"
CR = "CRASH"
D = "DIEGO"
E = "ETHAN"
H = "HOLLY"
N = "NORTH"
U = "YOU"
Q1 = "{QUEST_CHAR_1}"
Q2 = "{QUEST_CHAR_2}"
Q3 = "{QUEST_CHAR_3}"
BUTTON_NEXT = "BUTTON_NEXT"
BUTTON_DONE = "BUTTON_DONE"
BUTTON_CLOSE = "BUTTON_CLOSE"
BUTTON_NONE = "BUTTON_NONE"
function getArgument(varName)
return ScriptManager:getArgument(varName)
end
function setArgument(key, value)
ScriptManager:setArgument(key, value)
end
function error(msg)
ScriptManager:error(msg)
end
function check(condition, msg)
if condition then
error(msg)
end
end
function showQuestComplete(co)
local function showQuestCompleteFinishedHandler()
coroutine.resume(co)
end
ScriptManager:showQuestComplete(getArgument("QUEST_ID"), showQuestCompleteFinishedHandler,
(getArgument("QUEST_TIME_BONUS_ACHIEVED") == 1))
coroutine.yield()
end
function showHwuDateComplete(co)
showQuestComplete(co)
end
function showRateGame(co)
local function showRateGameFinishedHandler()
coroutine.resume(co)
end
ScriptManager:showRateGame(showRateGameFinishedHandler)
coroutine.yield()
end
function showDateComplete(co)
local function showDateCompleteFinishedHandler()
coroutine.resume(co)
end
ScriptManager:showDateComplete(getArgument("BUILDING_TYPE"), getArgument("BUILDING_ID"), getArgument("DATE_ID"), showDateCompleteFinishedHandler)
coroutine.yield()
end
function showDateSalvage(co)
local function showDateSalvageFinishedHandler()
coroutine.resume(co)
end
ScriptManager:showDateSalvage(getArgument("BUILDING_TYPE"), getArgument("BUILDING_ID"), getArgument("DATE_ID"), showDateSalvageFinishedHandler)
coroutine.yield()
end
function showBreakup(co)
local function showBreakupFinishedHandler()
coroutine.resume(co)
end
ScriptManager:showBreakup(getArgument("DATE_ID"), getArgument("DATE_CHAR_1"), getArgument("DATE_CHAR_2"), showBreakupFinishedHandler)
coroutine.yield()
end
-- only good for the duration of the script's invocation, which is one "scene"
function setCharacterDialogPos(characterName, position)
setArgument("dlg.pos." .. characterName, position)
end
function setQuestProperty(property, value)
ScriptManager:setGameStateProperty(getArgument("QUEST_ID"), property, value)
end
function getQuestProperty(property)
return ScriptManager:getGameStateProperty(getArgument("QUEST_ID"), property)
end
function hasQuestProperty(property)
return ScriptManager:hasGameStateProperty(getArgument("QUEST_ID"), property)
end
function addToQuestProperty(property, delta)
if (hasQuestProperty(property)) then
local value = getQuestProperty(property)
setQuestProperty(property, value + delta)
else
error("Do not have property")
end
end
function getGameProperty(prefix, property)
return ScriptManager:getGameStateProperty(prefix, property)
end
function setGameProperty(prefix, property, value)
ScriptManager:setGameStateProperty(prefix, property, value)
end
function hasGameProperty(prefix, property)
return ScriptManager:hasGameStateProperty(prefix, property)
end
function addToGameProperty(prefix, property, delta)
if (hasGameProperty(property)) then
local value = getGameProperty(property)
setGameProperty(property, value + delta)
else
error("Do not have game property")
end
end
function getPlatform()
return getArgument("PLATFORM")
end
function isPlatformIOS()
return getPlatform() == PLATFORM_IOS
end
function isPlatformGoogle()
return getPlatform() == PLATFORM_GOOGLE
end
function isPlatformAmazon()
return getPlatform() == PLATFORM_AMAZON
end
function showPremiumTextMenu(co, title, choices, randomize)
local menu = ScriptManager:textMenu()
local choiceName = getArgument("QUEST_ID")
return showMenu(co, menu, title, choices, nil, nil, randomize, nil, false, false, choiceName)
end
function showTextMenu(co, title, choices, randomize, menuDuration)
local menu = ScriptManager:textMenu()
return showMenu(co, menu, title, choices, nil, nil, randomize, menuDuration, false, false, nil)
end
function showImageMenu(co, title, choices, choiceSpriteFrames, note, randomize, menuDuration, showShadows,
femaleShadow)
local menu = ScriptManager:imageMenu()
return showMenu(co, menu, title, choices, choiceSpriteFrames, note, randomize, menuDuration, showShadows,
femaleShadow, nil)
end
function showMenu(co, menu, title, choices, choiceSpriteFrames, note, randomize, menuDuration, showShadows,
femaleShadow, choiceName)
menu:setTitle(title)
menu:setChoices(choices, choiceSpriteFrames, randomize, showShadows, femaleShadow, choiceName)
if note then
menu:setNote(note)
end
if menuDuration then
menu:setDuration(menuDuration)
end
local returnValue = -1
local function returnValueHandler(value)
returnValue = value
coroutine.resume(co)
end
ScriptManager:showMenuState(menu, returnValueHandler)
coroutine.yield()
return returnValue
end
function showRingEffect()
ScriptManager:showRingEffect()
end
function showChallenge(co, score, topCharacterName, topText, topAnimationType,
bottomCharacterName, bottomText, bottomCorrectChoice, bottomWrongChoice1,
bottomWrongChoice2, bottomWrongChoice3)
local returnValue = false
local function challengeFinishedHandler(value)
returnValue = value
coroutine.resume(co)
end
checkEnvironment({"EDUCATION_MAP_NAME", "EDUCATION_NODE_INDEX"})
local mapName = getArgument("EDUCATION_MAP_NAME")
local nodeIndex = getArgument("EDUCATION_NODE_INDEX")
local formattedTopText = ScriptManager:format(topText)
local formattedBottomText = ScriptManager:format(bottomText)
ScriptManager:showChallenge(mapName, nodeIndex, score, topCharacterName, formattedTopText,
topAnimationType, formattedBottomText, bottomCorrectChoice, bottomWrongChoice1,
bottomWrongChoice2, bottomWrongChoice3, challengeFinishedHandler)
coroutine.yield()
return score + returnValue
end
function getHighScore()
checkEnvironment({"EDUCATION_MAP_NAME", "EDUCATION_NODE_INDEX"})
local mapName = hss.getArgument("EDUCATION_MAP_NAME")
local nodeIndex = hss.getArgument("EDUCATION_NODE_INDEX")
ScriptManager:getHighScore(mapName, nodeIndex)
end
--    checkEnvironment({"EDUCATION_MAP_NAME", "EDUCATION_NODE_INDEX"})
--    local mapName = hss.getArgument("EDUCATION_MAP_NAME")
--   local nodeIndex = hss.getArgument("EDUCATION_NODE_INDEX")
function isHighScore(value)
checkEnvironment({"EDUCATION_HIGH_SCORE"})
local highScore = hss.getArgument("EDUCATION_HIGH_SCORE")
return (value > highScore)
end
function startChallenge()
local mapName = hss.getArgument("EDUCATION_MAP_NAME")
local nodeIndex = hss.getArgument("EDUCATION_NODE_INDEX")
ScriptManager:showScoreBar(mapName, nodeIndex)
end
function endChallenge(score)
checkEnvironment({"EDUCATION_MAP_NAME", "EDUCATION_NODE_INDEX"})
local mapName = hss.getArgument("EDUCATION_MAP_NAME")
local nodeIndex = hss.getArgument("EDUCATION_NODE_INDEX")
ScriptManager:endChallenge(mapName, nodeIndex, score)
end
function evt(co, text, url, rewardType, rewardAmount)
showEventDialog(co, text, url, rewardType, rewardAmount)
end
function showEventDialog(co, text, url, rewardType, rewardAmount)
showDialog(co, "", text, DIALOG_CENTER, true, ANIMATION_DEFAULT, rewardType, rewardAmount, url) -- position doesn't matter
end
function dlg(co, characterName, text, position, eventDialog, animation, rewardType, rewardAmount)
showDialog(co, characterName, text, position, eventDialog, animation, rewardType, rewardAmount, nil)
end
function dlgA(co, characterName, text, animation, rewardType, rewardAmount)
showDialog(co, characterName, text, 0, false, animation, rewardType, rewardAmount, nil)
end
function showDialog(co, characterName, text, position, eventDialog, animation, rewardType, rewardAmount, url)
position = position or DIALOG_DEFAULT
eventDialog = eventDialog or false
animation = animation or ANIMATION_DEFAULT
rewardType = rewardType or NO_REWARD
rewardAmount = rewardAmount or 0
local dialog = ScriptManager:dialog()
if eventDialog then
dialog:setAsEvent()
else
dialog:setCharacterId(characterName, position, animation)
end
local formattedText = ScriptManager:format(text)
dialog:setText(formattedText)
if (rewardType ~= NO_REWARD and rewardAmount > 0) then
dialog:setReward(rewardType, rewardAmount)
end
if (url and string.len(url) > 0) then
dialog:setUrl(url)
end
local function dialogFinishedHandler()
coroutine.resume(co)
end
ScriptManager:showDialogState(dialog, dialogFinishedHandler)
coroutine.yield()
end
function showFullscreenImage(image, co)
local function waitHandler(value)
coroutine.resume(co)
end
ScriptManager:showFullscreenImage(image, waitHandler)
coroutine.yield()
end
function showImage(image, buttonType, co)
local function waitHandler(value)
coroutine.resume(co)
end
ScriptManager:showImage(image, buttonType, waitHandler)
coroutine.yield()
end
-- Gets the gender of the named character.  Returns "MALE", "FEMALE" as values.
function getCharacterGender(referenceName)
return ScriptManager:getCharacterGender(referenceName)
end
function getCharacterType(referenceName)
return ScriptManager:getCharacterType(referenceName)
end
function getCharacterTypeByProperty(property)
local value = getArgument(property)
return ScriptManager:getCharacterTypeById(value)
end
function changeCharacterReferenceName(currentName, newName)
ScriptManager:changeCharacterReferenceName(currentName, newName)
end
function getCharacterReferenceNameByProperty(property)
local value = getArgument(property)
return ScriptManager:getCharacterReferenceNameById(value)
end
function getDatingPartnerReferenceNameByProperty(property)
local value = getArgument(property)
return ScriptManager:getDatingPartnerReferenceNameById(value)
end
function getDatingPartnerReferenceName(referenceName)
return ScriptManager:getDatingPartnerReferenceName(referenceName)
end
function isCharacterAdmitted(referenceName)
return ScriptManager:isCharacterAdmitted(referenceName)
end
function getBoolConfigVariable(variableName, defaultValue)
return ScriptManager:getBoolConfigVariable(variableName, defaultValue)
end
function getStringConfigVariable(variableName, defaultValue)
return ScriptManager:getStringConfigVariable(variableName, defaultValue)
end
function grantPromoReward()
return ScriptManager:grantPromoReward()
end
function isQuestAvailable(questId)
return ScriptManager:isQuestAvailable(questId)
end
function isQuestTimeBonusPassed()
return (getArgument("QUEST_TIME_BONUS_ACHIEVED") == 1)
end
function getBranchingQuestSlot()
checkEnvironment({"QUEST_BRANCHING_CHOSEN_SLOT"})
return getArgument("QUEST_BRANCHING_CHOSEN_SLOT")
end
function markQuestScriptRequirementFinished()
ScriptManager:markQuestScriptRequirementFinished(getArgument("QUEST_ID"), getArgument("scene"))
end
function notifyTelemetryEvent(event)
ScriptManager:notifyTelemetryEvent(event)
end
function emitTutorialCheckpoint(checkpoint)
ScriptManager:emitGenericTelemetryEvent("checkpoint_tutorial", "tutorial_checkpoint", checkpoint)
end
function emitPrimaryCheckpoint(checkpoint)
--   ScriptManager:emitGenericTelemetryEvent("checkpoint_primary", "primary_checkpoint", checkpoint)
end
TutorialBuildingTypes = {
ADMISSIONS = "ADMISSIONS",
WORKSHOP = "WORKSHOP",
DORM_DIRECTOR = "DORM_DIRECTOR",
DORM_FASHIONISTA = "DORM_FASHIONISTA",
DORM_MOVIE_STAR = "DORM_MOVIE_STAR",
}
TutorialGoToTypes = {
YOU_CUSTOMIZATION = "GOTO.YOU_CUSTOMIZATION",
CLASSMATE_CUSTOMIZATION = "GOTO.CLASSMATE_CUSTOMIZATION",
CHARACTER_DORM_PLACEMENT = "GOTO.CHARACTER_DORM_PLACEMENT",
}
TutorialArrowTypes = {
MAIN_STORE_BUTTON = "ARROW.MAIN_STORE_BUTTON", -- the store button on the map HUD
QUEST_BUTTON = "ARROW.QUEST_BUTTON", -- the quest button on the map HUD
QUEST_BUTTON_ALWAYS = "ARROW.QUEST_BUTTON_ALWAYS", -- the quest button on the map HUD, but never hide when buildings are tapped
SOCIAL_BUTTON = "ARROW.SOCIAL_BUTTON", -- the social button on the map HUD
PLACEMENT_DONE_BUTTON = "ARROW.PLACEMENT_DONE_BUTTON", -- placement done button for buildings
STORE_DETAILS_BUY_BUTTON = "ARROW.STORE_DETAILS_BUY_BUTTON",
BUILDING_COLLECTABLE = "ARROW.BUILDING_COLLECTABLE",
RUSH_BUILDING_BUTTON = "ARROW.RUSH_BUILDING_BUTTON", -- the rush button on the building HUD
COLLECT_BUILDING_BUTTON = "ARROW.COLLECT_BUILDING_BUTTON", -- the collect button on the building HUD
RUSH_BUTTON = "ARROW.RUSH_BUTTON", -- the rush buy button on the rush dialog
ADMIT_CLASSMATE_BUTTON = "ARROW.ADMIT_CLASSMATE_BUTTON", -- the character button in the admissions HUD
HOMEWORK_BUTTON = "ARROW.HOMEWORK_BUTTON", -- the homework button in the classroom HUD
COLLECT_HOMEWORK_BUTTON = "ARROW.COLLECT_HOMEWORK_BUTTON", -- the collect/finish button in the classroom HUD
RUSH_HOMEWORK_BUTTON = "ARROW.RUSH_HOMEWORK_BUTTON", -- the rush button for homework items in the classroom HUD
CHEAPEST_HOMEWORK_ITEM = "ARROW.CHEAPEST_HOMEWORK_ITEM", -- the cheapest homework item in the class item list
YOU_CHARACTER = "ARROW.YOU_CHARACTER", -- the YOU character in the map
FIRST_CLASSMATE_CHARACTER = "ARROW.FIRST_CLASSMATE_CHARACTER", -- the FIRST_CLASSMATE character in the map
STUDY_CHARACTER_BUTTON = "ARROW.STUDY_CHARACTER_BUTTON",
QUEST_SELECTABLE_CHARACTERS = "ARROW.QUEST_SELECTABLE_CHARACTERS",
QUEST_START_BUTTON = "ARROW.QUEST_START_BUTTON",
QUEST_TABS = "ARROW.QUEST_TABS", -- quest tabs
QUEST_LOG_CLOSE_BUTTON = "ARROW.QUEST_LOG_CLOSE_BUTTON", -- the close button on the quest log dialog
QUEST_LOG_ACTIVE_REQUIREMENT_ITEMS = "ARROW.QUEST_LOG_ACTIVE_REQUIREMENT_ITEMS", -- the active requirements in the quest card
PROFILE_DIALOG_CLOSE_BUTTON = "ARROW.PROFILE_DIALOG_CLOSE_BUTTON", -- the close button on the character profile dialog
CLOTHING_BUTTON_AND_ITEMS = "ARROW.CLOTHING_BUTTON_AND_ITEMS",
WORKSHOP_GIG_BUTTON = "ARROW.HOMEWORK_BUTTON", -- the workshop roster button (reuses HOMEWORK_BUTTON)
WORKSHOP_RUSH_GIG_BUTTON = "ARROW.RUSH_HOMEWORK_BUTTON", -- the workshop roster gig rush button (reuses RUSH_HOMEWORK_BUTTON)
WORKSHOP_COLLECT_BUTTON ="ARROW.COLLECT_HOMEWORK_BUTTON", -- the workshop collect gig button (resuses COLLECT_HOMEWORK_BUTTON)
WORKSHOP_ROSTER_YOU = "ARROW.WORKSHOP_ROSTER_YOU", -- in the workshop roster, arrows the YOU character
QUEST_REQUIREMENT_GO_BUTTON = "ARROW.QUEST_REQUIREMENT_GO_BUTTON", -- in the quest log, the quest requirement "go" button
}
TutorialEnableTypes = {
BUILDING_STORE = "ENABLE.BUILDING_STORE", -- the building tab button on the store dialog
CHARACTER_STORE = "ENABLE.CHARACTER_STORE", -- the character tab button on the store dialog
CURRENCY_STORE = "ENABLE.CURRENCY_STORE", -- the currency tab button on the store dialog
DECORATION_STORE = "ENABLE.DECORATION_STORE", -- the decorations tab button on the store dialog
PLACEMENT_CANCEL_BUTTON = "ENABLE.PLACEMENT_CANCEL_BUTTON",
SETTINGS = "ENABLE.SETTINGS",
CHARACTER_PROFILE_NON_STUDY_BUTTONS = "ENABLE.CHARACTER_PROFILE_NON_STUDY_BUTTONS",
CHARACTER_PROFILE_STUDY_BUTTON_FIRST_CLASSMATE = "ENABLE.CHARACTER_PROFILE_STUDY_BUTTON_FIRST_CLASSMATE",
CHARACTER_PROFILE_STUDY_BUTTON_YOU = "ENABLE.CHARACTER_PROFILE_STUDY_BUTTON_YOU",
CHARACTER_HANGOUT_PLACEMENT_CANCEL_BUTTON = "ENABLE.CHARACTER_HANGOUT_PLACEMENT_CANCEL_BUTTON",
CLASSROOM_ITEM_BUY_BUTTON = "ENABLE.CLASSROOM_ITEM_BUY_BUTTON", -- the classroom HUD buy homework button
CLASSROOM_ITEM_COLLECT_BUTTON = "ENABLE.CLASSROOM_ITEM_COLLECT_BUTTON", -- the classroom HUD collect homework button
CLASSROOM_ITEM_RUSH_BUTTON = "ENABLE.CLASSROOM_ITEM_RUSH_BUTTON", -- the classroom HUD rush homework button
COLLECT_HOMEWORK = "ENABLE.COLLECT_HOMEWORK", -- collecting homework by tapping on the buidling or via the menu
SELL_BUILDING_HUD_BUTTON = "ENABLE.SELL_BUILDING_HUD_BUTTON", -- the button in the building HUD for selling a building
CLOSET_TAB = "ENABLE.CLOSET_TAB", -- the closet tab in the character customization screen
SHOP_TAB = "ENABLE.SHOP_TAB", -- the shop tab in the character customization screen
CHARACTER_PROFILE_CLOSET_BUTTON = "ENABLE.CHARACTER_PROFILE_CLOSET_BUTTON", -- the closet button in the character profile screen
CLOSET_CLOTHING_1 = "ENABLE.CLOSET_CLOTHING_1", -- the first clothing set
CLOSET_CLOTHING_2 = "ENABLE.CLOSET_CLOTHING_2", -- the second clothing set
HUD_STORE_BUTTON = "ENABLE.HUD_STORE_BUTTON", -- the HUD store button
WORKSHOP_ITEM_BUY_BUTTON = "ENABLE.CLASSROOM_ITEM_BUY_BUTTON", -- the workshop HUD start gig button (shows roster) - reuses CLASSROOM_ITEM_BUY_BUTTON
CHARACTER_PROFILE_STUDY_BUTTON = "ENABLE.CHARACTER_PROFILE_STUDY_BUTTON",
-- WORKSHOP_ITEM_COLLECT_BUTTON = "ENABLE.CLASSROOM_ITEM_COLLECT_BUTTON", -- the workshop HUD collects gig button - reuses CLASSROOM_ITEM_COLLECT_BUTTON
-- WORKSHOP_ITEM_RUSH_BUTTON = "ENABLE.CLASSROOM_ITEM_RUSH_BUTTON", -- the workshop HUD rushes gig button - reuses CLASSROOM_ITEM_RUSH_BUTTON
}
TutorialVisibleTypes = {
BUILDING_STORE = "VIS.BUILDING_STORE", -- the building tab button on the store dialog
CHARACTER_STORE = "VIS.CHARACTER_STORE", -- the character tab button on the store dialog
CURRENCY_STORE = "VIS.CURRENCY_STORE", -- the currency tab button on the store dialog
DECORATION_STORE = "VIS.DECORATION_STORE", -- the decorations tab button on the store dialog
SETTINGS = "VIS.SETTINGS", -- the settings tab button on the store dialog
MAIN_STORE_BUTTON = "VIS.MAIN_STORE_BUTTON", -- the store button on the map HUD
QUEST_BUTTON = "VIS.QUEST_BUTTON", -- the quest button on the map HUD
SOCIAL_BUTTON = "VIS.SOCIAL_BUTTON", -- the social button on the map HUD
PLOT_INDICATORS = "VIS.PLOT_INDICATORS", -- the for sale signs on unpurchased land plots
CHARACTER_CLOTHING_TABS = "VIS.CHARACTER_CLOTHING_TABS", -- the tabs in the character customization dialog that access clothing
}
TutorialTriggerTypes = {
NONE = "TRIGGER.NONE", -- nothing triggers
NOW = "TRIGGER.NOW", -- trigger immediately
BUY_AND_PLACE_BUILDING = "TRIGGER.BUY_AND_PLACE_BUILDING",
CLOSE_CHARACTER_PERSONALIZATION = "TRIGGER.CLOSE_CHARACTER_PERSONALIZATION",
START_ADMISSION = "TRIGGER.START_ADMISSION", -- upon start of classmate placement in admissions
FINISH_CONSTRUCTION = "TRIGGER.FINISH_CONSTRUCTION", -- upon collecting a building after construction
PLACE_CLASSMATE_IN_DORM = "TRIGGER.PLACE_CLASSMATE_IN_DORM", -- upon putting a character in a dorm
CLASSMATE_READY_FOR_DORM_PLACEMENT = "TRIGGER.CLASSMATE_READY_FOR_DORM_PLACEMENT",
-- ADMIT_CLASSMATE =  "TRIGGER.ADMIT_CLASSMATE", -- upon admitting a classmate
BOUGHT_HOMEWORK = "TRIGGER.BOUGHT_HOMEWORK", -- when homework is bought from the classroom
COLLECT_HOMEWORK = "TRIGGER.COLLECT_HOMEWORK", -- when homework is collcted from the classroom
CLOSE_QUEST_LOG = "TRIGGER.CLOSE_QUEST_LOG", -- upon closing of quest log
OPEN_QUEST_LOG = "TRIGGER.OPEN_QUEST_LOG", -- upon opening of quest log
SP_LEVEL_UP_CHARACTER = "TRIGGER.SP_LEVEL_UP_CHARACTER", -- upon leveling up a character in SP levels
XP_LEVEL_UP = "TRIGGER.XP_LEVEL_UP", -- upon leveling the XP level
QUEST_COMPLETE = "TRIGGER.QUEST_COMPLETE",
QUEST_SCRIPT_FINISHED = "TRIGGER.QUEST_SCRIPT_FINISHED",
QUEST_CHARACTER_ROSTER_ASSIGNED = "TRIGGER.QUEST_CHARACTER_ROSTER_ASSIGNED",
CLOSE_CHARACTER_PROFILE = "TRIGGER.CLOSE_CHARACTER_PROFILE",
WAIT_ONE_SECOND = "TRIGGER.WAIT_ONE_SECOND",
TAP_ADMIT_CHARACTER_BUTTON = "TRIGGER.TAP_ADMIT_CHARACTER_BUTTON", -- HWU - upon tapping the character button on the admissions building
CHANGED_OUTFIT = "TRIGGER.CHANGED_OUTFIT", -- HWU - upon changing a character's outfit AND leaving the character ocustomization screen
COLLECT_WORKSHOP = "TRIGGER.COLLECT_HOMEWORK", -- upon collecting the gig on a workshop (reuses COLLECT_HOMEWORK)
WAIT_A_TICK = "TRIGGER.WAIT_A_TICK", -- waits til next tick to fire trigger
}
TutorialProTipConditionTypes = {
NONE = "CONDITION.NONE", -- always shows
BUILDING_DONE_CONSTRUCTION = "CONDITION.BUILDING_DONE_CONSTRUCTION",
IN_BUILDING_HUD = "CONDITION.IN_BUILDING_HUD", -- when in a building HUD, as opposed to the default HUD
BUILDING_PLACEMENT = "CONDITION.BUILDING_PLACEMENT", -- when in building placement state
IN_ADMISSIONS_HUD = "CONDITION.IN_ADMISSIONS_HUD", -- when in admissions building HUD
IN_ADMISSIONS_HUD_WAITING_ON_ADMISSION = "CONDITION.IN_ADMISSIONS_HUD_WAITING_ON_ADMISSION",
-- IN_CLASSROOM_HUD_AND_RUSHABLE = "CONDITION.IN_CLASSROOM_HUD_AND_RUSHABLE", -- when in classroom HUD and rushable
-- IN_CLASSROOM_HUD_NO_HOMEWORK = "CONDITION.IN_CLASSROOM_HUD_NO_HOMEWORK",
-- IN_CLASSROOM_HUD_AND_HOMEWORK_RUSHABLE = "CONDITION.IN_CLASSROOM_HUD_AND_HOMEWORK_RUSHABLE",
HOMEWORK_COLLECTABLE = "CONDITION.HOMEWORK_COLLECTABLE",
SECOND_CLASSMATE_AND_DORM_PURCHASED = "CONDITION.SECOND_CLASSMATE_AND_DORM_PURCHASED",
IN_CHARACTER_PLACEMENT = "CONDITION.IN_CHARACTER_PLACEMENT",
IN_BUILDING_HUD_WAITING_ON_CONSTRUCTION = "CONDITION.IN_BUILDING_HUD_WAITING_ON_CONSTRUCTION",
IN_NON_WORKSHOP_BUILDING_HUD = "CONDITION.IN_NON_WORKSHOP_BUILDING_HUD", -- when in a building HUD but not the workshop HUD
IN_WORKSHOP_ROSTER = "CONDITION.IN_WORKSHOP_ROSTER", -- in workshp roster
IN_WORKSHOP_HUD_RUSHABLE = "CONDITION.IN_WORKSHOP_ROSTER_RUSHABLE", -- in workshop HUD, with item rushable
WORKSHOP_COLLECTABLE = "CONDITION.WORKSHOP_COLLECTABLE", -- when the workshop is collectable (anywhere)
IN_RUSH_DIALOG = "CONDITION.IN_RUSH_DIALOG", -- in workshop HUD, with item rushable
QUEST_COLLECTABLE = "CONDITION.QUEST_COLLECTABLE", -- when a quest is collectable
IN_BUILDING_MOVE = "CONDITION.IN_BUILDING_MOVE", -- when a building is being moved (not placed after purchase)
}
TutorialProTipLocationTypes = {
TOP_MIDDLE = "PROTIP.TOP_MIDDLE",
TOP_LEFT = "PROTIP.TOP_LEFT",
TOP_RIGHT = "PROTIP.TOP_RIGHT",
}
TutorialStoreItemTypes = {
ALL_DISABLED = "STORE.ALL_DISABLED", -- when all store items are disabled
ADMISSIONS = "STORE.ADMISSIONS",
WORKSHOP = "STORE.WORKSHOP",
NOT_CHARACTER_FASHIONISTA = "STORE.NOT_CHARACTER_FASHIONISTA",
NOT_CHARACTER_MOVIE_STAR = "STORE.NOT_CHARACTER_MOVIE_STAR",
NOT_CHARACTER_DIRECTOR = "STORE.NOT_CHARACTER_DIRECTOR",
CHARACTER_FASHIONISTA = "STORE.CHARACTER_FASHIONISTA",
CHARACTER_MOVIE_STAR = "STORE.CHARACTER_MOVIE_STAR",
CHARACTER_DIRECTOR = "STORE.CHARACTER_DIRECTOR",
CHARACTER_DIRECTOR_MALE = "STORE.CHARACTER_DIRECTOR_MALE",
}
Gender = {
MALE = "MALE",
FEMALE = "FEMALE",
UNKNOWN = "UNKNOWN",
}
CharacterType = {
UNASSIGNED = "UNASSIGNED",
MOVIE_STAR = "MOVIE_STAR",
DIRECTOR = "DIRECTOR",
FASHIONISTA = "FASHIONISTA",
DIRECTOR = "DIRECTOR",
FASHIONISTA = "FASHIONISTA",
MOVIE_STAR = "MOVIE_STAR",
AGENT              = "AGENT",
REALITY_TV         = "REALITY_TV",
MAKE_UP            = "MAKE_UP",
MODEL              = "MODEL",
CELEBUTANTE        = "CELEBUTANTE",
ACTION_HERO        = "ACTION_HERO",
COSTUME_DESIGNER   = "COSTUME_DESIGNER",
POP_STAR           = "POP_STAR",
COMPOSER	       = "COMPOSER",
FAIRY_TALE	       = "FAIRY_TALE",
STUNT              = "STUNT",
SPECIAL_FX         = "SPECIAL_FX",
DIVA               = "DIVA",
AWARD_HOST         = "AWARD_HOST",
MO_CAP	       = "MO_CAP",
MAGICIAN	       = "MAGICIAN",
SCREENWRITER       = "SCREENWRITER",
CELEB_BLOGGER      = "CELEB_BLOGGER",
MUSIC_MOGUL        = "MUSIC_MOGUL",
BODYGUARD          = "BODYGUARD",
BROADWAY           = "BROADWAY",
FANTASY            = "FANTASY",
STUNT_DRIVER      = "STUNT_DRIVER",
SUPERHERO_TYPE      = "SUPERHERO_TYPE",
CELEB_ATHLETE      = "CELEB_ATHLETE",
MARTIAL_ARTS       = "MARTIAL_ARTS",
CELEB_CHEF         = "CELEB_CHEF",
TRAINER            = "TRAINER",
CELEBRITY_HWU      = "CELEBRITY_HWU",
ZOMBIE             = "ZOMBIE",
VAMPIRE_HWU        = "VAMPIRE_HWU",
HUNTER             = "HUNTER",
GHOST              = "GHOST",
COMEDIAN           = "COMEDIAN",
FIGURE_SKATER      = "FIGURE_SKATER",
ELF_HWU_TYPE       = "ELF_HWU_TYPE",
ROMANTIC_LEAD      = "ROMANTIC_LEAD",
FANFICTION_WRITER  = "FANFICTION_WRITER",
CRITIC             = "CRITIC",
RAPPER             = "RAPPER",
YOU_TUBER          = "YOU_TUBER",
CELEBRITY_BETHANY  = "CELEBRITY_BETHANY",
PAPARAZZI          = "PAPARAZZI",
}
function tutorialStop()
tutorialResetEverything()
ScriptManager:stopTutorial()
end
function tutorialSave(sceneToRun)
ScriptManager:saveTutorial(sceneToRun)
end
function tutorialPlaceInvisibleCharacterOntoMap(referenceName)
ScriptManager:placeInvisibleCharacterOntoMap(referenceName)
end
function tutorialPlaceFakeYouIntoAdmissionsBuilding()
ScriptManager:placeFakeYouIntoAdmissionsBuilding()
end
function tutorialSwapFakeYouWithRealYou()
ScriptManager:swapFakeYouWithRealYou()
end
function tutorialQueueCollectOnAdmissionsBuilding()
ScriptManager:queueCollectOnAdmissionsBuilding()
end
function tutorialPanToCharacter(co, referenceName)
local function panFinishedHandler()
coroutine.resume(co)
end
ScriptManager:panToCharacter(referenceName, panFinishedHandler)
end
function tutorialFinishPanToCharacter(referenceName)
ScriptManager:finishPanToCharacter(referenceName)
end
function tutorialPanToBuilding(co, buildingType, buildingId)
local function panFinishedHandler()
coroutine.resume(co)
end
ScriptManager:panToBuilding(buildingType, buildingId, panFinishedHandler)
end
function tutorialAddBuildingArrow(buildingType, buildingId)
ScriptManager:addBuildingArrow(buildingType, buildingId)
end
function tutorialRemoveBuildingArrow(buildingType, buildingId)
ScriptManager:removeBuildingArrow(buildingType, buildingId)
end
function tutorialRemoveAllBuildingArrows()
ScriptManager:removeAllBuildingArrows()
end
function tutorialWaitForDuration(co, durationInSeconds)
local function waitForDurationHandler()
coroutine.resume(co)
end
ScriptManager:waitForDuration(durationInSeconds, waitForDurationHandler)
coroutine.yield()
end
function tutorialGoToState(stateName, showLink, callback)
ScriptManager:goToState(stateName, showLink, callback)
end
function tutorialAddArrow(arrowType)
ScriptManager:addTutorialArrow(arrowType)
end
function tutorialRemoveArrow(arrowType)
ScriptManager:removeTutorialArrow(arrowType)
end
function tutorialRemoveAllArrows()
ScriptManager:removeAllTutorialArrows()
end
function tutorialAddProTipWithCondition(proTipTitle, proTipText, location, conditionType)
ScriptManager:addProTip(proTipTitle, proTipText, location, conditionType)
end
function tutorialAddProTip(proTipTitle, proTipText, location)
tutorialAddProTipWithCondition(proTipTitle, proTipText, location, TutorialProTipConditionTypes.NONE)
end
function tutorialClearProTips()
ScriptManager:clearProTips()
end
function tutorialHide(visibleType)
ScriptManager:hideTutorialElement(visibleType)
end
function tutorialShow(visibleType, animate)
ScriptManager:showTutorialElement(visibleType, animate)
end
function tutorialShowAll()
ScriptManager:showAllTutorialElements()
end
function tutorialDisable(enableType)
ScriptManager:setEnabledTutorialElement(enableType, false)
end
function tutorialEnable(enableType)
ScriptManager:setEnabledTutorialElement(enableType, true)
end
function tutorialEnableAll()
ScriptManager:enableAllTutorialElements()
end
function tutorialAddScriptTrigger(alias, sceneName, trigger, showsOtherUi)
ScriptManager:addScriptTrigger(alias, sceneName, trigger, showsOtherUi)
end
function tutorialRemoveScriptTrigger(alias)
ScriptManager:removeScriptTrigger(alias)
end
function tutorialRemoveAllScriptTriggers()
ScriptManager:removeAllScriptTriggers()
end
function tutorialMarkStoreItem(storeItemType)
ScriptManager:markStoreItem(storeItemType)
end
function tutorialClearMarkedStoreItem()
ScriptManager:clearMarkedStoreItem()
end
function tutorialEnableBuildTimes(enable)
ScriptManager:enableTutorialBuildTimes(enable)
end
function tutorialResetEverything()
tutorialRemoveAllBuildingArrows()
tutorialClearMarkedStoreItem()
tutorialRemoveAllArrows()
tutorialClearProTips()
tutorialShowAll()
tutorialRemoveAllScriptTriggers()
tutorialEnableAll()
ScriptManager:enableTutorialBuildTimes(false)
end
function tutorialCharacterSelection(co, genderChoice)
local spriteFrames = ""
local isFemale = (genderChoice == hss.Gender.FEMALE)
if isFemale then
spriteFrames = "TUTORIAL_MOVIE_STAR_FEMALE.png|TUTORIAL_FASHIONISTA_FEMALE.png|TUTORIAL_DIRECTOR_FEMALE.png"
else
spriteFrames = "TUTORIAL_MOVIE_STAR_MALE.png|TUTORIAL_FASHIONISTA_MALE.png|TUTORIAL_DIRECTOR_MALE.png"
end
local typeChoice = showImageMenu(co, "What do you want to be?",
"Movie Star|Fashionista|Director",
spriteFrames,
"",
false, nil, true, isFemale)
if typeChoice == 0 then
return CharacterType.MOVIE_STAR
elseif typeChoice == 1 then
return CharacterType.FASHIONISTA
else
return CharacterType.DIRECTOR
end
end
function tutorialAddYouCharacter(characterType, genderType, name)
ScriptManager:addYouCharacter(characterType, genderType, name)
end
function tutorialGotoMapOnScriptExit()
ScriptManager:gotoMapOnScriptExit()
end
function tutorialShowFacebookDialog(text, co)
local useFacebookGender = false
local function waitForLoginHandler(value)
useFacebookGender = value
coroutine.resume(co)
end
if ScriptManager:showFacebookDialog(text, waitForLoginHandler) then
useFacebookGender = true
else
coroutine.yield()
end
return useFacebookGender
end
function tutorialGetFacebookGender()
return ScriptManager:getFacebookGender()
end
function tutorialSetTutorialCcb(image)
ScriptManager:setTutorialCcb(image)
end
function tutorialMarkSeenTutorialCcb()
ScriptManager:markSeenTutorialCcb()
end
function tutorialWaitForTap(co)
showFullscreenImage("", co) -- just show an empty screen
end
function tutorialShowConfirmCharacterDialog(co)
local confirmCharacter = true
local function waitForLoginHandler(value)
confirmCharacter = value
coroutine.resume(co)
end
ScriptManager:showConfirmCharacterDialog(waitForLoginHandler)
coroutine.yield()
return confirmCharacter
end
function tutorialIsStateInStack(stateName)
return ScriptManager:isStateInStack(stateName)
end
function tutorialIsQuestFinished(questId)
return ScriptManager:isQuestFinished(questId)
end
function debugSetPlayerLevels(xpLevel, numCoins, numStars, numHearts)
return ScriptManager:setPlayerLevels(xpLevel, numCoins, numStars, numHearts)
end
function debugAddBuilding(type, level, skipConstruction)
return ScriptManager:addBuilding(type, level, skipConstruction)
end
function debugAddCharacter(type, gender, name, referenceName)
return ScriptManager:addCharacter(type, gender, name, referenceName)
end
function debugAddEnrolledCharacter(type, gender, name, referenceName)
return ScriptManager:addEnrolledCharacter(type, gender, name, referenceName)
end
function debugPassQuest(questId)
return ScriptManager:passQuest(questId)
end
function debugMeetQuestRequirements(questId)
return ScriptManager:meetQuestRequirements(questId)
end
function debugChangeYouHair(hairName)
return ScriptManager:changeYouHair(hairName)
end
function checkEnvironment(arr)
if getArgument("test") then
return
end
if not getArgument("scene") then
error("Missing 'scene' property")
end
for i, property in ipairs(arr) do
if not getArgument(property) then
print("Missing", property)
error("Missing property")
end
end
end
function testTestSceneParam(scene)
local test = getArgument("test")
-- print("Getting test", test)
if test then
local testSequence = _G[test]
if testSequence then
setArgument("test_result", 1);
else
setArgument("test", 0);
print("UNKNOWN TEST SCENE", test, getArgument("test_file"))
-- error("Unknown test scene")
end
else
print("UNKNOWN SCENE", scene)
error("Unknown scene")
end
end
function runSequence(sequence)
co = coroutine.create(
function ()
ScriptManager:setRunningScript(true)
sequence(co)
ScriptManager:setRunningScript(false)
end)
coroutine.resume(co)
end
function runScene(sceneTable)
runOpt()
end
function runOpt()
local scene = getArgument("scene")
local sequence = _G[scene]
if sequence then
runSequence(sequence)
return true
else
-- fallback to "test" argument
testTestSceneParam(scene)
end
return false
end
function runSceneWithTelemetryEvent()
if runOpt() then
local scene = getArgument("scene")
ScriptManager:notifyTutorialTelemetryScript(scene)
end
end
