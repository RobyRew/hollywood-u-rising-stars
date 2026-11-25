function inter_preview(co)
hss.evt(co,"~Snapshot Dates are brief glimpses of the simpler things in love. Enjoy everything from lavish date nights to cozy moments of domestic fluff in these bite-sized quests.~", "")
hss.evt(co,"~In this Snapshot Date, get away from all the stress and drama of your Hollywood career... for a romantic beach date with Ethan Blake!~", "")
hss.markQuestScriptRequirementFinished()
end
function outro_date_0038_time_1(co)
if (hss.getCharacterType("YOU") == hss.CharacterType.MOVIE_STAR) then
hss.evt(co,"You're on set at a gorgeous white sand beach, filming your final scenes for an upcoming indie drama.", "")
hss.dlg(co,hss.U,"~One day, we'll meet again... I know it.~")
hss.evt(co,"You gaze out at the sea, smiling wistfully as gentle waves lap at your feet... finally, the director yells, ~'Cut!'~", "")
hss.dlgA(co,hss.E,"Nice work, {YOU}. I can tell this is going to be a real tearjerker.",7)
elseif (hss.getCharacterType("YOU") == hss.CharacterType.FASHIONISTA) then
hss.evt(co,"You're on set at a gorgeous white sand beach, directing a photoshoot featuring your latest mini-collection.", "")
hss.dlgA(co,hss.U,"Looking good, models! You're all hotter than the sun!",1)
hss.dlgA(co,hss.E,"Is there anyone who doesn't look good in your designs? These clothes are going to be flying off the racks.",7)
else
hss.evt(co,"You're on set at a gorgeous white sand beach, directing the final scenes for an upcoming indie drama.", "")
hss.dlgA(co,hss.U,"~Cut!~",4)
hss.dlgA(co,hss.U,"Great work today, everyone. The audience is going to bawl their eyes out at that ending!",1)
hss.dlgA(co,hss.E,"If you keep making these amazing tearjerkers, {YOU}, you'll single-handedly end California's drought.",7)
end
hss.dlgA(co,hss.U,"Ethan! I thought you were meeting new clients in New York all week. What are you doing here?",1)
hss.dlg(co,hss.E,"Oh, you'll see. Close your eyes.")
hss.evt(co,"As you close your eyes, Ethan slips his hand into yours. He leads you across the beach, away from a long day of work.", "")
hss.dlgA(co,hss.E,"And... ~open.~",1)
hss.evt(co,"You open your eyes to find a red blanket laid out in the middle of a huge heart drawn in the sand. A large picnic basket sits atop a nest of plush throw pillows. Two wine glasses catch the light, reflecting the sunset's pink and gold hues.", "")
hss.dlgA(co,hss.U,"Ethan, this is ~gorgeous.~ What's the special occasion?",4)
hss.dlgA(co,hss.E,"We don't need one.",1)
hss.dlg(co,hss.E,"We've both been so swamped with work lately that it's been forever since our last date. I managed to catch an early flight back from New York, and wanted to do something special.")
hss.dlgA(co,hss.U,"No complaints here. I'm ~starving.~",1)
hss.evt(co,"You settle across from Ethan on the sun-warmed blanket. He pours you each a glass of honey-sweetened lemonade as you unpack the basket.", "")
hss.dlg(co,hss.U,"~Wow.~ Strawberries, figs, gouda, brie... there's so much in here! When did you have time to prepare all this?")
hss.dlg(co,hss.E,"No matter how busy I am with work, I'll always make time for you, {YOU}.")
hss.dlg(co,hss.U,"Ethan...")
local choice = hss.showTextMenu(co, "What do you say?", "I'll hold you to that!|It's okay if you can't.");
if (choice == 0) then
hss.dlgA(co,hss.U,"I'm one hell of a catch, so you'd ~better~ find the time to appreciate me.",1)
hss.dlgA(co,hss.E,"I will, and that's an Ethan Blake promise.",1)
else
hss.dlg(co,hss.U,"We're both really busy. So even if you can't always make time for me, I know that you still care about me.")
hss.dlg(co,hss.U,"Besides, not getting to see you that often... it just makes the moments we have together all the more special.")
hss.dlgA(co,hss.E,"I'll toast to that.",1)
end
hss.evt(co,"You clink your glasses together as the sun begins to dip below the horizon, casting golden shadows across your faces.", "")
hss.showQuestComplete(co)
hss.evt(co,"After dinner, you relax in the circle of Ethan's arms as day turns into night. The soft rise and fall of his chest against your back eases all the everyday worries from your mind...", "")
hss.dlgA(co,hss.U,"You know what? I think I'd be perfectly happy spending every night like this.",1)
hss.dlg(co,hss.E,"On the beach?")
hss.dlg(co,hss.U,"In your arms, silly.")
hss.dlgA(co,hss.E,"Well, you're always welcome there.",1)
hss.evt(co,"You laugh and tilt your head back for a kiss. As Ethan presses his lips to yours, you hum contentedly and melt into his embrace...", "")
hss.evt(co,"~Stay tuned for more Snapshot Dates, coming soon to Amour!~", "")
end
local sceneTable = {}
sceneTable["inter_preview"] = inter_preview
sceneTable["outro_date_0038_time_1"] = outro_date_0038_time_1
hss.runScene(sceneTable)
