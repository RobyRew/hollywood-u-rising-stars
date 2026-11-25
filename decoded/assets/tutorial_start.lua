require "hss"
function helper_add_building_move_protip(title)
hss.tutorialAddProTipWithCondition(title, "Tap on Cancel or Done",
hss.TutorialProTipLocationTypes.TOP_RIGHT,
hss.TutorialProTipConditionTypes.IN_BUILDING_MOVE)
end
function setup_open_quest_log_scene_15()
hss.tutorialAddArrow(hss.TutorialArrowTypes.QUEST_BUTTON_ALWAYS)
hss.tutorialAddProTip("Check out your Quest Log.", "Tap on the Quest Log.",
hss.TutorialProTipLocationTypes.TOP_RIGHT)
hss.tutorialAddScriptTrigger("OpenQuestLog", "tutorial_15_open_quest_log",
hss.TutorialTriggerTypes.OPEN_QUEST_LOG, true)
end
function helper_set_tap_constructed_building_protip_sequence(title, waitText, collectionText, rushText)
hss.tutorialAddProTip(title, waitText, hss.TutorialProTipLocationTypes.TOP_RIGHT)
hss.tutorialAddProTipWithCondition(title,
rushText, -- "Tap on the rush button"
hss.TutorialProTipLocationTypes.TOP_RIGHT,
hss.TutorialProTipConditionTypes.IN_BUILDING_HUD_WAITING_ON_CONSTRUCTION)
hss.tutorialAddProTipWithCondition(title,
collectionText, -- "Tap the building to finish construction",
hss.TutorialProTipLocationTypes.TOP_RIGHT,
hss.TutorialProTipConditionTypes.BUILDING_DONE_CONSTRUCTION)
hss.tutorialAddProTipWithCondition(title,
rushText, -- "Tap on the rush button" - also on rush dialog
hss.TutorialProTipLocationTypes.TOP_RIGHT,
hss.TutorialProTipConditionTypes.IN_RUSH_DIALOG)
helper_add_building_move_protip(title)
end
function helper_set_store_protip_sequence_default(title)
hss.tutorialAddProTip(title, "Tap on the Store Button.",
hss.TutorialProTipLocationTypes.TOP_RIGHT)
hss.tutorialAddProTipWithCondition(title,
"Deselect the building by tapping on the grass.",
hss.TutorialProTipLocationTypes.TOP_RIGHT,
hss.TutorialProTipConditionTypes.IN_BUILDING_HUD)
hss.tutorialAddProTipWithCondition(title,
"Select where you want to put the building down.",
hss.TutorialProTipLocationTypes.TOP_RIGHT,
hss.TutorialProTipConditionTypes.BUILDING_PLACEMENT)
helper_add_building_move_protip(title)
end
function helper_set_do_gig_protip_sequence(title, defaultText, deselectText, selectYourselfText, rushText,
collectText)
hss.tutorialAddProTip(title, defaultText, hss.TutorialProTipLocationTypes.TOP_RIGHT)
hss.tutorialAddProTipWithCondition(title,
deselectText, -- "Deselect the building..."
hss.TutorialProTipLocationTypes.TOP_RIGHT,
hss.TutorialProTipConditionTypes.IN_NON_WORKSHOP_BUILDING_HUD)
hss.tutorialAddProTipWithCondition(title,
selectYourselfText, -- "Select yourself"
hss.TutorialProTipLocationTypes.TOP_LEFT,
hss.TutorialProTipConditionTypes.IN_WORKSHOP_ROSTER)
hss.tutorialAddProTipWithCondition(title,
rushText, -- "Tap on the Rush button."
hss.TutorialProTipLocationTypes.TOP_RIGHT,
hss.TutorialProTipConditionTypes.IN_WORKSHOP_HUD_RUSHABLE)
hss.tutorialAddProTipWithCondition(title,
collectText, -- "Tap on the Workshop to collect"
hss.TutorialProTipLocationTypes.TOP_RIGHT,
hss.TutorialProTipConditionTypes.WORKSHOP_COLLECTABLE)
helper_add_building_move_protip(title)
end
function helper_reset(showDisabledCharacterStore, showQuestButton, showClothingTabs)
hss.tutorialResetEverything()
hss.tutorialRemoveAllScriptTriggers()
hss.tutorialAddArrow(hss.TutorialArrowTypes.BUILDING_COLLECTABLE)
hss.tutorialDisable(hss.TutorialEnableTypes.BUILDING_STORE)
hss.tutorialDisable(hss.TutorialEnableTypes.SELL_BUILDING_HUD_BUTTON)
if showDisabledCharacterStore then
hss.tutorialDisable(hss.TutorialEnableTypes.CHARACTER_STORE)
else
hss.tutorialHide(hss.TutorialVisibleTypes.CHARACTER_STORE)
end
hss.tutorialHide(hss.TutorialVisibleTypes.CURRENCY_STORE)
hss.tutorialHide(hss.TutorialVisibleTypes.DECORATION_STORE)
hss.tutorialDisable(hss.TutorialEnableTypes.CHARACTER_PROFILE_NON_STUDY_BUTTONS)
hss.tutorialDisable(hss.TutorialEnableTypes.CHARACTER_PROFILE_STUDY_BUTTON_FIRST_CLASSMATE)
hss.tutorialDisable(hss.TutorialEnableTypes.CHARACTER_PROFILE_STUDY_BUTTON_YOU)
hss.tutorialDisable(hss.TutorialEnableTypes.CHARACTER_HANGOUT_PLACEMENT_CANCEL_BUTTON)
hss.tutorialDisable(hss.TutorialEnableTypes.CHARACTER_PROFILE_CLOSET_BUTTON)
hss.tutorialDisable(hss.TutorialEnableTypes.WORKSHOP_ITEM_BUY_BUTTON)
hss.tutorialDisable(hss.TutorialEnableTypes.CHARACTER_PROFILE_STUDY_BUTTON)
hss.tutorialDisable(hss.TutorialEnableTypes.CLOSET_TAB)
hss.tutorialDisable(hss.TutorialEnableTypes.SHOP_TAB)
hss.tutorialDisable(hss.TutorialEnableTypes.CLOSET_CLOTHING_1)
hss.tutorialDisable(hss.TutorialEnableTypes.CLOSET_CLOTHING_2)
hss.tutorialRemoveAllScriptTriggers()
hss.tutorialMarkStoreItem(hss.TutorialStoreItemTypes.ALL_DISABLED)
if not showQuestButton then
hss.tutorialHide(hss.TutorialVisibleTypes.QUEST_BUTTON)
end
hss.tutorialHide(hss.TutorialVisibleTypes.SOCIAL_BUTTON)
hss.tutorialHide(hss.TutorialVisibleTypes.PLOT_INDICATORS)
if not showClothingTabs then
hss.tutorialHide(hss.TutorialVisibleTypes.CHARACTER_CLOTHING_TABS)
end
hss.tutorialEnableBuildTimes(true)
end
function helper_reset_starting()
helper_reset(false, false, false)
end
function helper_reset_show_character_store()
helper_reset(true, false, false)
end
function helper_reset_show_character_store_and_clothing()
helper_reset(true, false, true)
end
function helper_reset_starting_and_clothing()
helper_reset(false, false, true)
end
function helper_reset_show_character_store_and_quest_button()
helper_reset(true, true, true)
end
function helper_reset_unrestricted()
hss.tutorialResetEverything()
hss.tutorialRemoveAllScriptTriggers()
end
function helper_save(runningScene)
hss.tutorialSave(runningScene)
end
function setup_building_store_step(protipTitle)
if protipTitle then
helper_set_store_protip_sequence_default(protipTitle)
end
hss.tutorialEnable(hss.TutorialEnableTypes.BUILDING_STORE)
hss.tutorialAddArrow(hss.TutorialArrowTypes.MAIN_STORE_BUTTON)
hss.tutorialAddArrow(hss.TutorialArrowTypes.STORE_DETAILS_BUY_BUTTON)
hss.tutorialAddArrow(hss.TutorialArrowTypes.PLACEMENT_DONE_BUTTON)
hss.tutorialDisable(hss.TutorialEnableTypes.PLACEMENT_CANCEL_BUTTON)
end
function setup_character_store_step(protipTitle, protipText, untapBuildingText)
hss.tutorialAddProTip(protipTitle, protipText, hss.TutorialProTipLocationTypes.TOP_RIGHT)
hss.tutorialAddProTipWithCondition(protipTitle, untapBuildingText,
hss.TutorialProTipLocationTypes.TOP_RIGHT,
hss.TutorialProTipConditionTypes.IN_BUILDING_HUD)
helper_add_building_move_protip(protipTitle)
hss.tutorialShow(hss.TutorialVisibleTypes.CHARACTER_STORE, false)
hss.tutorialEnable(hss.TutorialEnableTypes.CHARACTER_STORE)
hss.tutorialDisable(hss.TutorialEnableTypes.BUILDING_STORE)
hss.tutorialAddArrow(hss.TutorialArrowTypes.MAIN_STORE_BUTTON)
hss.tutorialAddArrow(hss.TutorialArrowTypes.STORE_DETAILS_BUY_BUTTON)
end
function helper_setup_admit_you(co)
hss.tutorialAddProTip("Join the University!", "Tap on the Admissions Office!",
hss.TutorialProTipLocationTypes.TOP_RIGHT)
hss.tutorialAddProTipWithCondition("Join the University!",
"Deselect the building by tapping on the grass.",
hss.TutorialProTipLocationTypes.TOP_RIGHT,
hss.TutorialProTipConditionTypes.IN_BUILDING_HUD)
hss.tutorialAddProTipWithCondition("Join the University!",
"Tap on 'Recruit'.",
hss.TutorialProTipLocationTypes.TOP_RIGHT,
hss.TutorialProTipConditionTypes.IN_ADMISSIONS_HUD)
helper_add_building_move_protip("Join the University!")
hss.tutorialAddBuildingArrow(hss.TutorialBuildingTypes.ADMISSIONS, 0)
hss.tutorialAddArrow(hss.TutorialArrowTypes.ADMIT_CLASSMATE_BUTTON)
end
function helper_setup_admit_classmate_protips_and_arrows()
hss.tutorialAddProTip("Recruit your Friend", "Tap on the Admissions Office.",
hss.TutorialProTipLocationTypes.TOP_RIGHT)
hss.tutorialAddProTipWithCondition("Recruit your Friend", "Tap on 'Recruit'.",
hss.TutorialProTipLocationTypes.TOP_RIGHT,
hss.TutorialProTipConditionTypes.IN_ADMISSIONS_HUD)
hss.tutorialAddProTipWithCondition("Recruit your Friend", "Wait for it... or tap on 'Recruit'.",
hss.TutorialProTipLocationTypes.TOP_RIGHT,
hss.TutorialProTipConditionTypes.IN_ADMISSIONS_HUD_WAITING_ON_ADMISSION)
hss.tutorialAddProTipWithCondition("Recruit your Friend", "Put your new Friend in the right Dorm!",
hss.TutorialProTipLocationTypes.TOP_RIGHT,
hss.TutorialProTipConditionTypes.IN_CHARACTER_PLACEMENT)
helper_add_building_move_protip("Recruit your Friend")
hss.tutorialAddBuildingArrow(hss.TutorialBuildingTypes.ADMISSIONS, 0)
hss.tutorialAddArrow(hss.TutorialArrowTypes.ADMIT_CLASSMATE_BUTTON)
hss.tutorialAddArrow(hss.TutorialArrowTypes.RUSH_BUILDING_BUTTON)
hss.tutorialAddArrow(hss.TutorialArrowTypes.RUSH_BUTTON)
end
function helper_show_link_facebook_dialog_scene(co)
hss.emitTutorialCheckpoint("02 Login")
hss.tutorialShowFacebookDialog("Sign into Facebook to put your real-life friends in your Entourage. You'll get to visit their campuses, and you'll also receive special rewards!\nOh, and we HATE when apps post without permission, so we'll never do that.", co)
if hss.getBoolConfigVariable("isPromoStartingRewardActive", false) then
hss.grantPromoReward()
local message = hss.getStringConfigVariable("promoStartingMessage", "You have a special reward for playing!")
hss.showEventDialog(co, message)
end
end
function helper_customize_character_and_schedule_scene_2(co)
hss.emitTutorialCheckpoint("03 Girl Boy")
local pressedBack = true
local function waitForCharacterCustomization(value)
pressedBack = value
coroutine.resume(co)
end
while pressedBack do
local genderChoice = hss.showTextMenu(co, "Are you a girl or a guy?", "Girl|Guy")
if genderChoice == 0 then
genderType = hss.Gender.FEMALE
else
genderType = hss.Gender.MALE
end
local characterType = hss.tutorialCharacterSelection(co, genderType)
hss.tutorialAddYouCharacter(characterType, genderType, "")
if not hss.hasGameProperty("tutorial", "seen_fb_link_dialog") then -- hwu specific change
helper_show_link_facebook_dialog_scene(co)
hss.setGameProperty("tutorial", "seen_fb_link_dialog", 1)
end
hss.tutorialRemoveScriptTrigger("ConfirmAndPrepareAdmission") -- make sure no duplicates
hss.tutorialAddScriptTrigger("ConfirmAndPrepareAdmission", "tutorial_2_confirm_and_prepare_admission",
hss.TutorialTriggerTypes.CLOSE_CHARACTER_PERSONALIZATION, true)
hss.tutorialGoToState(hss.TutorialGoToTypes.YOU_CUSTOMIZATION, false, waitForCharacterCustomization)
coroutine.yield()
end
end
function tutorial_start(co)
tutorial_0_intro_sequence(co)
end
function tutorial_0_intro_sequence(co)
helper_reset_starting()
helper_save("tutorial_start") -- set as start, because resuming on this sequence will not run properly otherwise
-- hss.waitForTap("tutorial_first_screen.png", co) -- blocks
hss.tutorialWaitForTap(co)
hss.tutorialSetTutorialCcb("tutorial_backdrop.ccb")
tutorial_1_select_gender_and_character_type(co)
end
function tutorial_1_select_gender_and_character_type(co)
helper_reset_starting()
-- helper_save("tutorial_1_select_gender_and_character_type") can't save here
helper_customize_character_and_schedule_scene_2(co)
end
function tutorial_2_confirm_and_prepare_admission(co)
helper_reset_starting()
-- helper_save("tutorial_2_confirm_and_prepare_admission")
-- hss.emitTutorialCheckpoint("04 Confirm Char")
if hss.tutorialShowConfirmCharacterDialog(co) == false then
helper_customize_character_and_schedule_scene_2(co)
return
end
hss.tutorialMarkSeenTutorialCcb()
hss.dlgA(co,hss.U,"Hello?",4)
hss.dlgA(co,hss.A,"Hey... I recognize that lost puppy look! You must be a new student here at Hollywood U! My name's Addison...",1)
hss.dlgA(co,hss.A,"I remember my first day... I got so lost I wandered onto a movie set and ended up making out with Chris Pratt!",1)
hss.dlgA(co,hss.U,"Seriously?",4)
hss.dlgA(co,hss.A,"Well... Chris Pratt's stunt double. But close enough, right? Now follow me to the Admissions Office!",1)
hss.emitTutorialCheckpoint("05 Place You")
helper_setup_admit_you(co)
hss.tutorialPlaceFakeYouIntoAdmissionsBuilding()
hss.tutorialPanToBuilding(co, "ADMISSIONS", 0)
hss.tutorialGotoMapOnScriptExit()
hss.tutorialAddScriptTrigger("AdmitYou", "tutorial_3_finish_admit_you",
hss.TutorialTriggerTypes.TAP_ADMIT_CHARACTER_BUTTON, true)
end
function tutorial_3_finish_admit_you(co)
helper_reset_starting()
-- helper_save("tutorial_3_finish_admit_you") -- DON'T SAVE - expects to have admissions building in stack
hss.emitTutorialCheckpoint("06 First Friend")
hss.dlgA(co,hss.A,"Now that you're officially a student, you'll need a Dorm to stay in! I'm a Fashionista, so I'm in the ~Fashionista Dorm!~ How about you?",1)
local characterType = hss.getCharacterType("YOU")
if characterType == hss.CharacterType.FASHIONISTA then
hss.dlgA(co,hss.U,"I'm studying fashion too!",1)
hss.dlgA(co,hss.A,"Shut up! That means we're going to be spending so much time together!",5)
elseif characterType == hss.CharacterType.DIRECTOR then
hss.dlgA(co,hss.U,"I want to be a Director! I'm gonna make the next 'Star Wars'. Also the next 'Mean Girls'. I have a lot of ideas.",1)
hss.dlg(co,hss.A,"Since you're a budding ~Director~, you'll stay in the ~Director Dorm~.")
elseif characterType == hss.CharacterType.MOVIE_STAR then
hss.dlgA(co,hss.U,"I'm here to study acting! I want to win an Oscar! Or at least a Golden Globe.",1)
hss.dlg(co,hss.A,"Since you're going to be a ~Movie Star~, you'll stay in the ~Movie Star Dorm~.")
else
hss.error("Type not understood")
end
hss.tutorialAddProTip("Join the University!", "Tap the Dorm matching your type!",
hss.TutorialProTipLocationTypes.TOP_RIGHT);
helper_add_building_move_protip("Join the University!")
hss.tutorialAddScriptTrigger("AdmitYou", "tutorial_4_finish_place_you",
hss.TutorialTriggerTypes.PLACE_CLASSMATE_IN_DORM, true)
hss.tutorialGoToState(hss.TutorialGoToTypes.CHARACTER_DORM_PLACEMENT, false, nil)
end
function tutorial_4_finish_place_you(co)
helper_reset_starting()
helper_save("tutorial_4_finish_place_you")
hss.tutorialSwapFakeYouWithRealYou()
hss.dlgA(co,hss.U,"Whoa! I can't believe I get to live here!",4)
hss.dlgA(co,hss.A,"Right? The dorms are super nice, the location is insane, and the people are so awesome!",1)
hss.dlgA(co,hss.A,"Oh, that reminds me... you should start making new friends! I'll introduce you to a cool guy I know!",1)
hss.evt(co,"Part of building your rep at Hollywood U is building your Entourage! You need Friends to help you climb to the top!", "")
setup_character_store_step("Add a friend to your Entourage!",
"Tap on the Store Button",
"Deselect the building by tapping on the grass.")
hss.tutorialMarkStoreItem(hss.TutorialStoreItemTypes.CHARACTER_DIRECTOR_MALE)
hss.tutorialGotoMapOnScriptExit()
hss.tutorialAddScriptTrigger("AdmitFirstClassmate", "tutorial_4a_admit_first_classmate",
hss.TutorialTriggerTypes.START_ADMISSION, true)
end
function tutorial_4a_admit_first_classmate(co)
helper_reset_show_character_store()
helper_save("tutorial_4a_admit_first_classmate")
helper_setup_admit_classmate_protips_and_arrows()
hss.evt(co,"Every person in your Entourage needs a spot in a Dorm. People in your Entourage will also earn cash for you! Tap on the Dorms regularly to collect it.", "")
hss.evt(co,"New members of your Entourage take some time to enroll. Check back soon to admit them!", "")
hss.tutorialAddScriptTrigger("CustomizeFirstClassmate", "tutorial_4b_customize_first_classmate",
hss.TutorialTriggerTypes.PLACE_CLASSMATE_IN_DORM, true)
end
function tutorial_4b_customize_first_classmate(co)
helper_reset_show_character_store()
-- helper_save("tutorial_4b_customize_first_classmate") -- DON'T SAVE - not in character profile
hss.evt(co,"You can link your Entourage to real life friends! Linked friends gain cash faster and give you other benefits!", "")
hss.tutorialAddScriptTrigger("DressYourself", "tutorial_4c_dress_yourself",
hss.TutorialTriggerTypes.CLOSE_CHARACTER_PERSONALIZATION, true)
hss.tutorialGoToState(hss.TutorialGoToTypes.CLASSMATE_CUSTOMIZATION, true, nil)
end
function tutorial_4c_dress_yourself(co)
helper_reset_show_character_store_and_clothing()
helper_save("tutorial_4c_dress_yourself")
hss.emitTutorialCheckpoint("07 Dress Yourself")
local characterType = hss.getCharacterType("YOU")
hss.dlg(co,hss.A,"{FIRST_CLASSMATE_NAME}, {YOU}. {YOU}, {FIRST_CLASSMATE_NAME}.")
hss.dlgA(co,"FIRST_CLASSMATE","Great to meet you, {YOU}! I can already tell I'm gonna love working with you!",1)
hss.dlgA(co,hss.A,"I think this is the beginning of a beautiful friendship... and the start of an awesome entourage!",1)
hss.dlgA(co,hss.U,"Yeah! We're going to take over this town!",1)
hss.dlgA(co,"FIRST_CLASSMATE","Most of the A-list got their start at Hollywood U.",1)
hss.dlg(co,hss.A,"Exactly. It's pricey to go here, but this place is totally worth the tuition.")
hss.dlg(co,hss.U,"Huh? Pricey? I didn't pay any tuition... I just got an acceptance letter.")
hss.dlgA(co,hss.A,"Someone must've paid your tuition for you!",4)
hss.dlgA(co,"FIRST_CLASSMATE","A mysterious benefactor? Scandalous!",4)
hss.dlgA(co,hss.A,"And hey, if you didn't blow any money on tuition, you must have cash to burn! Shopping spree!",1)
hss.tutorialAddArrow(hss.TutorialArrowTypes.YOU_CHARACTER)
hss.tutorialAddArrow(hss.TutorialArrowTypes.CLOTHING_BUTTON_AND_ITEMS)
hss.tutorialEnable(hss.TutorialEnableTypes.CHARACTER_PROFILE_CLOSET_BUTTON)
hss.tutorialEnable(hss.TutorialEnableTypes.CLOSET_CLOTHING_1)
hss.tutorialEnable(hss.TutorialEnableTypes.CLOSET_TAB)
hss.tutorialEnable(hss.TutorialEnableTypes.SHOP_TAB)
hss.tutorialAddProTip("Dress yourself!", "Tap on your character!", hss.TutorialProTipLocationTypes.TOP_RIGHT)
helper_add_building_move_protip("Dress yourself!")
hss.tutorialPanToCharacter(co, "YOU") -- blocking
hss.tutorialAddScriptTrigger("CloseYouProfileScreen", "tutorial_5_close_you_profile_screen",
hss.TutorialTriggerTypes.CHANGED_OUTFIT, false)
end
function tutorial_5_close_you_profile_screen(co)
helper_reset_starting_and_clothing()
-- helper_save("tutorial_6_close_you_profile_screen") -- DON'T SAVE - a non UI screen
hss.tutorialAddArrow(hss.TutorialArrowTypes.PROFILE_DIALOG_CLOSE_BUTTON)
hss.tutorialAddScriptTrigger("GigSetup", "tutorial_6_gig_setup",
hss.TutorialTriggerTypes.CLOSE_CHARACTER_PROFILE, true)
end
function tutorial_6_gig_setup(co)
helper_reset_starting_and_clothing()
helper_save("tutorial_6_gig_setup")
hss.dlgA(co,hss.A,"Nice! You're looking ~very~ Hollywood!",1)
hss.dlgA(co,hss.U,"I've got to look my best... I'm on a mission!",1)
local choice = hss.showTextMenu(co, "What do you say?",
"I want to be ridiculously famous.|I want to be recognized as a true artist.|I want to get my own TV show and marry a rapper.")
hss.dlgA(co,hss.A,"I'm pretty sure you'll have to work your way up to that...",4)
hss.dlgA(co,hss.A,"In fact... I think it's time for you to head to your first Workshop!",1)
local characterType = hss.getCharacterType("YOU")
local gender = hss.getCharacterGender("YOU")
if characterType == hss.CharacterType.MOVIE_STAR then
if gender == hss.Gender.MALE then
hss.dlg(co,hss.A,"It's nothing big, but hey, even Brad Pitt started out as a giant chicken at an El Pollo Loco...")
else
hss.dlg(co,hss.A,"It's nothing big, but hey, even J-Law once played a mascot on Monk...")
end
elseif characterType == hss.CharacterType.FASHIONISTA then
hss.dlg(co,hss.A,"It's nothing big, but hey, even Coco Chanel got started sewing robes for nuns...")
elseif characterType == hss.CharacterType.DIRECTOR then
hss.dlg(co,hss.A,"It's nothing big, but hey, even Guillermo Del Toro started out making ads for Alka-Seltzer...")
end
hss.dlgA(co,"FIRST_CLASSMATE","The point is... you have to start small. So let's get you working! I'll show you the Workshop.",1)
hss.emitTutorialCheckpoint("08 Workshop")
setup_building_store_step("Get a Workshop!")
hss.tutorialMarkStoreItem(hss.TutorialStoreItemTypes.WORKSHOP)
hss.tutorialAddScriptTrigger("BuildWorkshop", "tutorial_7_finished_workshop",
hss.TutorialTriggerTypes.BUY_AND_PLACE_BUILDING, true)
end
function tutorial_7_finished_workshop(co)
helper_reset_starting_and_clothing()
helper_save("tutorial_7_finished_workshop")
hss.evt(co,"Some buildings take a while to build! Rush them with Diamonds to finish sooner!", "")
helper_set_tap_constructed_building_protip_sequence("Get a Workshop!",
"Tap on the Workshop.",
"Tap on the Workshop to finish construction.",
"Tap on the Rush Button.")
hss.tutorialAddArrow(hss.TutorialArrowTypes.RUSH_BUILDING_BUTTON)
hss.tutorialAddArrow(hss.TutorialArrowTypes.RUSH_BUTTON)
hss.tutorialAddScriptTrigger("FinishAdmissions", "tutorial_8_level_up_you",
hss.TutorialTriggerTypes.FINISH_CONSTRUCTION, true)
hss.tutorialGotoMapOnScriptExit()
end
function tutorial_8_level_up_you(co)
helper_reset_starting_and_clothing()
helper_save("tutorial_8_level_up_you")
hss.tutorialEnable(hss.TutorialEnableTypes.WORKSHOP_ITEM_BUY_BUTTON)
hss.evt(co,"You now have a Workshop! This will help you level up your characters!", "")
hss.tutorialAddBuildingArrow(hss.TutorialBuildingTypes.WORKSHOP, 0)
hss.tutorialAddArrow(hss.TutorialArrowTypes.RUSH_BUTTON)
hss.tutorialAddArrow(hss.TutorialArrowTypes.WORKSHOP_GIG_BUTTON)
hss.tutorialAddArrow(hss.TutorialArrowTypes.WORKSHOP_RUSH_GIG_BUTTON)
hss.tutorialAddArrow(hss.TutorialArrowTypes.WORKSHOP_COLLECT_BUTTON)
hss.tutorialAddArrow(hss.TutorialArrowTypes.WORKSHOP_ROSTER_YOU)
hss.tutorialAddArrow(hss.TutorialArrowTypes.PROFILE_DIALOG_CLOSE_BUTTON)
helper_set_do_gig_protip_sequence("Level up!",
"Tap on the Workshop.", -- default
"Deselect the building by tapping on the grass", -- deselect
"Select yourself.", -- select yourself
"Tap on the Rush Button.", -- rush
"Tap on the Workshop to collect!") -- collect text
hss.tutorialAddScriptTrigger("CollectWorkshopWait", "tutorial_9_collect_workshop_wait",
hss.TutorialTriggerTypes.COLLECT_WORKSHOP, false)
end
function tutorial_9_collect_workshop_wait(co)
helper_reset_show_character_store_and_clothing()
hss.tutorialAddScriptTrigger("CollectWorkshop", "tutorial_10_collect_workshop",
hss.TutorialTriggerTypes.WAIT_ONE_SECOND)
end
function tutorial_10_collect_workshop(co)
helper_reset_show_character_store_and_clothing()
helper_save("tutorial_10_collect_workshop")
hss.evt(co,"Great work! Keep visiting the Workshop to level up characters!", "")
hss.tutorialAddArrow(hss.TutorialArrowTypes.PROFILE_DIALOG_CLOSE_BUTTON)
if hss.tutorialIsStateInStack("APP_STATE_CHARACTER_PROFILE_MODAL_DIALOG") then
hss.tutorialAddScriptTrigger("CollectWorkshop", "tutorial_11_buy_classmate",
hss.TutorialTriggerTypes.CLOSE_CHARACTER_PROFILE, true)
else
hss.tutorialAddScriptTrigger("CollectWorkshop", "tutorial_11_buy_classmate",
hss.TutorialTriggerTypes.WAIT_A_TICK, true)
end
end
function tutorial_11_buy_classmate(co)
helper_reset_show_character_store_and_clothing()
helper_save("tutorial_11_buy_classmate")
hss.emitTutorialCheckpoint("09 Second Friend")
hss.dlgA(co,hss.A,"Great work in there! You're looking more confident already!",1)
hss.dlgA(co,"FIRST_CLASSMATE","And that means it's time to celebrate!",1)
hss.dlg(co,hss.A,"I know this amazing club, ~Blitz!~ It's--")
hss.evt(co,"A shrill laugh cuts Addison off. A pretty girl strolls over, flanked by a huge entourage.", "")
hss.dlgA(co,hss.B,"Ohhhh, you think ~you~ could get into Blitz tonight?",3)
hss.dlg(co,"JENNI","That's adorbs. ~Totes~ adorbs.")
hss.dlgA(co,"SHAE","After your little scandal, Addison, I doubt you could get into a Starbucks!",3)
hss.dlgA(co,"LANCE","Burrrrrn!",1)
hss.dlgA(co,hss.A,"I'll have you know I go to Starbucks all the time!",2)
hss.evt(co,"Bianca turns and catches you staring at her!", "")
hss.dlgA(co,hss.B,"And you! What's your problem?!",3)
local choice = hss.showTextMenu(co, "What do you say?", "I've got 99 problems. You ain't one. Figure it out.|Let's all just calm down here.|I just... I just want to kiss you.")
if choice == 0 then
hss.dlgA(co,hss.B,"Uh, I'm not going to do your logic puzzle... NERD!",3)
elseif choice == 1 then
hss.dlgA(co,hss.B,"Who are you, my therapist?",3)
else
hss.dlgA(co,hss.B,"Ewww. I'd rather kiss a valet.",4)
end
hss.dlgA(co,hss.B,"A little advice, whoever you are. You'll never go anywhere in this town with just Addi and some no-name.",3)
hss.dlgA(co,"FIRST_CLASSMATE","Hey...",2)
hss.dlgA(co,hss.B,"A real star has a ~real~ entourage. Bye, losers!",1)
hss.evt(co,"Bianca and her friends laugh as they walk off.", "")
hss.dlgA(co,hss.U,"Okay, who was ~that?~",3)
hss.dlgA(co,hss.A,"Just a spoiled heiress on a power trip. Bianca's dad is Anders Stone, head of Stone Pictures. He gets her whatever she wants... the best roles, designer labels, anything and everything...",2)
hss.dlgA(co,hss.U,"Whatever her bank account says, she's not better than us! I say we go to that club and prove we ~can~ get in!",3)
hss.dlgA(co,hss.A,"You know what... you're right!",3)
hss.dlgA(co,"FIRST_CLASSMATE","Her family may own this town... but they don't own us!",3)
hss.dlg(co,hss.A,"Bianca did make one good point, though. If we want to show up looking like VIPs, we're going to need to keep building your entourage!")
setup_character_store_step("Add a Friend to your Entourage!",
"Tap on the Store Button",
"Deselect the building by tapping on the grass.")
local characterType = hss.getCharacterType("YOU")
if characterType == hss.CharacterType.MOVIE_STAR then
hss.tutorialMarkStoreItem(hss.TutorialStoreItemTypes.NOT_CHARACTER_MOVIE_STAR)
elseif characterType == hss.CharacterType.FASHIONISTA then
hss.tutorialMarkStoreItem(hss.TutorialStoreItemTypes.NOT_CHARACTER_FASHIONISTA)
elseif characterType == hss.CharacterType.DIRECTOR then
hss.tutorialMarkStoreItem(hss.TutorialStoreItemTypes.NOT_CHARACTER_DIRECTOR)
else
hss.error("Type not understood")
end
hss.tutorialGotoMapOnScriptExit()
hss.tutorialAddScriptTrigger("AdmitClassmate", "tutorial_12_admit_classmate",
hss.TutorialTriggerTypes.START_ADMISSION, true)
end
function tutorial_12_admit_classmate(co)
helper_reset_show_character_store_and_clothing()
-- helper_save("tutorial_12_admit_classmate") -- DON'T SAVE - need to place charcter
helper_setup_admit_classmate_protips_and_arrows()
hss.evt(co,"New Friends in your Entourage take some time to enroll. Check back soon to recruit them!", "")
hss.tutorialAddScriptTrigger("CustomizeClassmate", "tutorial_13_customize_classmate",
hss.TutorialTriggerTypes.PLACE_CLASSMATE_IN_DORM, false)
end
function tutorial_13_customize_classmate(co)
helper_reset_show_character_store_and_clothing()
-- helper_save("tutorial_13_customize_classmate")
hss.tutorialAddScriptTrigger("LearnAboutQuest", "tutorial_14_learn_about_quest",
hss.TutorialTriggerTypes.CLOSE_CHARACTER_PERSONALIZATION, true)
end
function tutorial_14_learn_about_quest(co)
helper_reset_show_character_store_and_quest_button()
helper_save("tutorial_14_learn_about_quest")
hss.emitTutorialCheckpoint("10 Quest 1")
hss.dlgA(co,hss.U,"Looks like we've got an entourage started! I think we're ready for Blitz!",1)
hss.evt(co,"Quests are now available! By completing Quests, you can earn cash, make new friends, and even recruit special new members to your Entourage!", "")
setup_open_quest_log_scene_15();
end
function tutorial_15_open_quest_log(co)
if hss.tutorialIsStateInStack("APP_STATE_QUESTS_QUEST_SELECTION_SCREEN") then
helper_reset_show_character_store_and_quest_button()
helper_save("tutorial_15_open_quest_log")
hss.evt(co,"To complete a Quest, you'll have to satisfy the Quest Requirements.", "")
hss.tutorialAddProTip("Complete the Quest!", "Tap on the Quest Log.",
hss.TutorialProTipLocationTypes.TOP_RIGHT)
helper_add_building_move_protip("Complete the Quest!")
hss.tutorialAddArrow(hss.TutorialArrowTypes.QUEST_BUTTON_ALWAYS)
hss.tutorialAddArrow(hss.TutorialArrowTypes.QUEST_START_BUTTON)
hss.tutorialAddScriptTrigger("StartSecondQuest", "tutorial_16_start_second_quest",
hss.TutorialTriggerTypes.QUEST_COMPLETE, true)
else
helper_reset_show_character_store_and_quest_button()
setup_open_quest_log_scene_15()
end
end
function tutorial_16_start_second_quest(co)
helper_reset_show_character_store_and_quest_button()
helper_save("tutorial_16_start_second_quest")
hss.emitTutorialCheckpoint("11 Quest 2")
hss.tutorialAddProTip("Check out the Quest Log!", "Tap on the Quest Log.",
hss.TutorialProTipLocationTypes.TOP_RIGHT)
hss.tutorialAddProTipWithCondition("Complete the Quest!", "Tap on the Quest Log.",
hss.TutorialProTipLocationTypes.TOP_RIGHT,
hss.TutorialProTipConditionTypes.QUEST_COLLECTABLE)
helper_add_building_move_protip("Complete the Quest!")
hss.tutorialAddArrow(hss.TutorialArrowTypes.QUEST_BUTTON_ALWAYS)
hss.tutorialAddArrow(hss.TutorialArrowTypes.QUEST_START_BUTTON)
hss.tutorialAddArrow(hss.TutorialArrowTypes.QUEST_REQUIREMENT_GO_BUTTON)
hss.tutorialAddArrow(hss.TutorialArrowTypes.CLOTHING_BUTTON_AND_ITEMS)
hss.tutorialEnable(hss.TutorialEnableTypes.CHARACTER_PROFILE_CLOSET_BUTTON)
hss.tutorialEnable(hss.TutorialEnableTypes.CLOSET_CLOTHING_2)
hss.tutorialEnable(hss.TutorialEnableTypes.CLOSET_TAB)
hss.tutorialEnable(hss.TutorialEnableTypes.SHOP_TAB)
if hss.tutorialIsStateInStack("APP_STATE_QUESTS_QUEST_SELECTION_SCREEN") then
hss.evt(co,"This Quest's requirements haven't been completed yet. Tap on the 'Go!' button.", "")
else
hss.evt(co,"This Quest's requirements haven't been completed yet. Open up the Quest Log to check them out.", "")
end
hss.tutorialAddScriptTrigger("CompleteSecondQuest", "tutorial_17_complete_second_quest",
hss.TutorialTriggerTypes.QUEST_COMPLETE, true)
end
function tutorial_17_complete_second_quest(co)
helper_reset_show_character_store_and_quest_button()
helper_save("tutorial_17_complete_second_quest")
hss.emitTutorialCheckpoint("13 Quest 3")
hss.evt(co,"Some quests may require you to send Friends out to do something. Select the Friends that fulfill the requirement.", "")
hss.tutorialAddProTip("Check out your Quest Log.", "Tap on the Quest Log",
hss.TutorialProTipLocationTypes.TOP_RIGHT)
helper_add_building_move_protip("Check out your Quest Log.")
hss.tutorialAddArrow(hss.TutorialArrowTypes.QUEST_BUTTON_ALWAYS)
hss.tutorialAddArrow(hss.TutorialArrowTypes.QUEST_START_BUTTON)
hss.tutorialAddArrow(hss.TutorialArrowTypes.RUSH_BUTTON)
hss.tutorialAddArrow(hss.TutorialArrowTypes.QUEST_SELECTABLE_CHARACTERS)
hss.tutorialAddArrow(hss.TutorialArrowTypes.QUEST_LOG_ACTIVE_REQUIREMENT_ITEMS)
hss.tutorialAddScriptTrigger("WaitActiveQuest", "tutorial_18_wait_active_quest",
hss.TutorialTriggerTypes.QUEST_SCRIPT_FINISHED, true)
end
function tutorial_18_wait_active_quest(co)
helper_reset_show_character_store_and_quest_button()
helper_save("tutorial_18_wait_active_quest")
hss.evt(co,"Some quests may take a while to complete. Make sure to check back when the time's done, or Rush to see what happens.", "")
hss.tutorialAddProTip("Check out your Quest Log.", "Tap on the Quest Log",
hss.TutorialProTipLocationTypes.TOP_RIGHT)
helper_add_building_move_protip("Check out your Quest Log.")
hss.tutorialAddArrow(hss.TutorialArrowTypes.QUEST_BUTTON_ALWAYS)
hss.tutorialAddArrow(hss.TutorialArrowTypes.QUEST_START_BUTTON)
hss.tutorialAddArrow(hss.TutorialArrowTypes.RUSH_BUTTON)
hss.tutorialAddScriptTrigger("FinalQuestComplete", "tutorial_20_end_tutorial",
hss.TutorialTriggerTypes.QUEST_COMPLETE, false)
end
--   helper_save("tutorial_19_active_quest_complete")
--   hss.tutorialAddScriptTrigger("EndTutorial", "tutorial_20_end_tutorial",
--   hss.tutorialAddScriptTrigger("EndTutorial", "tutorial_20_end_tutorial",
function tutorial_20_end_tutorial(co)
helper_reset_unrestricted();
hss.emitTutorialCheckpoint("14 End")
hss.tutorialStop()
end
function helper_warp(addYou, makeYouVisible, addWorkshop, skipConstruction, addDerpy, addChirpy)
hss.debugSetPlayerLevels(1, 6000000, 15000, 500000)
hss.debugAddCharacter("FASHIONISTA", "FEMALE", "Addison", "ADDISON")
if addYou then
hss.tutorialAddYouCharacter("FASHIONISTA", "MALE", "Clyde")
if makeYouVisible then
hss.tutorialPlaceInvisibleCharacterOntoMap("YOU") -- places you in dorm too
end
hss.setArgument("YOU", "Winston")
hss.tutorialMarkSeenTutorialCcb()
end
if addWorkshop then
hss.debugAddBuilding("WORKSHOP", 0, skipConstruction)
end
if addDerpy then
hss.debugAddCharacter("DIRECTOR", "MALE", "Derpy", "")
end
if addChirpy then
hss.debugAddCharacter("MOVIE_STAR", "FEMALE", "Chirpy", "")
end
end
function tutorial_warp_1(co)
helper_warp(false, false, false, false, false, false)
tutorial_1_select_gender_and_character_type(co)
end
function tutorial_warp_2(co)
helper_warp(true, false, false, false, false, false)
hss.setGameProperty("tutorial", "seen_fb_link_dialog", 1)
tutorial_2_confirm_and_prepare_admission(co)
end
function tutorial_warp_4(co)
helper_warp(true, true, false, false, false, false)
tutorial_4_finish_place_you(co)
end
function tutorial_warp_6(co)
helper_warp(true, true, false, false, true, false)
tutorial_6_gig_setup(co)
end
function tutorial_warp_7(co)
helper_warp(true, true, true, false, true, false)
tutorial_7_finished_workshop(co)
end
function tutorial_warp_11(co)
helper_warp(true, true, true, true, true, false)
tutorial_11_buy_classmate(co)
end
function tutorial_warp_14(co)
helper_warp(true, true, true, true, true, true)
tutorial_14_learn_about_quest(co)
end
function tutorial_warp_15(co)
helper_warp(true, true, true, true, true, true)
tutorial_15_open_quest_log(co)
end
function tutorial_warp_16(co)
helper_warp(true, true, true, true, true, true)
hss.debugPassQuest("tutorial_1")
tutorial_16_start_second_quest(co)
end
function tutorial_warp_19(co)
helper_warp(true, true, true, true, true, true)
hss.debugSetPlayerLevels(2, 90000, 100, 100)
hss.tutorialAddScriptTrigger("FinalQuestComplete", "tutorial_20_end_tutorial",
hss.TutorialTriggerTypes.QUEST_COMPLETE, false)
hss.debugPassQuest("tutorial_3") -- fires off trigger normally
end
hss.runOpt()
