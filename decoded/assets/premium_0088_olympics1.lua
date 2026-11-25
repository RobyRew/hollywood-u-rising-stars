function inter_preview(co)
hss.evt(co,"One day, you're walking through campus with Addison when you hear someone shout your name...", "")
hss.dlg(co,hss.E,"{YOU}, ~there~ you are. You really need to answer your phone at a time like this.")
hss.dlgA(co,hss.U,"Huh? But it didn't ring...",4)
hss.evt(co,"You pull out your phone to check, but Ethan waves it away.", "")
hss.dlg(co,hss.E,"That's not important now. What's important is that I just arranged a ~huge~ opportunity for you.")
hss.dlgA(co,hss.A,"Of course you did. Do you ever take a break, Ethan?",1)
hss.dlgA(co,hss.E,"Nope. Now, {YOU}...",7)
if (hss.getCharacterType("YOU") == hss.CharacterType.DIRECTOR) then
hss.dlg(co,hss.E,"How would you like to direct a TV spot... for ~the~ Olympic Games?")
elseif (hss.getCharacterType("YOU") == hss.CharacterType.FASHIONISTA) then
hss.dlg(co,hss.E,"How would you like to design the wardrobe for a TV spot... for ~the~ Olympic Games?")
else
hss.dlg(co,hss.E,"How would you like to star in a TV spot... for ~the~ Olympic Games?")
end
hss.dlgA(co,hss.U,"Seriously? That would be amazing!",4)
hss.dlgA(co,hss.A,"Imagine the exposure you'd get, {YOU}! The whole world will see it!",1)
hss.dlg(co,hss.E,"There's just one catch... the client wants to see a demo before they make their final decision.")
hss.dlg(co,hss.U,"That shouldn't be a problem.")
hss.dlgA(co,hss.A,"Yeah, we only go to the top film university in the country. With our friends' help, we can whip up an awesome demo in no time!",1)
hss.dlgA(co,hss.U,"We can even host our own Olympics with Hollywood-themed events...",1)
hss.dlgA(co,hss.A,"Like Agent Gymnastics or a 50m Catwalk Race!",1)
hss.dlg(co,hss.E,"That's the kind of creativity the client is looking for.")
hss.dlgA(co,hss.U,"Then let's do this!",1)
hss.evt(co,"~Here's your chance to compete in the Hollywood U-lympic Games! And as an added bonus, starting this quest also unlocks a SECOND quest, Striking Gold, available next week! That means you get TWO quests for the price of one!~", "")
hss.markQuestScriptRequirementFinished()
end
function outro_premium_0088_olympics1_1(co)
hss.evt(co,"Later that afternoon, you and the camera crew are ready for the Opening Ceremony of the Hollywood U-lympic Games!", "")
hss.dlg(co,hss.A,"We're all set over here... you ready to light the torch, {YOU}?")
hss.dlgA(co,hss.U,"Oh, yeah.",1)
hss.dlg(co,hss.E,"Our prop master has come up with a few options. Which 'torch' should we use, {YOU}?")
local choice = hss.showTextMenu(co, "What do you choose?", "A tiki torch!|A candle!|A lantern!");
if (choice == 0) then
hss.evt(co,"You pick up the tiki torch, feeling the weight of it in your hand.", "")
hss.dlg(co,hss.U,"This is perfect. Tall, majestic... plus, it has a beach-y flair!")
hss.evt(co,"You light the torch and lift it high above your head...", "")
hss.dlg(co,hss.U,"May this flame represent the spirit of competition and sportsmanship!")
hss.evt(co,"You place the torch in the middle of the upper field, where a stand keeps it steady. The cameraman pushes in, capturing every moment...", "")
elseif (choice == 1) then
hss.evt(co,"You pick up the huge candle, feeling the weight of it in your hand.", "")
hss.dlg(co,hss.U,"This is perfect! Plus, it smells ~good.~")
hss.evt(co,"You light the candle and lift it up...", "")
hss.dlg(co,hss.U,"May this flame represent the spirit of competition and sportsmanship!")
hss.evt(co,"You place the candle in a holder in the middle of the upper field. The cameraman pushes in, capturing every moment...", "")
else
hss.evt(co,"You pick up the lantern, feeling the weight of it in your hand.", "")
hss.dlg(co,hss.U,"This is perfect. It'll be much brighter than real fire.")
hss.evt(co,"You flick on the lantern and lift it high above your head...", "")
hss.dlg(co,hss.U,"May this light represent the spirit of competition and sportsmanship!")
hss.evt(co,"You place the lantern in the middle of the upper field. The cameraman pushes in, capturing every moment...", "")
end
hss.setQuestProperty("torch", choice)
hss.dlgA(co,hss.U,"Let the Hollywood U-lympic Games begin!",1)
hss.showQuestComplete(co)
hss.evt(co,"After the Opening Ceremony, you and your friends prepare for the first event...", "")
hss.dlg(co,hss.U,"Is everyone ready for the 50m Catwalk Race? Where are the models?")
hss.dlgA(co,hss.A,"Getting touch-ups in hair and makeup. They'll be out in a few minutes.",1)
hss.dlg(co,hss.E,"In the meantime, let's make sure that runway is ready for the ultimate catwalk competition.")
end
function intro_premium_0088_olympics1_2(co)
hss.evt(co,"Addison leads you into the Fashionista Dorm, where the main lobby has been transformed with a winding Seussical runway...", "")
hss.evt(co,"{QUEST_CHAR_1_NAME} is strutting along the catwalk in precariously tall heels, with {QUEST_CHAR_2_NAME} close behind.", "")
hss.dlgA(co,hss.U,"Oh, this runway is perfect. We'll be able to get some stunning shots at the top of these hills... who constructed this thing?",1)
hss.dlgA(co,hss.A,"Fashion students. They can do way more than design clothes... especially if it means showing off those clothes!",1)
hss.dlg(co,hss.E,"{QUEST_CHAR_1_NAME}, {QUEST_CHAR_2_NAME}, you guys ready?")
hss.dlgA(co,hss.Q2,"Bring it on!",5)
hss.dlgA(co,hss.Q1,"I was ~born~ for this event.",1)
hss.dlg(co,hss.U,"Whoever finishes the runway with the fiercest walk wins!")
hss.evt(co,"At your signal, {QUEST_CHAR_1_NAME} and {QUEST_CHAR_2_NAME} line up with the other models at the start of the runway...", "")
hss.dlg(co,hss.U,"On your marks... get set...")
hss.dlgA(co,hss.U,"~Go!~",1)
end
function outro_premium_0088_olympics1_2(co)
hss.evt(co,"{QUEST_CHAR_1_NAME} and {QUEST_CHAR_2_NAME} start down the runway, strutting their stuff at a quick pace! You and Addison provide color commentary as the models race by...", "")
hss.dlgA(co,hss.A,"And they're off! {QUEST_CHAR_2_NAME} is in the lead, but the other models are a dolman sleeve away...",1)
hss.dlgA(co,hss.Q1,"You can't handle ~this~ fierceness.",1)
hss.dlg(co,hss.U,"Oooooh, {QUEST_CHAR_1_NAME} pulls out a smize that could turn someone to stone.")
hss.dlgA(co,hss.Q2,"Too bad you're no Medusa, {QUEST_CHAR_1_NAME}!",3)
hss.dlgA(co,hss.A,"The models are rounding the final corner and...",1)
if (hss.getCharacterReferenceNameByProperty("QUEST_CHAR_1") == "LANCE") then
hss.dlg(co,hss.U,"What's this? Lance seems to have gotten distracted by his ~own~ reflection!")
hss.dlgA(co,"LANCE","Lookin' good.",7)
hss.dlg(co,hss.U,"Lance, eyes on the prize!")
hss.dlgA(co,"LANCE","They are!",4)
hss.dlg(co,hss.A,"{QUEST_CHAR_2_NAME} easily takes the lead... and we've got a winner folks!")
hss.dlgA(co,hss.Q2,"Woooo!",5)
hss.dlgA(co,"LANCE","~Technically,~ you guys got to see me strut my stuff, so we're all winners here!",7)
hss.dlgA(co,hss.Q2,"Sure, but I'm still the only one who gets a medal!",1)
elseif (hss.getCharacterReferenceNameByProperty("QUEST_CHAR_2") == "LANCE") then
hss.dlg(co,hss.U,"What's this? Lance seems to have gotten distracted by his ~own~ reflection!")
hss.dlgA(co,"LANCE","Lookin' good.",7)
hss.dlg(co,hss.U,"Lance, eyes on the prize!")
hss.dlgA(co,"LANCE","They are!",4)
hss.dlg(co,hss.A,"{QUEST_CHAR_1_NAME} easily takes the lead... and we've got a winner folks!")
hss.dlgA(co,hss.Q1,"Woooo!",5)
hss.dlgA(co,"LANCE","~Technically,~ you guys got to see me strut my stuff, so we're all winners here!",7)
hss.dlgA(co,hss.Q1,"Sure, but I'm still the only one who gets a medal!",1)
else
hss.dlg(co,hss.U,"Looks like we're in for a photo-finish, folks...")
hss.dlg(co,hss.A,"And it's... {QUEST_CHAR_2_NAME}!")
hss.dlgA(co,hss.Q2,"Woooo!",5)
end
hss.showQuestComplete(co)
hss.evt(co,"After the race is complete, you and Ethan check out the footage...", "")
hss.dlg(co,hss.E,"Nicely done, {YOU}.")
if (hss.getCharacterType("YOU") == hss.CharacterType.DIRECTOR) then
hss.dlg(co,hss.E,"Some of these shots are Audrey-worthy.")
elseif (hss.getCharacterType("YOU") == hss.CharacterType.FASHIONISTA) then
hss.dlg(co,hss.E,"The models' outfits really pop on camera.")
else
hss.dlg(co,hss.E,"Your color commentary with Addison is fantastic.")
end
hss.dlgA(co,hss.U,"And that's just the tip of the iceberg! What's up next?",1)
hss.dlg(co,hss.E,"An event that will require agility and lightning-fast reflexes... the Tweet-Off!")
end
function intro_premium_0088_olympics1_3(co)
hss.evt(co,"For the next event, your crew heads over to the Movie Star Dorm. {QUEST_CHAR_1_NAME} and {QUEST_CHAR_2_NAME} are on stage, tweeting away...", "")
hss.dlgA(co,hss.U,"Oh, are you two practicing already?",1)
hss.dlgA(co,hss.Q2,"Practicing?",4)
hss.dlg(co,hss.U,"For the Tweet-Off...")
hss.dlgA(co,hss.Q1,"Huh? I'm taking a selfie for my O.O.T.D.!",4)
hss.dlg(co,hss.U,"Well, put away those personal tweets and prepare to fire off these hashtags...")
hss.dlgA(co,hss.U,"Fastest fingers get the gold!",1)
end
function outro_premium_0088_olympics1_3(co)
hss.evt(co,"The camera zooms in on your face as you review the list of hashtags for the Tweet-Off...", "")
hss.dlg(co,hss.U,"Hmm... some of these are pretty good. 'Hashtag squadgoals' is a classic, but not very long...")
hss.dlgA(co,hss.U,"I think we'll need something a little more challenging.",1)
hss.dlg(co,hss.A,"What hashtag do you want to add, {YOU}?")
local choice = hss.showTextMenu(co, "Which hashtag do you choose?", "#FirstAnnualHollywoodUlympics!|#AlwaysWinningNeverLosing!|#{YOU}IsNumberOne!");
if (choice == 0) then
hss.dlg(co,hss.A,"Great idea! We'll get great exposure from a hashtag like that!")
hss.dlgA(co,hss.U,"Exactly.",1)
elseif (choice == 1) then
hss.dlg(co,hss.U,"Gotta get them in that championship mindset.")
else
hss.dlgA(co,hss.U,"After all, it's the truth.",1)
hss.dlgA(co,hss.A,"Whatever you say, {YOU}.",1)
end
hss.dlg(co,hss.E,"Everyone all set?")
hss.evt(co,"{QUEST_CHAR_2_NAME} does a couple quick finger stretches.", "")
hss.dlgA(co,hss.Q2,"Let's do this!",3)
hss.dlg(co,hss.U,"Ready... steady... ~TWEET!~")
hss.evt(co,"{QUEST_CHAR_2_NAME} and {QUEST_CHAR_1_NAME} start typing furiously on their phones...", "")
hss.dlg(co,hss.U,"{QUEST_CHAR_1_NAME} is pulling out some no-look tweeting. Very impressive.")
hss.dlg(co,hss.A,"But there was a typo! That'll cost you.")
hss.evt(co,"You watch the monitor above them, which posts the tweets as they pop up.", "")
hss.dlg(co,hss.U,"It's a close race... it's gonna come down to that final tweet!")
hss.evt(co,"{QUEST_CHAR_1_NAME}'s fingers fly over the phone screen...", "")
if (choice == 0) then
hss.dlgA(co,hss.Q1,"~'About to win the tweet-off at the #FirstAnnualHollywoodUlympics!'~",1)
elseif (choice == 1) then
hss.dlgA(co,hss.Q1,"~'{QUEST_CHAR_2_NAME} is going down, cuz I'm #AlwaysWinningNeverLosing!'~",1)
else
hss.dlgA(co,hss.Q1,"~'About to win this tweet-off... #{YOU}IsNumberOne!'~",1)
end
hss.dlgA(co,hss.U,"And we have a winner!",1)
hss.showQuestComplete(co)
hss.evt(co,"The first day of the Hollywood U-lympics is drawing to a close, but there's still one event left...", "")
hss.dlg(co,hss.U,"Addi, is everything set up in the Director Dorm?")
hss.dlg(co,hss.A,"The crew is putting the finishing touches on the equipment right now.")
hss.dlg(co,hss.E,"What's up next?")
hss.dlgA(co,hss.A,"You'll see...",1)
hss.dlgA(co,hss.U,"Hey Ethan, do you know any agents who are willing to ~jump through hoops~ for their clients?",1)
end
function intro_premium_0088_olympics1_4(co)
hss.evt(co,"In the Director Dorm, a large stage has been set up with different rhythmic gymnastics props scattered about, including hoops and ribbons.", "")
hss.evt(co,"{QUEST_CHAR_1_NAME} and {QUEST_CHAR_2_NAME} are stretching and preparing for their routines...", "")
if (hss.getCharacterReferenceNameByProperty("QUEST_CHAR_1") == "ETHAN") or (hss.getCharacterReferenceNameByProperty("QUEST_CHAR_2") == "ETHAN") then
hss.dlg(co,hss.E,"I can't believe I let you talk me into this.")
hss.dlgA(co,hss.U,"You'll thank me once the client sees what you're willing to do for them.",1)
hss.dlg(co,hss.E,"We'll see about that.")
end
hss.dlg(co,hss.A,"Okay, it's almost time to start!")
hss.dlgA(co,hss.U,"You ready to get your judge on, Addi?",1)
hss.dlgA(co,hss.A,"I've waited my whole life for this.",1)
hss.evt(co,"{QUEST_CHAR_1_NAME} and {QUEST_CHAR_2_NAME} size each other up...", "")
hss.dlgA(co,hss.Q1,"It's ~on!~",3)
end
function outro_premium_0088_olympics1_4(co)
hss.evt(co,"{QUEST_CHAR_1_NAME} takes the stage as {QUEST_CHAR_2_NAME} waits close by... the music begins, and {QUEST_CHAR_1_NAME} starts a rhythmic gymnastics routine!", "")
hss.dlgA(co,hss.Q1,"Spin... kick... flip... ~jump!~",4)
hss.evt(co,"You and Addison watch as {QUEST_CHAR_1_NAME} dances around the stage...", "")
hss.dlgA(co,hss.U,"Whoa. I didn't know {QUEST_CHAR_1_NAME} could do a side aerial!",4)
hss.dlg(co,hss.A,"Agents are always full of surprises!")
hss.evt(co,"Later, it's {QUEST_CHAR_2_NAME}'s turn...", "")
hss.dlgA(co,hss.Q2,"I hope you're ready to be blown away.",8)
hss.dlgA(co,hss.U,"Show us what you've got!",1)
hss.evt(co,"{QUEST_CHAR_2_NAME} starts the routine with a round-off back handspring!", "")
hss.dlgA(co,hss.A,"Impressive!",1)
hss.evt(co,"As the final agent does one last spin, allowing the ribbon to twirl to the ground, you and Addison confer on the scores...", "")
hss.dlg(co,hss.A,"What do you think, {YOU}? Who should win?")
hss.dlg(co,hss.U,"It's a close competition, but I think one contestent is ~just~ above the others...")
local choice = hss.showTextMenu(co, "What do you say?", "{QUEST_CHAR_1_NAME}!|{QUEST_CHAR_2_NAME}!");
if (choice == 0) then
hss.dlgA(co,hss.U,"Congratulations, {QUEST_CHAR_1_NAME}! You're the gold medalist!",1)
hss.dlgA(co,hss.Q1,"Seriously?",4)
hss.dlgA(co,hss.Q1,"First place podium, here I come!",5)
else
hss.dlgA(co,hss.U,"Congratulations, {QUEST_CHAR_2_NAME}! You're the gold medalist!",1)
hss.dlgA(co,hss.Q2,"Seriously?",4)
hss.dlgA(co,hss.Q2,"First place podium, here I come!",5)
end
hss.showQuestComplete(co)
hss.evt(co,"At the end of Day One of the Hollywood U-lympic Games, you, Ethan, and Addison go over all your footage...", "")
hss.dlg(co,hss.E,"We've got some fantastic shots in here, {YOU}. You really pulled it off... and I can tell the client will be pleased.")
hss.dlgA(co,hss.A,"Plus, it was super fun!",1)
hss.dlgA(co,hss.U,"I can't wait for Day Two!",1)
hss.dlg(co,hss.E,"You'd better get some sleep, {YOU}. I have a feeling the next stage of our Games will be even more intense than today...")
hss.evt(co,"~Who will reign supreme as the Hollywood U-lympic Games continue on Day Two? Tune in next time to find out in the next part of this epic Olympic quest, 'Striking Gold'!~", "")
end
local sceneTable = {}
sceneTable["inter_preview"] = inter_preview
sceneTable["outro_premium_0088_olympics1_1"] = outro_premium_0088_olympics1_1
sceneTable["intro_premium_0088_olympics1_2"] = intro_premium_0088_olympics1_2
sceneTable["outro_premium_0088_olympics1_2"] = outro_premium_0088_olympics1_2
sceneTable["intro_premium_0088_olympics1_3"] = intro_premium_0088_olympics1_3
sceneTable["outro_premium_0088_olympics1_3"] = outro_premium_0088_olympics1_3
sceneTable["intro_premium_0088_olympics1_4"] = intro_premium_0088_olympics1_4
sceneTable["outro_premium_0088_olympics1_4"] = outro_premium_0088_olympics1_4
hss.runScene(sceneTable)
