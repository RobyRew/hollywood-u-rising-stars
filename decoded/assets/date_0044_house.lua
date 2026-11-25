function inter_preview(co)
hss.evt(co,"~Snapshot Dates are brief glimpses of the simpler things in love. Enjoy everything from lavish date nights to cozy moments of domestic fluff in these bite-sized quests.~", "")
hss.evt(co,"~In this Snapshot Date, visit Ethan Blake at his brand new apartment and help him make this house a home!~", "")
hss.markQuestScriptRequirementFinished()
end
function outro_date_0044_house_1(co)
hss.evt(co,"A few days after Ethan moves into a new apartment, you drop by with a potted succulent as a housewarming gift.", "")
hss.evt(co,"You slip in through the open door and take in the sparsely decorated living room that contains only a black couch and wall-mounted TV.", "")
hss.dlgA(co,hss.U,"Whoa. There's pretty much nothing here... Ethan, you home?",4)
hss.evt(co,"Ethan pops out of the bedroom dressed in a soft white tee and navy sweatpants, with a plush towel slung over one shoulder.", "")
hss.evt(co,"He grins upon spotting you, quickly crossing the room to greet you with a peck on the cheek.", "")
hss.dlgA(co,hss.E,"Hey, {YOU}. Just who I wanted to see.",1)
hss.dlgA(co,hss.U,"Really? Did we have a meeting that I forgot about?",4)
hss.dlgA(co,hss.E,"Nah. You're ~always~ just who I want to see.",7)
hss.dlgA(co,hss.U,"Smooth. I just came by to drop off a housewarming gift...",1)
hss.dlgA(co,hss.U,"But now I'm wondering where the rest of your stuff is. Are you still unpacking?",4)
hss.dlg(co,hss.E,"Nah, this is everything. I don't actually have a lot of stuff, besides my twenty-seven Armani suits.")
hss.dlg(co,hss.E,"Since I'm always out meeting clients or scouting new talent, I never bothered decorating my place.")
hss.dlgA(co,hss.U,"Well, that might be fine for a bachelor, but now you're with me. And if I'm going to be visiting you here, it needs to be...",1)
local choice = hss.showTextMenu(co, "What do you say?", "Chic!|Cool!|Comfy!");
if (choice == 0) then
hss.dlg(co,hss.U,"We have to get you some art for this wall, maybe a decorative lamp for that corner...")
elseif (choice == 1) then
hss.dlg(co,hss.U,"You've got so much extra space! You could fit something awesome in here... like a pool table!")
else
hss.dlg(co,hss.U,"You don't even have cushions for your couch! We ~have~ to fix that, stat.")
end
hss.dlg(co,hss.E,"Well, you clearly know what you're talking about, and I do want you to visit me often...")
hss.dlgA(co,hss.U,"So, shopping?",1)
hss.dlgA(co,hss.E,"I could never say no to you. Let's go.",1)
if (choice == 0) then
hss.evt(co,"You and Ethan head out to a local furniture shop, browsing the aisles hand in hand.", "")
hss.dlgA(co,hss.U,"This art deco print would look ~amazing~ on the wall by your kitchen.",1)
hss.dlg(co,hss.E,"Good eye. What do you think of that lamp? The one with the fanned shade?")
hss.dlgA(co,hss.U,"I can totally see it in your living room, casting a romantic glow over us as we cuddle on the couch...",9)
hss.dlgA(co,hss.E,"Sold. I'll take two.",7)
elseif (choice == 1) then
hss.evt(co,"You and Ethan head out to a local sporting goods shop, walking hand in hand as you browse the pool tables on display.", "")
hss.dlgA(co,hss.U,"Oooh, Ethan, look at this one! Red felt, mahogany rails...",1)
hss.dlg(co,hss.E,"Yeah, I could see something like this in my living room. Do you play a lot of pool, {YOU}?")
local choice = hss.showTextMenu(co, "What do you say?", "Yeah, I'm a pro!|Not really, I'm a beginner.");
if (choice == 0) then
hss.dlgA(co,hss.U,"I could teach you a thing or two.",1)
else
hss.dlgA(co,hss.U,"Guess you'll have to teach me a thing or two.",1)
end
hss.dlgA(co,hss.E,"Looking forward to it.",7)
else
hss.evt(co,"You and Ethan head out to a local linen shop, browsing the aisles hand in hand.", "")
hss.dlgA(co,hss.U,"Oh, what about this set of black and white throw pillows? They're so soft, ~and~ they fit in with the whole minimalist vibe you've already got going.",1)
hss.dlg(co,hss.E,"Good eye. How about this afghan over here? The blue could really make the whole apartment's color scheme pop.")
hss.dlgA(co,hss.U,"It's perfect. I can totally see us cuddling under that blanket after a long day of work...",9)
end
hss.showQuestComplete(co)
hss.evt(co,"After hauling your new purchases home, you and Ethan work on sprucing up his new apartment until sunset.", "")
hss.dlgA(co,hss.U,"Phew! That took ~way~ longer than I thought. I'm starving.",4)
hss.dlgA(co,hss.E,"Good thing I prepared a little something earlier... c'mere, {YOU}.",1)
if (choice == 0) then
hss.evt(co,"Ethan brings out two heaping bowls of spaghetti carbonara and a bottle of sparkling cider.", "")
hss.evt(co,"You join him on the couch, flicking on the new lamps to gently spotlight your faces as he settles close to you.", "")
elseif (choice == 1) then
hss.evt(co,"You join Ethan at the pool table, hopping up on the edge as he brings over two heaping bowls of spaghetti carbonara and a bottle of sparkling cider.", "")
else
hss.evt(co,"Ethan brings out two heaping bowls of spaghetti carbonara and a bottle of sparkling cider.", "")
hss.evt(co,"You join him on the couch, pulling the warm blue afghan over your legs as he settles close to you.", "")
end
hss.dlgA(co,hss.E,"Thanks for all your help today, {YOU}.",1)
hss.dlg(co,hss.E,"Ever since I struck out on my own, I haven't had a place that felt like ~home.~")
hss.dlgA(co,hss.U,"Well, we're off to a good start, but we can totally do more with this place. A warmer color for the walls, new curtains...",1)
hss.evt(co,"Ethan leans forward and cups your cheek, tilting your head in for a kiss.", "")
hss.dlgA(co,hss.E,"We can do all of that, but honestly? Home is wherever you are.",1)
hss.dlgA(co,hss.U,"Then I guess I'd better visit all the time.",1)
hss.dlgA(co,hss.E,"Sounds perfect to me.",1)
hss.evt(co,"You pull Ethan in for another kiss, smiling into it as he wraps his arms around you and holds you close...", "")
hss.evt(co,"~Stay tuned for more Snapshot Dates, coming soon to Amour!~", "")
end
local sceneTable = {}
sceneTable["inter_preview"] = inter_preview
sceneTable["outro_date_0044_house_1"] = outro_date_0044_house_1
hss.runScene(sceneTable)
