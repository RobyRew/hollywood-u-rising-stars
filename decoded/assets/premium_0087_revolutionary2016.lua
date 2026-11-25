function inter_preview(co)
hss.evt(co,"~Did you play this classic HWU quest last summer?~", "")
hss.evt(co,"~Star in a reality TV series, spend a romantic evening in Boston, and earn cash prizes in this Fourth of July themed quest!~", "")
hss.evt(co,"You, Lisa, and Addison are having lunch in a cafe downtown when Ethan walks up to your table, grinning.", "")
hss.dlg(co,hss.U,"What are you so excited about?")
hss.dlgA(co,hss.A,"Let me guess... they just released a new Armani collection?",1)
hss.dlgA(co,hss.E,"Please, Addison. If that had happened, I'd be getting fitted for a new suit right now.",1)
hss.dlgA(co,hss.E,"I'm excited about {YOU}'s career. You, my friend, are about to become a reality TV star.",1)
hss.dlgA(co,"LISA","Woo! That's ~so~ awesome!",5)
hss.dlgA(co,hss.U,"Wait, what?",4)
hss.dlg(co,hss.E,"You heard me. Ever seen 'From Sea to Shining Sea', that reality show where contestants travel through America and take part in state-specific challenges?")
hss.dlgA(co,hss.E,"They've got a huge Fourth of July special planned, so it's the perfect time to be on the show.",1)
hss.dlgA(co,hss.E,"Plus, there's prize money to be won.",7)
hss.dlgA(co,hss.U,"Fame ~and~ fortune? Sign me up!",1)
hss.evt(co,"Just then, an unwelcome guest sits down at your table.", "")
hss.dlgA(co,hss.B,"I hope you're not thinking of signing up for 'From Sea to Shining Sea', {YOU}. Because my team is going to ~win.~ That prize money is ~mine.~",3)
hss.dlgA(co,"JENNI","I thought we were going to split it!",4)
hss.dlgA(co,"LANCE","You can have my share, Bianca! I don't mind!",4)
hss.dlg(co,"SHAE","Don't be such a pushover, Lance.")
hss.dlgA(co,hss.B,"Ugh, shut up, all of you. First we have to ~win~ the money. Which shouldn't be too hard, if {YOU}'s our competition.",3)
hss.evt(co,"Bianca and her entourage stride away, leaving you and your friends to scowl after them.", "")
hss.dlgA(co,"LISA","Someone needs to teach those jerks a lesson.",3)
hss.dlgA(co,hss.A,"Definitely.",3)
hss.dlgA(co,hss.E,"Why not us? What do you say, {YOU}? Ready to light up America's televisions like the Fourth of July?",1)
hss.markQuestScriptRequirementFinished()
end
function outro_premium_0087_revolutionary2016_1(co)
hss.evt(co,"A few days later, you're all boarding Lisa's pink private jet, Air Valentine.", "")
hss.dlgA(co,hss.E,"First stop... Boston! Birthplace of the American Revolution and setting of 'The Departed'.",1)
hss.dlgA(co,hss.A,"I can't ~wait~ to see the look on Bianca's face when we destroy her team in the competition.",1)
hss.dlgA(co,hss.U,"And the prize money won't be too bad either...",1)
hss.evt(co,"Addison unzips her backpack to reveal a treasure trove of U.S. History textbooks.", "")
hss.dlgA(co,hss.A,"I figured we could brush up on our history knowledge during the flight. It never hurts to be prepared!",1)
hss.dlgA(co,"LISA","Oh, honey... the only reading material allowed on Air Valentine is the in-flight cocktail menu!",1)
hss.evt(co,"Lisa hands out drink menus, and soon you're all sipping fancy cocktails and sparkling water while the United States spreads out below you like a patchwork quilt.", "")
hss.dlgA(co,hss.E,"Can you imagine what this must've looked like to Lewis and Clark? No big cities, no highways...",4)
hss.dlg(co,hss.A,"It must've been beautiful.")
hss.dlgA(co,"LISA","Try boring! There'd be no Hollywood, no Rodeo Drive... just a whole lot of grass and trees. ~Lame.~",1)
hss.dlgA(co,hss.A,"You know what, Lisa? I bet by the end of this trip, you're going to have to admit that history is pretty interesting.",1)
hss.dlgA(co,"LISA","Yeah, right! Don't get your hopes up...",1)
hss.showQuestComplete(co)
hss.evt(co,"Hours later, Air Valentine hits the tarmac in Boston, and you head for the first shooting location of the show...", "")
hss.dlg(co,hss.E,"All right, we're headed for Boston Harbor. Site of which historic event?")
hss.dlgA(co,hss.A,"That's easy. The Boston Tea Party!",1)
hss.evt(co,"You all climb out of an airport shuttle and arrive at Boston Harbor. Patriotic banners and streamers adorn the waterfront in honor of the Fourth of July, and historic warships crowd the harbor.", "")
hss.evt(co,"One of the warships drops anchor alongside the pier where you're standing, and a gangplank extends from the port side.", "")
hss.dlgA(co,"HARRISON","All aboard for the 'From Sea to Shining Sea' Fourth of July Special!",1)
if hss.tutorialIsQuestFinished("premium_0008_harrisonrecruit_1") then -- has Harrison
hss.dlgA(co,"HARRISON","And just for you, {YOU}, I've managed to seize some British trade goods!",1)
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward0") == nil then
hss.setQuestProperty("reward0",1)
hss.dlgA(co,hss.U,"Thanks, Harrison! And thanks for having us on 'From Sea to Shining Sea'.",1,hss.REWARD_RINGS,5)
else
hss.dlgA(co,hss.U,"Thanks, Harrison! And thanks for having us on 'From Sea to Shining Sea'.",1)
end
hss.dlgA(co,hss.E,"Feel free to give us a little help here and there...",1)
hss.dlgA(co,"HARRISON","No can do, I'm afraid! That'd spoil the competition.",1)
hss.dlg(co,"HARRISON","Rule #63: Respect the game.")
else
end
end
function intro_premium_0087_revolutionary2016_2(co)
hss.evt(co,"Harrison welcomes you aboard the USS ~Determination~, where Bianca and her team are already lined up.", "")
if hss.tutorialIsQuestFinished("prim_0026_distracted_6") then -- Shae hates Bianca
hss.dlgA(co,hss.U,"Shae? Why are you on Bianca's team?",4)
hss.dlgA(co,"SHAE","We applied as a team months ago... I wish things were different, {YOU}, but I'm obligated to help Bianca on this one.",3)
hss.dlgA(co,hss.B,"You'd better not throw this competition, Shae. I want to ~win.~",3)
hss.dlgA(co,"HARRISON","Ladies, please! This isn't that kind of reality show! Let's focus on American history, not personal history, okay?",4)
else
hss.evt(co,"Your team glares at Bianca and her friends across the deck of the ship.", "")
hss.dlgA(co,"HARRISON","I can already sense some rivalry between our two teams! Let's try to focus on American history, not personal history, okay everyone?",1)
end
hss.evt(co,"Harrison turns to speak into the cameras, walking in front of two large shapes hidden under tarps.", "")
hss.dlgA(co,"HARRISON","We're all familiar with the famous 'Boston Tea Party', when the Sons of Liberty protested the Tea Act by dumping three hundred and forty-two chests of British tea into the ocean!",1)
hss.dlg(co,"HARRISON","But don't worry, tea lovers, this challenge won't involve wasting tea... our contestants will be tasked with steeping the equivalent of two chests of British tea!")
hss.dlgA(co,"HARRISON","Get those tarps off!",1)
hss.evt(co,"The reality crew members whip off the giant tarps, revealing two huge copper vats filled with boiling water!", "")
hss.evt(co,"At the other end of the ship, more tarps are pulled off two wooden chests bulging with loose leaf tea!", "")
hss.dlgA(co,hss.U,"Whoa. That's a ~lot~ of tea.",4)
hss.dlgA(co,"HARRISON","And it's your job to carry it to the boiling water... using ~these!~",1)
hss.evt(co,"Harrison hands out silver tea tongs, large enough to carry a few scoops of tea leaves at once.", "")
hss.dlgA(co,"HARRISON","On your marks... get set... STEEP!",1)
end
function outro_premium_0087_revolutionary2016_2(co)
hss.evt(co,"The blast of Harrison's whistle echoes through the harbor, startling the seagulls roosting in the USS ~Determination's~ sails!", "")
hss.evt(co,"You and your friends rush to the other end of the deck, tea tongs in hand, Bianca's team close at your heels!", "")
hss.dlgA(co,hss.U,"Go! Go! Go!",4)
hss.dlgA(co,hss.E,"We gotta get this tea into the vat!",4)
hss.evt(co,"You throw open your team's chest and snatch some loose leaf tea with your gleaming tea tongs, then pivot and start sprinting back to the vats!", "")
local leaves = hss.showTextMenu(co, "Don't drop any tea leaves!", "Keep the tongs clamped tightly!|Loosen your grip on the tongs!", false, 3);
if (leaves == 0) then
hss.evt(co,"You keep a firm grip on the tongs, holding the tea leaves inside.", "")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward0") == nil then
hss.setQuestProperty("reward0",1)
hss.dlgA(co,hss.U,"Guys, make sure you don't drop any!",4,hss.REWARD_COINS,25)
else
hss.dlgA(co,hss.U,"Guys, make sure you don't drop any!",4)
end
hss.dlgA(co,"LISA","Why couldn't we just dump the tea in the ocean? This is so hard!",4)
else
hss.evt(co,"Your hand slips, and the tongs spring open! Some of the tea leaves flutter away on the sea breeze!", "")
hss.dlgA(co,hss.U,"Crap!",4)
hss.dlgA(co,hss.A,"Careful, {YOU}! We need to get as much tea in our vat as possible!",4)
end
hss.evt(co,"You reach the other end of the deck and mount the wooden ladder hanging off your team's vat. You keep the tea tongs clenched shut and try to climb one-handed!", "")
local vat = hss.showTextMenu(co, "Stay on the ladder!", "Keep climbing!|Lose your footing!", false, 3);
if (vat == 0) then
hss.evt(co,"Without spilling any tea leaves, you make it to the top of the ladder!", "")
hss.evt(co,"You stare down into the boiling water, feeling the steam rush against your face. Finally, you release your grip on the tongs, letting the tea leaves fall into the water.", "")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward1") == nil then
hss.setQuestProperty("reward1",1)
hss.dlgA(co,hss.U,"One down, a whole lot to go!",1,hss.REWARD_COINS,25)
else
hss.dlgA(co,hss.U,"One down, a whole lot to go!",1)
end
else
hss.evt(co,"Your foot slips, and you almost drop the tea tongs in surprise!", "")
hss.evt(co,"A few tea leaves flutter down the ladder, brushing against Ethan's face.", "")
hss.dlgA(co,hss.E,"Aagh! {YOU}, you're dropping all your tea!",4)
hss.dlgA(co,hss.U,"Sorry!",4)
hss.evt(co,"Finally, you reach the top of the ladder and drop the remaining tea leaves into the boiling water.", "")
hss.dlgA(co,hss.U,"Whew. This is hard!",2)
end
hss.evt(co,"Fifteen minutes later, your team has nearly emptied its chest of tea, and so has Bianca's team!", "")
hss.evt(co,"The water in the vats starts to darken as the tea steeps. Finally, Harrison blows his whistle again, signalling the end of the challenge.", "")
hss.dlgA(co,"HARRISON","Okay! Let's see how we did... it looks like this is going to be a close match!",1)
hss.dlgA(co,"HARRISON","Luckily, I've got a tea expert on hand to help me choose a winner!",1)
hss.evt(co,"On cue, a young, well-dressed man comes up from below deck, glaring at Harrison.", "")
hss.dlgA(co,"KEEGAN","For the last time, I'm not a tea expert, I'm just a British citizen.",3)
hss.dlgA(co,"HARRISON","Same thing! Famous British actor Keegan Welch will now sample the tea... and determine the winner.",1)
hss.dlgA(co,"KEEGAN","May the Queen forgive me for this humiliating betrayal of my culture...",3)
hss.evt(co,"Keegan carries a ceramic tea cup to a spout on Bianca's team's vat and opens the valve, filling his cup to the brim with tea.", "")
if (leaves == 0) and (vat == 0) then
hss.evt(co,"Keegan takes one sip of Bianca's team's tea and spits it out!", "")
hss.dlgA(co,"KEEGAN","Ugh, you call this bilge water tea? Disgusting!",3)
hss.evt(co,"Next, he fills his cup at your team's vat. He samples the fragrance, raising one eyebrow in apparent surprise before sipping the tea.", "")
hss.dlgA(co,"KEEGAN","Hmm. Not bad.",4)
hss.dlgA(co,"HARRISON","The clear winner! Congratulations, Team {YOU}!",1)
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward2") == nil then
hss.setQuestProperty("reward2",1)
hss.dlgA(co,hss.U,"In your ~face,~ Bianca!",1,hss.REWARD_COINS,100)
else
hss.dlgA(co,hss.U,"In your ~face,~ Bianca!",1)
end
hss.dlgA(co,hss.B,"So what. It's only the first challenge. I still have ~plenty~ of opportunities to beat you.",3)
else
hss.evt(co,"Keegan takes a sip of Bianca's team's tea and raises an eyebrow.", "")
hss.dlgA(co,"KEEGAN","Well... it's not ~terrible,~ but it's not great, either.",4)
hss.evt(co,"Next, Keegan fills his cup at your team's vat. He takes one sip and spits it out!", "")
hss.dlgA(co,"KEEGAN","Far too watery for my taste.",3)
hss.dlgA(co,"HARRISON","Ouch! Looks like Team Bianca wins this one!",4)
hss.dlgA(co,hss.B,"No surprise there.",1)
hss.dlgA(co,"LISA","Damn!",3)
hss.dlg(co,hss.U,"Don't worry, Lisa. It's just the first challenge... we'll have our revenge soon enough.")
end
hss.showQuestComplete(co)
hss.evt(co,"As the sun starts to set over the Atlantic, Harrison looks out over the horizon and sighs deeply.", "")
hss.dlgA(co,"HARRISON","Romantic, isn't it? The perfect view for a candlelit dinner... and that's just what we have in store for you!",1)
hss.evt(co,"A fleet of horse-drawn chariots pulls up on the dock beside the USS ~Determination~.", "")
hss.dlgA(co,"HARRISON","Find yourself a date and climb aboard for a romantic and ~historically accurate~ evening!",1)
end
function intro_premium_0087_revolutionary2016_3(co)
hss.evt(co,"You and your date climb into the carriage and signal for the driver to whisk you away for a romantic evening!", "")
hss.evt(co,"{QUEST_CHAR_1_NAME} leans out the window as the carriage wheels clatter over the cobblestones of old Boston.", "")
hss.dlgA(co,hss.Q1,"This is a big change from L.A., huh?",1)
hss.dlgA(co,hss.U,"Definitely! Some of these buildings might even be over two hundred years old...",1)
hss.evt(co,"A short while later, the carriage comes to a stop outside a quaint little inn with a steeped roof and hitching posts out front.", "")
hss.evt(co,"The driver climbs down from his seat and extends a small set of steps from the side of the carriage. You take {QUEST_CHAR_1_NAME}'s hand.", "")
hss.dlg(co,hss.U,"Well, here we are... 'The Highwayman's Rest'.")
hss.evt(co,"You and {QUEST_CHAR_1_NAME} are ushered up the stairs and onto an outdoor seating area overlooking the harbor.", "")
hss.dlgA(co,hss.U,"Wow... this is beautiful!",1)
hss.dlgA(co,hss.Q1,"And there's no one I'd rather share it with than you, {YOU}.",1)
end
function outro_premium_0087_revolutionary2016_3(co)
hss.evt(co,"The waiter lights a tall candle between you and sets out two leather-bound menus.", "")
hss.dlg(co,hss.Q1,"What are you going to get?")
hss.dlg(co,hss.U,"Hmm, I think I'll get the...")
local choice = hss.showTextMenu(co, "What do you order?", "Oysters.|Grilled lobster tails.|Seared scallop salad.");
if (choice == 0) then
hss.dlgA(co,hss.Q1,"Good idea. I hear this place gets their oysters fresh daily from the trawlers in the harbor.",1)
hss.evt(co,"The waiter returns with oysters for you and {QUEST_CHAR_1_NAME}.", "")
hss.evt(co,"You each take one from the platter and knock the shells together over the table.", "")
hss.dlgA(co,hss.U,"Cheers!",1)
hss.evt(co,"You tilt your head back and then chew the oyster a few times, savoring the firm, briny meat.", "")
hss.dlgA(co,hss.Q1,"Mmph, these are ~delicious!~",4)
hss.dlgA(co,hss.U,"We've ~got~ to find a good oyster place back in Hollywood!",1)
elseif (choice == 1) then
hss.dlgA(co,hss.Q1,"Good idea. I hear this place gets their lobsters fresh daily from the trawlers in the harbor.",1)
hss.evt(co,"The waiter returns and places a platter on the table for you and {QUEST_CHAR_1_NAME}.", "")
hss.evt(co,"Four lobster tails, seared over flames and drizzled with lemon and butter, sit in a neat row on the plate.", "")
hss.dlgA(co,hss.U,"Wow... do you know how to eat these things?",4)
hss.dlgA(co,hss.Q1,"I think we have to get through the shell somehow...",4)
hss.evt(co,"You cut away the lobster's shell and finally spear a chunk of meat on your fork.", "")
hss.dlgA(co,hss.U,"Oh man, this is ~amazing!~",4)
hss.dlgA(co,hss.Q1,"We've ~got~ to find a good lobster place back in Hollywood!",1)
else
hss.dlgA(co,hss.Q1,"Good idea. I hear this place gets their seafood fresh daily from the trawlers in the harbor.",1)
hss.evt(co,"The waiter returns and places two bowls on the table for you and {QUEST_CHAR_1_NAME}.", "")
hss.evt(co,"Seared scallops rest on a bed of arugula alongside citrus wedges and pomegranate seeds.", "")
hss.dlgA(co,hss.Q1,"This looks ~amazing.~",1)
hss.evt(co,"You spear one of the plump scallops on your fork and bring it to your mouth.", "")
hss.dlgA(co,hss.U,"Oh my god... ~so~ good.",4)
end
hss.evt(co,"After dinner, you and {QUEST_CHAR_1_NAME} enjoy a moonlit stroll along the harbor.", "")
hss.evt(co,"On an island in the distance, a solitary lighthouse winks in the darkness, guiding ships into port.", "")
hss.evt(co,"You feel {QUEST_CHAR_1_NAME} brush up against you...", "")
local choice = hss.showTextMenu(co, "What do you do?", "Kiss {QUEST_CHAR_1_NAME}.|Take {QUEST_CHAR_1_NAME}'s hand in yours.");
if (choice == 0) then
hss.evt(co,"You pull {QUEST_CHAR_1_NAME} in close, and your lips meet as the waves crash in the harbor.", "")
hss.dlgA(co,hss.Q1,"Mmm... maybe we should take one of these boats and sail away together...",1)
hss.dlgA(co,hss.U,"I know you're joking, but you have no idea how tempting that sounds...",1)
hss.evt(co,"You kiss {QUEST_CHAR_1_NAME} again, feeling the sea breeze in your hair.", "")
hss.evt(co,"Just then, your carriage arrives, the wheels thumping along the planks of the pier.", "")
hss.dlgA(co,hss.U,"I guess we'll have to settle for a horse-drawn carriage.",1)
hss.dlgA(co,hss.Q1,"I suppose we can make do...",1)
hss.evt(co,"You and {QUEST_CHAR_1_NAME} curl up in the back of the carriage as the driver takes you back to the inn.", "")
else
hss.evt(co,"You reach out and find {QUEST_CHAR_1_NAME}'s hand as the waves crash in the harbor.", "")
hss.evt(co,"{QUEST_CHAR_1_NAME} smiles at you as your fingers intertwine.", "")
hss.dlgA(co,hss.U,"I'm glad you agreed to go to dinner with me tonight...",1)
hss.dlgA(co,hss.Q1,"And I'm glad you invited me. Maybe we should take one of these boats and sail away together...",1)
hss.dlgA(co,hss.U,"I know you're joking, but you have no idea how tempting that sounds...",1)
hss.evt(co,"Just then, your carriage arrives, the wheels thumping along the planks of the pier.", "")
hss.dlgA(co,hss.U,"I guess we'll have to settle for a horse-drawn carriage.",1)
hss.dlgA(co,hss.Q1,"I suppose we can make do...",1)
hss.evt(co,"You and {QUEST_CHAR_1_NAME} curl up in the back of the carriage as the driver takes you back to the inn.", "")
end
hss.showQuestComplete(co)
hss.evt(co,"After a magical evening with {QUEST_CHAR_1_NAME}, you're shown to your rooms in The Highwayman's Rest.", "")
hss.evt(co,"You collapse onto the fluffy duvet and fall fast asleep, lulled by the sound of the waves in the harbor...", "")
hss.evt(co,"Harrison shakes you awake, an old-fashioned oil lamp flickering in his hand.", "")
hss.dlgA(co,"HARRISON","Get up, {YOU}! It's time for the next challenge!",1)
hss.dlgA(co,hss.U,"Huh... wh-what? What are you doing here? What time is it?",4)
hss.evt(co,"You rub your eyes and look at the clock on your bedside table.", "")
hss.dlgA(co,hss.U,"Wait... what? It's midnight... why are you waking me up now?!",4)
hss.dlgA(co,"HARRISON","Save your whining for the cameras, {YOU}! Up and at 'em!",1)
hss.evt(co,"Harrison leads you and the rest of the competitors into the yard, where nine horses wait saddled and ready.", "")
hss.evt(co,"Your team and Bianca's team stand in their pajamas, blinking sleepily at the waiting horses.", "")
hss.dlgA(co,"SHAE","Why did you wake us up after, like, one hour of sleep? And why are there horses here?",2)
hss.dlgA(co,hss.U,"Yeah, Harrison... what exactly is this challenge?",4)
hss.dlg(co,"HARRISON","Listen, my children, and you shall hear...")
hss.dlgA(co,"HARRISON","Of the challenge inspired by Paul Revere!",1)
end
function inter_ride(co)
hss.evt(co,"Addison gives the horses a dubious look.", "")
hss.dlgA(co,hss.A,"Are we really riding Paul Revere's entire route? Because that'd take a ~long~ time...",4)
hss.dlg(co,"HARRISON","As much as I'd love to see you ride these horses all the way to Concord, we'll try to keep this challenge under an hour.")
hss.dlgA(co,"HARRISON","Your mission... is to ride to the Old North Church, where the famous 'one if by land, two if by sea' lanterns were lit!",1)
hss.dlg(co,hss.U,"So it's a horse race?")
hss.dlg(co,"HARRISON","Oh, it's much more than that, my friend. You'll also have to climb to the steeple of the Old North Church and light your team's lantern!")
hss.dlgA(co,"HARRISON","May the best team win!",1)
hss.evt(co,"Harrison's whistle echoes in the night as you and your friends hurry to climb onto your horses!", "")
hss.dlgA(co,"LISA","What? We don't get any chance to practice?",4)
hss.dlgA(co,hss.B,"See you at the finish line, ~losers!~",1)
hss.evt(co,"Bianca sets off at a gallop, her horse's hooves churning up soil as she thunders along a park lane!", "")
hss.evt(co,"Jenni, Shae, and Lance follow at her heels, and you all spur your mounts in pursuit.", "")
hss.dlgA(co,hss.U,"Addi, Ethan... keep Shae and Lance occupied. Lisa, don't let Jenni get out ahead of us.",3)
hss.evt(co,"Addison and Ethan gallop ahead, shunting Shae and Lance to the sides of the path while Lisa cuts Jenni off.", "")
hss.dlgA(co,"JENNI","Hey, watch it!",3)
hss.evt(co,"Up ahead, Bianca rides alone, undeterred, her horse's hooves flying over the winding trail.", "")
hss.dlgA(co,"LISA","{YOU}! She's getting away!",4)
hss.dlgA(co,hss.U,"I'm on it.",3)
hss.evt(co,"You snap the reins, crouching low in the saddle as you pull up alongside Bianca!", "")
hss.dlgA(co,hss.B,"Don't even ~try~, {YOU}.",3)
hss.evt(co,"You and Bianca jostle for position on the narrow path, until you finally...", "")
local choice = hss.showTextMenu(co, "What do you do?", "Steer your horse into Bianca's!|Fall off your horse!", false, 3);
if (choice == 0) then
hss.evt(co,"You jerk the reins to the right, and your horse crowds Bianca's, scaring it off the path!", "")
hss.dlgA(co,hss.B,"Damn it!",3)
hss.evt(co,"Bianca's horse veers into the woods! You gain a considerable distance on Bianca before she's able to steer her horse back onto the path.", "")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward3") == nil then
hss.setQuestProperty("reward3",1)
hss.dlgA(co,hss.U,"Seeya!",1,hss.REWARD_COINS,50)
else
hss.dlgA(co,hss.U,"Seeya!",1)
end
else
hss.evt(co,"You lose your position in the saddle and slide off your horse's back, falling with a thud in the dirt of the road!", "")
hss.dlgA(co,hss.U,"Crap!",3)
hss.dlgA(co,hss.B,"Wow, I didn't even have to do anything!",1)
hss.dlgA(co,hss.U,"Shut up!",3)
hss.evt(co,"As Bianca carries on ahead, you dust yourself off and climb back on your horse.", "")
hss.dlgA(co,hss.U,"Gotta catch up...",3)
end
hss.evt(co,"After twenty minutes' hard riding, both teams arrive at Boston's Old North Church, the horses' hooves ringing over the paved street.", "")
hss.evt(co,"You leap off your horse, staring up at the moonlit edifice of the church.", "")
hss.dlgA(co,hss.U,"Hurry! We need to get up there and light the lanterns!",4)
hss.evt(co,"You throw open the church doors and sprint up the stairs, racing up to the steeple!", "")
hss.evt(co,"Once again, you find yourself neck-and-neck with Bianca as you run headlong up the stairwell, your teams panting behind you!", "")
hss.dlgA(co,hss.B,"Ugh, just give up already!",3)
hss.dlgA(co,hss.U,"You wish!",3)
hss.evt(co,"You all reach the zenith of the church steeple at the same time, crowding into the tiny room at the top.", "")
hss.evt(co,"You spark a match on the wall and thrust an arm through the mess of people, trying to reach the lantern in the windowsill...", "")
local choice = hss.showTextMenu(co, "What do you do?", "Light the lantern!|Let the flame go out!", false, 3);
if (choice == 0) then
hss.evt(co,"You hold the match flame against the lantern's wick just long enough to light it!", "")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward4") == nil then
hss.setQuestProperty("reward4",1)
hss.dlgA(co,hss.U,"I got it!",1,hss.REWARD_COINS,50)
else
hss.dlgA(co,hss.U,"I got it!",1)
end
hss.dlgA(co,hss.E,"Nice one, {YOU}!",1)
hss.evt(co,"Way down in the street outside the church, Harrison sees the lantern glow and shouts up to the steeple.", "")
hss.dlgA(co,"HARRISON","That's a wrap! {YOU}'s team takes the challenge!",1)
hss.dlgA(co,hss.B,"Damn it! If only you idiots hadn't gotten in my way...",3)
hss.dlgA(co,"JENNI","How is this ~our~ fault?!",4)
hss.dlgA(co,hss.B,"It just is!",3)
else
hss.evt(co,"Your eyes go wide as the flame flickers and then dies, leaving you in the dark.", "")
hss.dlgA(co,hss.U,"No!",4)
hss.evt(co,"Suddenly, another light flares in the blackness... from a match held by Bianca!", "")
hss.dlgA(co,hss.B,"Game over, {YOU}!",3)
hss.evt(co,"Bianca lights her team's lantern. Way down in the street outside the church, Harrison sees the lantern glow and shouts up to the steeple.", "")
hss.dlgA(co,"HARRISON","That's a wrap! Bianca's team takes the challenge!",4)
hss.dlgA(co,hss.U,"Damn it!",3)
hss.dlgA(co,hss.A,"This isn't over, Bianca...",3)
end
hss.markQuestScriptRequirementFinished()
end
function outro_premium_0087_revolutionary2016_4(co)
hss.evt(co,"After the challenge, Harrison leads your group back to The Highwayman's Rest on horseback.", "")
hss.evt(co,"Once everyone's caught up on sleep, you rejoin the group in the inn's dining room for breakfast.", "")
hss.dlgA(co,hss.U,"Eggs Benedict, bacon, toast... could this breakfast get any better?",1)
hss.dlgA(co,"LISA","Bottomless mimosas wouldn't hurt.",1)
hss.dlg(co,hss.E,"I wouldn't get your hopes up. Something tells me this place is a little too... old-fashioned for that.")
hss.dlgA(co,"HARRISON","Good morning, midnight riders! Your first challenge of the morning is to enjoy this complimentary breakfast.",1)
hss.dlg(co,"SHAE","Now ~that~ I can do.")
hss.dlgA(co,"HARRISON","After you finish eating, we'll board the bus for our next destination...",1)
hss.dlgA(co,"HARRISON","But beware! This bus has been known... to ~travel through time itself.~",1)
hss.dlgA(co,"LANCE","Oh my god!",4)
hss.showQuestComplete(co)
hss.evt(co,"The reality TV crew films you and your friends as you board the tour bus, grabbing seats across the aisle from Bianca's team.", "")
hss.dlgA(co,hss.U,"So, does anyone know where we're going? What did Harrison mean by 'traveling through time?'",4)
hss.dlgA(co,hss.A,"I guess we'll find out soon enough. The bus is moving!",1)
hss.evt(co,"Hours later, the bus's brakes screech as you pull up outside an old-fashioned colonial settlement.", "")
hss.evt(co,"Out the window, you see actors in historical costumes going about the daily business of 18th century American colonists.", "")
hss.dlgA(co,"HARRISON","Welcome to Colonial Williamsburg... the town that time forgot!",1)
end
function intro_premium_0087_revolutionary2016_5(co)
hss.evt(co,"You step off the bus and follow Harrison through the main street of Colonial Williamsburg.", "")
hss.evt(co,"Candlemakers and carpenters sell handcrafted goods from wooden stalls while blacksmiths' hammers ring in their forges.", "")
hss.dlgA(co,hss.U,"Let's remember this place if we ever want to shoot a period piece set in colonial America...",1)
hss.dlgA(co,hss.A,"Seriously! Even the costuming details surpass those in most Hollywood productions!",4)
hss.dlg(co,hss.E,"So, Harrison... what exactly is our challenge here?")
hss.dlgA(co,"HARRISON","I'm glad you asked, Ethan. Your challenge... is to find the founding father described in ~this~ riddle!",1)
hss.evt(co,"Harrison unfurls a scroll and reads from it.", "")
hss.dlg(co,"HARRISON","'This Poor Richard's kite didn't quite survive the storm. Buy him a consolatory round in the local tavern.'")
hss.dlgA(co,"HARRISON","All right, you have your clue, and you have the whole of Colonial Williamsburg to search. Find that founding father!",1)
end
function outro_premium_0087_revolutionary2016_5(co)
hss.evt(co,"You and your friends ponder the clue from Harrison's scroll.", "")
hss.dlg(co,hss.A,"'This Poor Richard's kite didn't quite survive the storm.' There must be something there...")
hss.dlg(co,"LISA","So... we're looking for a poor kid named Richard? I didn't know any of the founding fathers were children...")
hss.dlg(co,hss.E,"They weren't. It must be code for something...")
hss.dlg(co,hss.A,"Or a reference to some historic event?")
hss.dlg(co,hss.U,"Hmm... I think it refers to...")
local choice = hss.showTextMenu(co, "What do you say?", "George Washington.|Benjamin Franklin.|Thomas Jefferson.|Liam Neeson.");
if (choice == 0) then
hss.dlgA(co,hss.A,"Uh... why do you think that? What does George Washington have to do with kites?",4)
hss.dlgA(co,hss.U,"Um... he probably loved kites as a kid?",4)
hss.dlg(co,hss.A,"I don't think so, {YOU}. But you know, I ~do~ think I might know who the riddle's referring to...")
hss.dlgA(co,hss.E,"You do? Who is it?",4)
hss.dlg(co,hss.A,"Well, Benjamin Franklin published an annual almanac called 'Poor Richard's Almanack'.")
hss.dlg(co,hss.A,"He wrote it under the pen name Richard Saunders!")
hss.dlgA(co,"LISA","And there was that whole thing with the kite! Didn't he discover electricity or something?",1)
hss.dlg(co,hss.E,"I think it's a little more complicated than that, but that was ~definitely~ Benjamin Franklin.")
hss.dlgA(co,hss.U,"Are we sure it's not George Washington?",4)
hss.dlgA(co,hss.E,"Sorry, {YOU}. I think it's pretty clear.",1)
elseif (choice == 1) then
hss.dlgA(co,hss.A,"Oh, that makes total sense!",4)
hss.dlgA(co,"LISA","Um, how does it make sense? Benjamin Franklin's name was ~Benjamin,~ not Richard.",4)
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward6") == nil then
hss.setQuestProperty("reward6",1)
hss.dlgA(co,hss.U,"Well, Benjamin Franklin published an annual almanac called 'Poor Richard's Almanack'.",1,hss.REWARD_COINS,100)
else
hss.dlgA(co,hss.U,"Well, Benjamin Franklin published an annual almanac called 'Poor Richard's Almanack'.",1)
end
hss.dlg(co,hss.A,"And he wrote it under the pen name Richard Saunders!")
hss.dlgA(co,"LISA","Oh, wait... wasn't there something with a kite he did? Did he discover electricity or something?",4)
hss.dlg(co,hss.E,"I think it's a little more complicated than that, but that was ~definitely~ Benjamin Franklin.")
elseif (choice == 2) then
hss.dlgA(co,hss.A,"Uh... why do you think that? What does Thomas Jefferson have to do with kites?",4)
hss.dlg(co,"LISA","Or the name Richard, for that matter?")
hss.dlgA(co,hss.U,"Um... he probably loved kites as a kid? And maybe Richard was his middle name?",4)
hss.dlg(co,hss.A,"I don't think so, {YOU}. But you know, I ~do~ think I might know who the riddle's referring to...")
hss.dlgA(co,hss.E,"You do? Who is it?",4)
hss.dlg(co,hss.A,"Well, Benjamin Franklin published an annual almanac called 'Poor Richard's Almanack'.")
hss.dlg(co,hss.A,"He wrote it under the pen name Richard Saunders!")
hss.dlgA(co,"LISA","And there was that whole thing with the kite! Didn't he discover electricity or something?",1)
hss.dlg(co,hss.E,"I think it's a little more complicated than that, but that was ~definitely~ Benjamin Franklin.")
hss.dlgA(co,hss.U,"Are we sure it's not Thomas Jefferson?",4)
hss.dlgA(co,hss.E,"Sorry, {YOU}. I think it's pretty clear.",1)
else
hss.dlgA(co,"LISA","Uh, I'm not an expert on American history or anything, but I don't think Liam Neeson was alive back then...",4)
hss.dlgA(co,hss.U,"Didn't he call King George III to tell him about his very particular set of skills?",1)
hss.dlgA(co,hss.E,"I think you're thinking of your U.S. History and 'Taken' crossover fan fiction, {YOU}.",1)
hss.dlg(co,hss.A,"Actually, I think I might know who the riddle's referring to...")
hss.dlgA(co,hss.E,"You do? Who is it?",4)
hss.dlg(co,hss.A,"Well, Benjamin Franklin published an annual almanac called 'Poor Richard's Almanack'.")
hss.dlg(co,hss.A,"He wrote it under the pen name Richard Saunders!")
hss.dlgA(co,"LISA","And there was that whole thing with the kite! Didn't he discover electricity or something?",1)
hss.dlg(co,hss.E,"I think it's a little more complicated than that, but that was ~definitely~ Benjamin Franklin.")
hss.dlgA(co,hss.U,"Are we sure it wasn't Liam Neeson?",1)
hss.dlgA(co,hss.E,"Sorry, {YOU}. I think it's pretty clear.",1)
end
hss.dlg(co,hss.U,"So now we know ~who~ we're looking for... but ~where~ should we look?")
hss.dlgA(co,hss.A,"The second part of the riddle! 'Buy him a consolatory round in the local tavern!'",1)
hss.evt(co,"You rush down the road, toward a low building with a dark and smoky interior.", "")
hss.evt(co,"A swinging sign over the door shows a bedraggled monarch under the words 'The Drunken King.'", "")
hss.dlgA(co,hss.E,"'The Drunken King', huh? Very political.",4)
hss.dlgA(co,hss.U,"We ~are~ looking for a revolutionary after all...",1)
hss.dlgA(co,hss.Q1,"Ho there, young wastrels! Did someone say 'revolutionary?'",1)
hss.showQuestComplete(co)
hss.evt(co,"{QUEST_CHAR_1_NAME}, dressed in full Benjamin Franklin regalia, raises a flagon of ale in salute!", "")
hss.dlgA(co,hss.U,"{QUEST_CHAR_1_NAME}? What are you doing here?",4)
hss.dlgA(co,hss.Q1,"{QUEST_CHAR_1_NAME}? I'm afraid I don't take your meaning. ~I~ am Ben Franklin!",1)
hss.dlgA(co,hss.Q1,"Perhaps you've heard of my work with the printing press, or my diplomatic efforts across the pond...",1)
hss.dlgA(co,hss.E,"Oh, believe me, Mr. Franklin... your reputation precedes you.",7)
hss.dlgA(co,hss.Q1,"That's what I like to hear!",1)
hss.dlgA(co,hss.A,"So, Mr. Franklin... would you happen to know the next step in Harrison's challenge?",4)
hss.dlgA(co,hss.Q1,"Ah, we share a mutual acquaintance, then! Mr. Byrd is a dear friend, very dear.",1)
hss.dlgA(co,hss.Q1,"He asked me to pass on the following message to whomsoever found me first...",1)
hss.dlg(co,hss.Q1,"'Not ~in~ Pennsylvania, but ~on~ it, this stately manse boasts a uniquely elliptic study!'")
hss.dlgA(co,"LISA","What does that even ~mean?~",4)
hss.dlg(co,hss.U,"Hmm... it sounds like the riddle is pointing us to...")
local choice = hss.showTextMenu(co, "What do you say?", "The White House!|Somewhere in the state of Pennsylvania!|The Capitol Building!");
if (choice == 0) then
hss.dlgA(co,"LISA","How'd you get the White House from that?",4)
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward7") == nil then
hss.setQuestProperty("reward7",1)
hss.dlgA(co,hss.U,"Simple! 'Not in Pennsylvania, but on it' refers to Pennsylvania Avenue, the street the White House is on!",1,hss.REWARD_COINS,100)
else
hss.dlgA(co,hss.U,"Simple! 'Not in Pennsylvania, but on it' refers to Pennsylvania Avenue, the street the White House is on!",1)
end
hss.dlgA(co,hss.E,"And 'uniquely elliptic study' must mean the Oval Office!",1)
hss.dlgA(co,hss.A,"What are we waiting for? Let's go!",1)
hss.dlgA(co,hss.Q1,"Well done is better than well said! Get a move on!",1)
elseif (choice == 1) then
hss.dlgA(co,"LISA","I kind of zoned out, but I definitely remember hearing ~something~ about Pennsylvania in that riddle...",1)
hss.dlgA(co,hss.A,"But the riddle said it wasn't ~in~ Pennsylvania, but ~on~ it...",4)
hss.dlgA(co,hss.E,"Wait... Pennsylvania Avenue in D.C.! That's where the White House is!",4)
hss.dlgA(co,hss.A,"Right! And 'uniquely elliptic study' must mean the Oval Office!",1)
hss.dlgA(co,hss.U,"Wow, you guys are ~way~ better listeners than me. Let's go!",4)
hss.dlgA(co,hss.Q1,"Well done is better than well said! Get a move on!",1)
else
hss.dlgA(co,"LISA","The United States Capitol? How'd you get that?",4)
hss.dlgA(co,hss.E,"Yeah, I'd like to hear an explanation for that, too...",4)
hss.dlg(co,hss.U,"I kind of zoned out, to be honest. That was just a wild guess.")
hss.dlgA(co,hss.A,"You're thinking of the wrong branch of government, {YOU}. The riddle said it wasn't ~in~ Pennsylvania, but ~on~ it.",1)
hss.dlgA(co,hss.E,"Wait... Pennsylvania Avenue in D.C.! That's where the White House is!",4)
hss.dlgA(co,hss.A,"Exactly! And 'uniquely elliptic study' must mean the Oval Office!",1)
hss.dlg(co,hss.U,"Damn, that was my next guess. Let's go to the White House!")
hss.dlgA(co,hss.Q1,"Well done is better than well said! Get a move on!",1)
end
end
function intro_premium_0087_revolutionary2016_6(co)
hss.evt(co,"Your team arrives on the White House lawn ahead of Bianca and her teammates.", "")
hss.evt(co,"The camera crew follows you as you stride up the path to the President's front door.", "")
hss.dlgA(co,hss.U,"Here goes nothing...",4)
hss.evt(co,"You knock on the door, and it swings open to reveal...", "")
hss.dlgA(co,"HARRISON","{YOU}! You made it!",1)
hss.dlgA(co,hss.U,"Hey, Harrison! Is this the final challenge?",4)
hss.dlgA(co,"HARRISON","You bet! We'll get started in a moment... just gotta wait for your rivals to catch up.",1)
hss.evt(co,"Just then, Bianca's car swerves into the front drive, and her teammates pile out.", "")
hss.dlgA(co,"JENNI","OMG! I can't believe we're actually here!",4)
hss.dlgA(co,hss.B,"I thought my dad's mansion was impressive... but this is on a whole other level!",4)
hss.dlgA(co,"HARRISON","Both teams are finally here! Now, the last challenge will be a trivia competition...",1)
hss.dlgA(co,"HARRISON","Judged by the President of the United States!",1)
hss.dlgA(co,"LISA","Oh. My. God.",4)
end
function outro_premium_0087_revolutionary2016_6(co)
hss.evt(co,"Harrison stands behind a lectern on the White House lawn, with the President standing beside him.", "")
hss.evt(co,"Your team stands facing Bianca's team, your minds racing through the trivia questions Harrison might ask...", "")
hss.dlgA(co,"HARRISON","Okay! Question one, {YOU}'s team... which European power aided the United States in the Revolutionary War?",1)
hss.evt(co,"You, Ethan, Addison, and Lisa turn to whisper together.", "")
hss.dlgA(co,hss.U,"I'm pretty sure it was...",4)
local choice = hss.showTextMenu(co, "What do you say?", "England.|Germany.|France.");
if (choice == 0) then
hss.dlgA(co,hss.A,"Are you serious? England was the ~enemy~ in the American Revolutionary War.",2)
hss.dlgA(co,hss.U,"Oh, right. Maybe you should answer this one.",2)
hss.dlgA(co,"HARRISON","Do we have an answer?",1)
hss.dlg(co,hss.A,"Yes, the American colonies were aided by France in the Revolutionary War.")
hss.evt(co,"The President nods in approval.", "")
hss.dlgA(co,"HARRISON","Bingo!",1)
elseif (choice == 1) then
hss.dlgA(co,hss.A,"Actually, if memory serves, German mercenaries fought on the British side during the Revolutionary War.",4)
hss.dlgA(co,hss.U,"Oh, I didn't know that. Maybe you should answer this one.",2)
hss.dlgA(co,"HARRISON","Do we have an answer?",1)
hss.dlg(co,hss.A,"Yes, the American colonies were aided by France in the Revolutionary War.")
hss.evt(co,"The President nods in approval.", "")
hss.dlgA(co,"HARRISON","Bingo!",1)
else
hss.dlgA(co,hss.A,"Oh, you're totally right!",4)
hss.dlgA(co,"HARRISON","Do we have an answer?",1)
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward8") == nil then
hss.setQuestProperty("reward8",1)
hss.dlgA(co,hss.U,"Yes, the American colonies were aided by France in the Revolutionary War.",0,hss.REWARD_COINS,100)
else
hss.dlgA(co,hss.U,"Yes, the American colonies were aided by France in the Revolutionary War.",0)
end
hss.evt(co,"The President nods in approval.", "")
hss.dlgA(co,"HARRISON","Bingo!",1)
end
hss.dlg(co,"HARRISON","All right, score one for Team {YOU}. Now let's see what Team Bianca has to say...")
hss.evt(co,"Fifteen minutes later, the score is four to three, your favor. You go into a huddle with your team.", "")
hss.dlg(co,hss.E,"All right, we've almost got this. We just need to answer this next question correctly, and we'll lock down the win.")
hss.dlgA(co,"LISA","Don't let me down, team. It's always been a dream of mine to embarrass Bianca in front of the President of the United States.",1)
hss.evt(co,"Harrison reads off the final question for your team.", "")
hss.dlg(co,"HARRISON","Last question... who wrote the Declaration of Independence?")
hss.dlgA(co,hss.U,"Guys, I know this! It was...",1)
local choice = hss.showTextMenu(co, "What do you say?", "Benjamin Franklin.|Thomas Paine.|Thomas Jefferson.|John Hancock.");
if (choice == 0) then
hss.dlg(co,hss.A,"Benjamin Franklin ~was~ a prolific writer, but he didn't write the Declaration of Independence.")
hss.dlgA(co,"HARRISON","Does anyone know the answer?",1)
hss.dlgA(co,hss.U,"Uh, you handle this one, Addison.",4)
hss.dlgA(co,hss.A,"The Declaration of Independence was written by Thomas Jefferson!",1)
elseif (choice == 1) then
hss.dlg(co,hss.A,"Thomas Paine ~was~ a prolific writer, but he didn't write the Declaration of Independence.")
hss.dlgA(co,"HARRISON","Does anyone know the answer?",1)
hss.dlgA(co,hss.U,"Uh, you handle this one, Addison.",4)
hss.dlgA(co,hss.A,"The Declaration of Independence was written by Thomas Jefferson!",1)
elseif (choice == 2) then
hss.dlgA(co,hss.A,"Yup! Nice one, {YOU}!",1)
hss.dlgA(co,"HARRISON","Does anyone know the answer?",1)
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward9") == nil then
hss.setQuestProperty("reward9",1)
hss.dlgA(co,hss.U,"I got this. The Declaration of Independence was written by Thomas Jefferson!",1,hss.REWARD_COINS,100)
else
hss.dlgA(co,hss.U,"I got this. The Declaration of Independence was written by Thomas Jefferson!",1)
end
else
hss.dlg(co,hss.A,"John Hancock had the largest signature on the Declaration of Independence, but he didn't write it.")
hss.dlgA(co,"HARRISON","Does anyone know the answer?",1)
hss.dlgA(co,hss.U,"Uh, you handle this one, Addison.",4)
hss.dlgA(co,hss.A,"The Declaration of Independence was written by Thomas Jefferson!",1)
end
hss.evt(co,"The President nods again and announces your team the winner!", "")
hss.showQuestComplete(co)
hss.dlgA(co,"HARRISON","Congratulations! Team {YOU} takes the final challenge!",1)
hss.dlgA(co,hss.B,"Crap! If only I didn't have so many idiots on my team...",3)
hss.dlgA(co,"SHAE","Excuse me?!",3)
hss.dlgA(co,hss.A,"What do you think, Lisa? Are you still convinced that history's boring?",1)
hss.dlgA(co,"LISA","Well... I guess it's a ~little~ bit interesting...",1)
hss.evt(co,"Just then, you feel a tap on your shoulder. You whirl around and find yourself face-to-face with the President!", "")
hss.dlgA(co,hss.U,"Uh, hi! Nice to meet you!",4)
hss.evt(co,"The President congratulates you on your victory and offers a handshake.", "")
hss.evt(co,"You...", "")
local choice = hss.showTextMenu(co, "What do you do?", "Shake the President's hand!|High-five the President!|Hug the President tenderly!");
if (choice == 0) then
hss.evt(co,"You and the President shake hands, and Ethan snaps a picture.", "")
hss.dlgA(co,hss.E,"That's my client. Shaking hands with the Commander in Chief.",1)
elseif (choice == 1) then
hss.evt(co,"You high-five the President instead, and Ethan snaps a picture.", "")
hss.dlgA(co,hss.E,"I'm putting this on your resume, {YOU}. Not everyone can say they high-fived the Commander in Chief.",1)
else
hss.evt(co,"You pull the President into a warm hug, and Ethan snaps a picture.", "")
hss.dlgA(co,hss.A,"Wow. {YOU} actually went for it.",4)
hss.dlgA(co,hss.E,"We are ~definitely~ framing this picture first thing when we get back.",1)
end
hss.evt(co,"Just then, fireworks explode overhead, and the smell of grilling hamburgers and hotdogs reaches your nose.", "")
hss.evt(co,"The White House staff sets up a Fourth of July dinner, and you grab a plate along with Bianca and the rest.", "")
hss.dlgA(co,"LISA","This has ~got~ to be the best way to celebrate the anniversary of America's independence!",5)
hss.dlgA(co,hss.U,"Definitely!",1)
hss.evt(co,"~We hope you enjoyed participating in this year's 'From Sea to Shining Sea' Independence Day Special!~", "")
hss.evt(co,"~Happy Fourth of July from all of us here at Pixelberry Studios! Thanks for playing!~", "")
end
local sceneTable = {}
sceneTable["inter_preview"] = inter_preview
sceneTable["outro_premium_0087_revolutionary2016_1"] = outro_premium_0087_revolutionary2016_1
sceneTable["intro_premium_0087_revolutionary2016_2"] = intro_premium_0087_revolutionary2016_2
sceneTable["outro_premium_0087_revolutionary2016_2"] = outro_premium_0087_revolutionary2016_2
sceneTable["intro_premium_0087_revolutionary2016_3"] = intro_premium_0087_revolutionary2016_3
sceneTable["outro_premium_0087_revolutionary2016_3"] = outro_premium_0087_revolutionary2016_3
sceneTable["inter_ride"] = inter_ride
sceneTable["outro_premium_0087_revolutionary2016_4"] = outro_premium_0087_revolutionary2016_4
sceneTable["intro_premium_0087_revolutionary2016_5"] = intro_premium_0087_revolutionary2016_5
sceneTable["outro_premium_0087_revolutionary2016_5"] = outro_premium_0087_revolutionary2016_5
sceneTable["intro_premium_0087_revolutionary2016_6"] = intro_premium_0087_revolutionary2016_6
sceneTable["outro_premium_0087_revolutionary2016_6"] = outro_premium_0087_revolutionary2016_6
hss.runScene(sceneTable)
