require "hss"
-- "Addison: The Pool Party"
function preview_date_0002_1(co)
hss.dlgA(co,hss.A,"We've really grown close as friends, but have you ever thought about making this something... more?",1)
local date = hss.showTextMenu(co, "What do you say?", "Let's go out sometime!|We're better off as friends.")
if (date == 1) then
hss.dlg(co,hss.A,"Oh... you're totally right. I'd never want to mess up an awesome friendship!")
else
hss.dlgA(co,hss.A,"In that case... let's go out tonight! I'm taking you on an awesome date to a fashion show!",1)
hss.evt(co,"A few hours later...", "")
hss.evt(co,"There's a knock on the door of your dorm room. You open it to find Addison in a colorful bikini!", "")
hss.dlgA(co,hss.A,"Hey there.",1)
hss.dlgA(co,hss.U,"I suddenly feel overdressed!",4)
hss.dlg(co,hss.U,"Wait. I thought you were taking me to a fashion show tonight!")
hss.dlgA(co,hss.A,"That's right. Jacob Bolano debuts all his ~new swimwear~ lines at a big pool party at his Palos Verdes mansion!",1)
hss.dlg(co,hss.A,"It's basically a who's-who of the style world, only with more skin!")
hss.dlgA(co,hss.U,"A bikini fashion ~pool party?~ Sounds like I'd better wear my suit!",1)
hss.markQuestScriptRequirementFinished();
end
end
function outro_date_0002_1(co)
hss.dlgA(co,hss.A,"I was going to ask if you're ready for this party, {YOU}...",4)
hss.dlgA(co,hss.A,"But now that I see you, I'm not sure if the party's ready for ~you!~ You look sensational!",1)
hss.dlgA(co,hss.U,"Forget about me, look at you. Are you sure ~you're~ not walking down the runway?",1)
hss.dlg(co,hss.A,"You're sweet, but you know... I don't belong in the spotlight.")
hss.dlgA(co,hss.U,"I'd beg to differ.",1)
hss.dlgA(co,hss.A,"Oh, hush. As much as I love flirting with you here, I'd much rather do it poolside. Let's go!",1)
hss.showQuestComplete(co)
hss.evt(co,"You and Addison hop in a cab, and the driver takes you up into Hollywood Hills...", "")
hss.dlgA(co,hss.A,"Thanks for agreeing to come, {YOU}! I've been such a shut-in lately!",1)
hss.dlgA(co,hss.A,"In the last two months, I've cleaned my closets, alphabetized my DVDs, and organized my shoe rack by designer!",1)
hss.dlgA(co,hss.U,"Sounds like you've had some time on your hands.",4)
hss.dlg(co,hss.A,"Let's just say I didn't want to leave the house for a while... but enough about that. This is about us having fun!")
hss.dlgA(co,hss.U,"I like fun.",1)
hss.evt(co,"The cab drops you and Addison at a sprawling Palos Verdes mansion with a gleaming roof.", "")
hss.evt(co,"An usher leads you through to a courtyard where an enormous pool sparkles in the brilliant afternoon sun, divided by a glowing runway.", "")
hss.dlgA(co,hss.U,"I wouldn't mind having one of these at my place.",4)
hss.dlgA(co,hss.A,"Tell me about it. Shall we take our seats?",1)
end
function intro_date_0002_2(co)
hss.evt(co,"A moment later, you're seated with Addison in a prime spot at the head of the runway.", "")
hss.dlgA(co,hss.U,"Front row? How did you snag these seats?",4)
hss.dlgA(co,hss.A,"It's all about who you know, remember? In this case, you know me.",1)
hss.evt(co,"Addison leans close, puts her hand on your arm, and whispers into your ear.", "")
hss.dlg(co,hss.A,"Just F.Y.I., sitting next to you is the wife of one of the biggest hip-hop stars in the biz. Next to me, the V.P. of Warner Brothers!")
hss.dlg(co,hss.A,"And behind us, basically the best player in the NBA.")
hss.dlgA(co,hss.U,"I've never seen so many famous people in so little clothing!",1)
hss.dlgA(co,hss.A,"Speaking of showing skin, it's pretty bright out. Would you mind putting some sunscreen on me?",1)
end
function outro_date_0002_2(co)
hss.dlg(co,hss.A,"I always get burned if I don't put on sunblock. You mind doing the honors?")
hss.dlgA(co,hss.U,"Don't have to ask me twice.",1)
hss.evt(co,"Addison turns her back to you. You squeeze out a cool dollop of sunscreen and put your hands against her smooth skin. She shivers.", "")
hss.dlgA(co,hss.A,"Ooh, it's cold.",1)
hss.dlgA(co,hss.U,"Sorry, I'll try to warm it up.",1)
hss.evt(co,"You rub your palms against her bare skin, moving from her shoulders down to the small of her back.", "")
hss.dlgA(co,hss.A,"Wow. You are crazy good with your hands, {YOU}. You'll have to give me a real massage sometime. Promise I'll return the favor.",1)
hss.dlgA(co,hss.U,"Can't wait.",1)
hss.showQuestComplete(co)
hss.evt(co,"The lights surrounding the pool change to a deep purple as an electronic beat pulses from the sound system! Addison takes your hand in hers...", "")
hss.dlgA(co,hss.U,"Does this mean what I think it does?",1)
hss.dlgA(co,hss.A,"It's starting!",1)
end
function intro_date_0002_3(co)
hss.evt(co,"The first bikini model struts down the runway toward you and Addison.", "")
hss.dlgA(co,hss.A,"I've worked with this model before. She's fantastic. Watch her work.",1)
if (hss.getCharacterType("YOU") == hss.CharacterType.FASHIONISTA) then
hss.dlgA(co,hss.U,"Relaxed, confident, perfect posture. The perfect body type for the bikini's design. She is selling the hell out of that swimsuit.",1)
hss.dlgA(co,hss.A,"You know your stuff. That's what I like about you.",1)
hss.dlgA(co,hss.U,"Is that all you like about me?",1)
hss.dlgA(co,hss.A,"Not even close.",1)
else
hss.dlgA(co,hss.U,"What should I be looking for?",1)
hss.dlg(co,hss.A,"The way she walks with her feet directly in front of the other, almost crossing, and every part of her so relaxed and comfortable. She owns that runway.")
end
hss.evt(co,"The next model arrives, wearing a bikini covered with lace ribbons and ruffles.", "")
hss.dlg(co,hss.A,"Your turn, {YOU}. What do you think about that outfit?")
local choice = hss.showTextMenu(co, "What do you say?", "It's daring and different!|It's awkward and out of place.");
if (choice == 0) then
hss.dlgA(co,hss.U,"I think it's brave and eye-catching! And isn't that the point?",1)
hss.dlgA(co,hss.A,"Jacob Bolano would agree with you. He's often pushing boundaries, taking inspiration from other facets of life.",1)
else
hss.dlgA(co,hss.U,"I'd feel bad for her if she wore that on the beach!",4)
hss.dlg(co,hss.A,"I'm with you on this one, {YOU}. Jacob Bolano likes to push boundaries, but that doesn't change the tenets of good taste.")
hss.dlg(co,hss.A,"He misses more than he hits, but when he hits, it changes fashion for years to come.")
end
hss.dlg(co,hss.A,"That's part of why I love this industry so much. Some people see it as just clothes. But I see every piece as a statement.")
hss.dlgA(co,hss.A,"I'm not always the best at expressing myself with words...",2)
hss.dlg(co,hss.A,"Sometimes, people communicate better with looks and gestures. Not to mention their hairstyles and fashion choices!")
hss.dlgA(co,hss.A,"And a person's clothes can say a ~lot~ about them!",1)
hss.dlgA(co,hss.U,"You've thought about this a lot, haven't you?",1)
hss.dlgA(co,hss.U,"So what does ~my~ outfit say to you?",1)
hss.dlgA(co,hss.A,"It says, 'Addison, you struck sexy gold'.",1)
hss.evt(co,"Another waiter arrives, this time with sparkling water and champagne!", "")
hss.dlgA(co,hss.A,"I think tonight just got even better...",1)
end
function outro_date_0002_3(co)
hss.evt(co,"The waiter holds up the tray of drinks.", "")
local tooMuch = 0;
local choice = hss.showTextMenu(co, "What do you take?", "Water.|Champagne.");
hss.evt(co,"You and Addison raise your glasses as bikini models sashay down the runway in front of you...", "")
hss.dlgA(co,hss.A,"A toast... to me. Because here with you, I feel like the luckiest girl in the world.",1)
hss.evt(co,"You smile and take a sip, the bubbles dancing across your tongue.", "")
if (choice == 1) then
choice = hss.showTextMenu(co, "What do you do?", "Have another sip.|Put down the glass.");
if (choice == 0) then
hss.dlgA(co,hss.U,"This is SO good.",1)
hss.dlgA(co,hss.A,"Did you know that champagne cannot be called champagne unless the grapes that make the wine come from the Champagne region of France?",1)
hss.dlgA(co,hss.U,"Really? I'm learning a lot from you.",1)
hss.dlgA(co,hss.A,"And I have ~so much~ more I want to teach you.",1)
choice = hss.showTextMenu(co, "What do you do?", "Have another sip.|Put down the glass.");
if (choice == 0) then
hss.dlgA(co,hss.U,"Mmmm...",1)
hss.evt(co,"Addison leans into you, and you feel intoxicated by the sweet smell of her hair. She whispers in your ear.", "")
hss.dlgA(co,hss.A,"I want you to kiss me tonight, {YOU}.",1)
hss.dlgA(co,hss.U,"That can be arranged.",1)
choice = hss.showTextMenu(co, "What do you do?", "Have another sip.|Put down the glass.");
if (choice == 0) then
hss.dlgA(co,hss.U,"This champagne is like you, Addison. It's bubbly. And it makes me feel good.",1)
hss.dlgA(co,hss.U,"And... it's kind of a vague yellow-ish color.",4)
hss.dlgA(co,hss.A,"Are you drunk already? When did you become such a lightweight?",1)
hss.dlgA(co,hss.U,"Not drunk, just tipsy.",1)
hss.evt(co,"Addison sets down her glass.", "")
hss.dlgA(co,hss.A,"Same here. It's the best level to be at for an event like this...",1)
choice = hss.showTextMenu(co, "What do you do?", "Have another sip.|Put down the glass.");
if (choice == 0) then
tooMuch = 1;
end
end
end
end
end
if (tooMuch == 1) then
hss.dlgA(co,hss.U,"Just one more sip...",1)
hss.dlgA(co,hss.A,"Have it your way, but don't say I didn't warn you!",1)
hss.dlgA(co,hss.U,"Trust me, I can handle my champagne--",1)
hss.evt(co,"Just as you say the words, your glass falls from your hand, shattering!", "")
hss.evt(co,"Startled, the model at the end of runway slips and topples into the water!", "")
hss.dlgA(co,hss.U,"Okay, maybe I had a ~little~ too much to drink.",4)
else
hss.evt(co,"You lace your fingers with Addison's and watch the show together.", "")
hss.evt(co,"Just then, two models bump into each other on the runway! They both topple over, splashing into the pool! The audience laughs and claps!", "")
hss.dlgA(co,hss.U,"Good thing I didn't get too drunk, or that might've been me falling in!",4,hss.REWARD_COINS,50)
end
hss.dlgA(co,hss.A,"Don't worry, {YOU}. This just means we're getting an early start on the afterparty. Look!",1)
hss.evt(co,"The other models gleefully leap into the pool! One by one, the guests in the audience, each in their own swimsuits, dive in after them!", "")
hss.dlgA(co,hss.A,"It's a pool party too, remember? Let's dive in!",1)
hss.showQuestComplete(co)
hss.evt(co,"Addison jumps into the pool! She treads water, smiling up at you.", "")
hss.dlgA(co,hss.A,"Come on in! What are you waiting for?",1)
end
function intro_date_0002_4(co)
hss.evt(co,"From the pool, Addison waves for you to join her! You jog to the edge and...", "")
local choice = hss.showTextMenu(co, "What do you do?", "Swan dive!|Do a cannonball!");
if (choice == 0) then
hss.dlgA(co,hss.U,"Here we go!",1)
hss.evt(co,"You gracefully dive hands-first into the warm water with hardly a splash!", "")
hss.dlgA(co,hss.A,"Smooth! Consider me impressed.",1)
else
hss.dlgA(co,hss.U,"Caaannooonbaaaall!",1)
hss.evt(co,"You tuck your legs and plunge into the water with a huge splash, dousing all the other guests!", "")
hss.dlgA(co,hss.A,"I had a feeling you were making waves in Hollywood! Didn't realize it was literally!",1)
hss.dlgA(co,hss.U,"When am I ever going to get another chance to splash a bunch of A-Listers?",1)
hss.dlgA(co,hss.A,"I'm just happy to be with someone who knows how to have fun.",1)
hss.dlgA(co,hss.A,"You bring out a different side of me, {YOU}. I like it.",1)
end
hss.evt(co,"Some of the other guests, buzzed from the champagne, start up a flirty game of Marco Polo!", "")
hss.dlgA(co,hss.A,"Hey, {YOU}, wanna join in?",1)
end
function outro_date_0002_4(co)
hss.evt(co,"You and Addison join the game of Marco Polo in the pool! Everyone laughs and splashes each other as one of the models blindly swims around!", "")
hss.evt(co,"Later, you're the one caught in the middle, calling out with your eyes closed...", "")
hss.dlgA(co,hss.U,"Marco!",1)
hss.dlgA(co,hss.A,"Polo!",1)
hss.evt(co,"You hear Addison's voice clearly among everybody's responses. You swim toward it, and your hands graze her hips beneath the water.", "")
hss.dlgA(co,hss.A,"Out of everyone in the pool, how'd you manage to catch ~me?~",1)
hss.dlgA(co,hss.U,"Guess we have a connection.",1)
hss.showQuestComplete(co)
hss.evt(co,"As the sun goes down, you and Addison towel off by the poolside.", "")
hss.dlgA(co,hss.A,"So? Did you have a good time tonight, {YOU}?",1)
hss.dlg(co,hss.U,"I had a great time at my first ever pool party fashion show! And I know just the thing to cap it off...")
hss.evt(co,"You lean forward. Addison drapes her arms over your shoulders, smiling shyly. Your lips draw close...", "")
hss.dlg(co,"MAY","Excuse me, Addison Sinclair? I'm May Gordon, L.A. Biweekly.")
hss.dlgA(co,hss.A,"Huh?",4)
hss.dlg(co,"MAY","I have a few questions for you.")
end
function outro_date_0002_5(co)
--	local choice = hss.showTextMenu(co, "Set fame level.", "0.|1.|2.|3.|4.|5.");
--	hss.setGameProperty("FAME_TRACKER", "NUM_FAME", choice);
hss.dlgA(co,hss.A,"Sorry, I... can't do an interview right now. Thanks.",2)
hss.dlgA(co,"MAY","I think you're going to want to hear what I have to say!",3)
hss.dlgA(co,hss.U,"Addison, what's going on?",4)
hss.dlg(co,"MAY","There are surfacing reports of a scandal on the set of ~'Far Side of the Sun'~... any comment?")
hss.dlgA(co,hss.A,"Please. This is a party.",2)
hss.dlg(co,"MAY","There's talk that you might have been sleeping with--")
hss.dlgA(co,hss.A,"--please stop...",2)
hss.dlg(co,"MAY","Is it true that you--")
hss.dlgA(co,hss.U,"She told you to leave us alone!",3)
local fame = 0;
if (hss.hasGameProperty("FAME_TRACKER", "NUM_FAME")) then
fame = hss.getGameProperty("FAME_TRACKER", "NUM_FAME");
end
if (fame >= 4) then
hss.dlgA(co,"MAY","How noble. But if I were you, I'd stay away from this girl. You're just the next sucker she's using for her career.",1)
else
hss.dlgA(co,"MAY","Listen, whoever you are. I'm a Pulitzer-winning reporter, and you're ~nobody.~",3)
end
hss.dlgA(co,"MAY","Now, if you don't mind, my readers want some answers from Miss Sinclair.",3)
local choice = hss.showTextMenu(co, "What do you do?", "Insult her back!|Shove her into the pool!");
if (choice == 0) then
hss.dlgA(co,hss.U,"Why don't you go snap photos from a dumpster, you bottom-feeder?",3)
hss.dlgA(co,"MAY","Excuse me?",3)
hss.dlgA(co,hss.U,"Look around. Everyone else here creates something that brings joy to the world. But you? You trade on people's misery.",3)
hss.dlgA(co,hss.U,"What? Is your life so pathetic that you have to spend it tearing down everyone else's?",3)
hss.evt(co,"Just then, you spot Jacob Bolano pointing May out to his security staff.", "")
hss.dlgA(co,"MAY","Er, I have to go. But otherwise, I totally would have gotten the last word!",4)
hss.evt(co,"May scurries off!", "")
else
hss.evt(co,"You push May backwards, and she teeters over into the pool!", "")
hss.dlgA(co,hss.U,"Consider that a 'no comment'.",3)
hss.evt(co,"May sputters, spitting out water as the party guests laugh!", "")
hss.dlgA(co,"MAY","You think this is funny or something? Believe me, this will be going in my article! Front page!",3)
end
hss.dlg(co,hss.A,"That was incredible, {YOU}! No one's ever stood up for me like that.")
hss.dlg(co,hss.U,"Well, get used to it. Now come on, let's get outta here.")
hss.setGameProperty("DATES_ADDISON", "NUM_DATES", "1");
hss.showQuestComplete(co)
hss.evt(co,"Later that night, you walk Addison back to her dorm on campus.", "")
hss.dlgA(co,hss.U,"Are you gonna be okay?",2)
hss.dlg(co,hss.A,"Yeah, I'm a lot better now. Better than I've been before. It's been a long time since anyone stood up for me.")
hss.dlgA(co,hss.U,"It was no big deal.",1)
hss.evt(co,"You stop, just outside her dorm...", "")
hss.dlg(co,hss.U,"So...")
hss.dlg(co,hss.A,"So...")
local choice = hss.showTextMenu(co, "What do you do?", "Kiss her!|Hug her!");
if (choice == 0) then
hss.evt(co,"You lean forward and kiss Addison underneath the moonlight. She blushes.", "")
hss.dlgA(co,hss.A,"Wow. You're an amazing kisser, too. Is there no end to your talents?",1)
hss.dlgA(co,hss.U,"The only way to find out is to keep going out with me.",1)
hss.dlgA(co,hss.A,"Gladly.",1)
else
hss.evt(co,"You give Addison a big hug!", "")
hss.dlgA(co,hss.A,"Aww! I love hugs!",1)
hss.evt(co,"You pull back.", "")
hss.dlgA(co,hss.U,"That was for such a wonderful night, Addi!",1)
hss.dlgA(co,hss.A,"And perhaps for many more to come...",1)
end
hss.evt(co,"Want to keep dating Addison? Stay tuned for more dates!", "")
hss.evt(co,"But don't be afraid to play the field! There's plenty of love to go around in Hollywood!", "")
rateTheGame = 0;
rateTheGame = hss.getGameProperty("date_0001_premiere_6", "rateTheGameEthan")
if rateTheGame == nil then
hss.setQuestProperty("rateTheGameAddison", 1)
hss.showRateGame(co)
end
end
hss.checkEnvironment({"YOU"})
hss.runOpt()
