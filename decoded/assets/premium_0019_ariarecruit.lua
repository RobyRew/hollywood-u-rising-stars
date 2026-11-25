require "hss"
function outro_ariarecruit_1(co)
hss.setGameProperty("ARIA_ADDED", "ARIA_FLAG", "TRUE");
hss.evt(co,"Aria pulls you into a tight hug as the last of the guests leave the yacht and the sun sets over the ocean.", "")
hss.dlgA(co,"ARIA","Eeee! I'm so excited to come to Hollywood U, {YOU}! Now we can party ~all the time!~",5)
hss.dlgA(co,hss.U,"It's not ~all~ partying... there's a certain amount of, you know, studying involved...",1)
hss.dlgA(co,"ARIA","Details, details. Oh! Before I forget...",1)
hss.evt(co,"Aria discreetly hands you a small bag.", "")
hss.dlgA(co,"ARIA","Just a little something extra for my new friend. Don't tell anyone!",1)
hss.evt(co,"You open it...", "")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward0") == nil then
hss.setQuestProperty("reward0",1)
hss.dlgA(co,hss.U,"Ohmygosh!",4,hss.REWARD_RINGS,5)
else
hss.dlgA(co,hss.U,"Ohmygosh!",4)
end
hss.dlgA(co,"ARIA","Hee! You ever need anything, I'm your girl!",1)
hss.showQuestComplete(co)
hss.dlgA(co,"ARIA","We ~have~ to do this again sometime! But you know, without the drama and the whole nearly-dying thing!",1)
hss.dlgA(co,hss.U,"For sure! Hashtag... whenever.",1)
hss.evt(co,"With that, Aria brings you in for a tight farewell hug!", "")
hss.evt(co,"Thanks for playing this VIP Quest and adding Aria to your Entourage!", "")
end
hss.checkEnvironment({"YOU"})
hss.runOpt()
