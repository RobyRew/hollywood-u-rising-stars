require "hss"
-- HWU Message #1: Launch Bonus "Premiere Week Bonus"
function outro_message_0001_launchbonus_1(co)
hss.dlgA(co,hss.A,"I'm so, ~so~ glad you're liking it here, {YOU}!",1)
hss.dlg(co,hss.E,"Me too. You know, a lot of people come through this campus, and most burn out or can't handle the spotlight.")
hss.dlgA(co,hss.E,"But you... I've got a feeling this town's never going to forget your name, {YOU}.",1)
hss.evt(co,"Congrats on reaching Level 6! You're a rising star at Hollywood U!", "")
hss.evt(co,"As a special bonus for being one of our first fans, we're giving you 5,750 Cash and 100 Diamonds ~free!~", "")
hss.showQuestComplete(co)
hss.evt(co,"You can use Diamonds to rush quests, dates, and buildings... or to buy new friends, outfits, decorations, and even special VIP quests!", "")
hss.evt(co,"And if you're liking the game, tell all your friends! After all, every star needs an entourage!", "")
end
hss.checkEnvironment({"YOU"})
hss.runOpt()
