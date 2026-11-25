require "hss"
function is_missing_type(type)
if (hss.getCharacterType("YOU") ~= type and hss.getCharacterType("FIRST_CLASSMATE") ~= type) then
return true
end
return false
end
function outro_tutorial_1(co)
hss.dlg(co,hss.A,"We've got to look glamorous if we're going to get into ~Blitz~...")
hss.dlg(co,hss.A,"What are you going to wear?")
hss.showQuestComplete(co)
end
function outro_tutorial_2(co)
hss.dlgA(co,hss.U,"How do I look?",1)
hss.dlgA(co,hss.A,"Stunning! You're ready to set the club on fire!",1)
hss.showQuestComplete(co)
hss.evt(co,"Suddenly, you hear someone banging loudly on the door to your dorm room!", "")
hss.dlgA(co,hss.A,"Ohmygosh! Are you expecting someone?",4)
hss.dlgA(co,hss.U,"No...",4)
hss.evt(co,"You start to go for the door.", "")
hss.dlgA(co,hss.A,"Wait! Be careful. Bianca's been known to pull pranks on people if they get on her bad side. You'd better take someone with you...",2)
end
function intro_tutorial_3(co)
hss.tutorialRemoveArrow(hss.TutorialArrowTypes.QUEST_START_BUTTON)
hss.evt(co,"{QUEST_CHAR_2_NAME} gently opens the door a crack and peeks out!", "")
hss.dlgA(co,hss.Q2,"Whoa!",4)
hss.dlgA(co,hss.U,"...who is it?",4)
end
function outro_tutorial_3(co)
hss.dlgA(co,hss.Q2,"No one's there now, but whoever it was left behind this fancy, sealed envelope. Maybe it's your first piece of fanmail?",4)
hss.dlgA(co,hss.U,"Or one of Bianca's pranks...",4)
hss.dlgA(co,"FIRST_CLASSMATE","Only one way to find out. Open it, {YOU}!",1)
hss.showQuestComplete(co)
hss.evt(co,"You break the wax seal on the envelope.", "")
hss.dlg(co,hss.U,"The letter says, '{YOU}, I'm sure you have many questions, but let me start by answering one... I am your benefactor. I have paid your tuition for this first year at Hollywood University.'")
if (hss.getCharacterReferenceNameByProperty("QUEST_CHAR_2") == "ADDISON") then
hss.dlgA(co,hss.A,"~Ooh~, mysterious! And old-fashioned. Who sends letters anymore?",4)
else
hss.dlgA(co,hss.Q2,"Mysterious!",4)
hss.dlg(co,hss.A,"And old-fashioned. Who sends letters anymore?")
end
hss.dlg(co,hss.U,"There's more... 'I have a vested interest in your future and in the future of Hollywood U. I ask that you help me build its prestige.'")
hss.dlg(co,hss.U,"'The things I ask you to do may not always make sense at the time. Trust that there's a bigger plan in play.'")
hss.dlgA(co,hss.Q2,"What does he want you to do?",4)
hss.dlg(co,hss.U,"Hmm... there's more. Let's see... it sounds like he ~or she~ wants us to go to an empty lot just off campus.")
hss.dlgA(co,"FIRST_CLASSMATE","Nothing sketchy about that. Let's go investigate!",1)
hss.dlgA(co,hss.A,"Right now? But what about going to Blitz!",4)
hss.dlg(co,hss.U,"Can we do both?")
hss.evt(co,"You now have ~multiple quests~ available in your log! More than one quest can be completed at the same time.", "")
end
hss.runOpt()
