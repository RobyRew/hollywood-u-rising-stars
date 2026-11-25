require "hss"
function preview_date_0001_1(co)
hss.dlgA(co,hss.E,"There you are, {YOU}. Can we talk?",1)
hss.dlg(co,hss.E,"I know we've always kept things professional, but what would you say to going out with me sometime?")
local date = hss.showTextMenu(co, "What do you say?", "It's a date!|Let's keep this strictly business.")
if (date == 1) then
hss.dlg(co,hss.E,"Understood. Let's just forget I ever brought it up.")
else
hss.dlgA(co,hss.E,"You just made my day. I'll see you later tonight...",1)
hss.evt(co,"A few hours later...", "")
hss.evt(co,"You walk out of your dorm to find a sleek, black limousine purring by the curb. Ethan steps out, holding a bottle of champagne and a bouquet of exotic flowers.", "")
if hss.getCharacterGender("YOU") == hss.Gender.MALE then
hss.dlgA(co,hss.E,"Hey, is that Zac Efron I see? Nope, can't be. Way too sexy.",1)
else
hss.dlgA(co,hss.E,"Hey, is that Scarlett Johansson I see? Nope, can't be. Way too sexy.",1)
end
hss.dlgA(co,hss.U,"Wow! A limo? How'd you score that?",1)
hss.dlgA(co,hss.E,"Oh, this? Let's just say a certain limo driver owed me a favor.",1)
hss.dlgA(co,hss.E,"So, you ready for the night of your life?",1)
local choice = hss.showTextMenu(co, "What do you say?", "I was born ready!|Don't make promises you can't keep!")
if (choice == 0) then
hss.dlgA(co,hss.U,"What are we waiting for? Let's go!",1)
hss.dlgA(co,hss.E,"That's what I like to hear! A go-getter after my own heart.",1)
else
hss.dlgA(co,hss.U,"You sure you can live up to all that big talk?",1)
if hss.getCharacterGender("YOU") == hss.Gender.MALE then
hss.dlgA(co,hss.E,"Trust me, I'm not dumb enough to ever disappoint a guy like you.",1)
else
hss.dlgA(co,hss.E,"Trust me, I'm not dumb enough to ever disappoint a woman like you.",1)
end
end
hss.markQuestScriptRequirementFinished();
end
end
function outro_date_0001_1(co)
hss.evt(co,"Inside the limo, you cozy up against Ethan on luxurious leather. He pops the champagne cork and pours you a fizzing glass.", "")
hss.dlgA(co,hss.U,"So, what does tonight have in store for us?",1)
hss.dlg(co,hss.E,"Oh, nothing special. Taking you to a movie. Just your totally normal, standard first date...")
hss.dlgA(co,hss.E,"Only the movie happens to be the red carpet premiere of 'Avarice', the most expensive movie of all time!",1)
hss.dlgA(co,hss.U,"Whoa, I had no idea you got tickets! I dressed for a first date, not a movie premiere... I can't go like this!",4)
hss.dlgA(co,hss.E,"Relax, {YOU}. I've got it covered.",1)
hss.dlgA(co,hss.U,"Oh yeah? More trademark Ethan magic?",1)
hss.showQuestComplete(co)
hss.evt(co,"The limo parks along Rodeo Drive. Ethan leads you into a stream of sun-kissed shoppers and through the glass doors of Les Onereux Boutique.", "")
hss.dlgA(co,hss.U,"These outfits... they're incredible!",4)
hss.dlg(co,hss.E,"Oh, this isn't even where they keep the best stuff.")
hss.evt(co,"Ethan nods to the owner, who eagerly pushes open a panel in the wall... revealing a secret backroom full of unreleased items from next season's line!", "")
hss.dlgA(co,hss.E,"Pick something out for yourself. Zoe here tells me it's on the house.",1)
hss.dlgA(co,hss.U,"You're joking! Really? But they're so expensive!",4,hss.REWARD_COINS,500)
hss.dlgA(co,hss.E,"That's because they're the best. Long as you're with me, that's all you're gonna get!",1)
end
function outro_date_0001_2(co)
hss.evt(co,"After trying on an array of dazzling outfits, you step out of the dressing room wearing your favorite.", "")
hss.dlgA(co,hss.U,"So, how do I look?",1)
hss.evt(co,"Ethan stops chatting with the owner when he sees you. His jaw drops.", "")
hss.dlgA(co,hss.E,"You, uh... I...",4)
hss.dlgA(co,hss.U,"Speechless, for once?",1)
hss.showQuestComplete(co)
hss.evt(co,"As your limo pulls up to the historic Beijing Theater, you and Ethan step out. A mob of paparazzi turns its lenses on you, flashbulbs firing away!", "")
hss.dlgA(co,hss.E,"You're making them rabid, {YOU}!",1)
hss.evt(co,"Walking down the red carpet arm-in-arm with Ethan, you stop and...", "")
local choice = hss.showTextMenu(co, "How do you pose?", "Pose like a model!|Make a silly face!")
if (choice == 0) then
hss.evt(co,"You pose dramatically beside Ethan, soaking up the attention with a flawless smile!", "")
hss.dlgA(co,hss.U,"...",1)
hss.evt(co,"The paparazzi hoot and holler!", "")
hss.dlgA(co,hss.E,"All right, people! You can stop drooling!",1)
else
hss.evt(co,"You make a silly face, sticking out your tongue at the paparazzi! They laugh as they snap photos of your goofy expression.", "")
hss.dlgA(co,hss.U,"How was that?",1)
hss.dlgA(co,hss.E,"I once saw an MMA action star break down crying in front of this many cameras. And you've got 'em eating out of your hand.",1)
hss.dlgA(co,hss.E,"I gotta say, the confidence? Definitely a turn-on.",1)
end
hss.dlgA(co,hss.E,"Now let's get on inside. The movies wait for no one!",1)
end
function intro_date_0001_3(co)
hss.evt(co,"The security guards check you and Ethan off the list and welcome you inside. The huge theater is already packed!", "")
hss.evt(co,"While you gaze up with wonder at the ornamental vaulted ceiling, a tuxedoed man taps on Ethan's shoulder and whispers in his ear.", "")
hss.dlgA(co,hss.E,"Relax, Mark, didn't I say I've got it covered? I keep my promises.",1)
hss.dlgA(co,hss.U,"Everything okay, Ethan? If you need to handle something, I can just wait over--",2)
hss.dlgA(co,hss.E,"No way. Tonight, it's just you and me.",1)
hss.evt(co,"Ethan guides you to your seats. He takes your hand as the lights go down... and the movie starts!", "")
end
function outro_date_0001_3(co)
hss.evt(co,"On screen, a single mother sings to her daughter...", "")
hss.evt(co,"...unaware that a hostile alien is watching her from the closet!", "")
hss.dlgA(co,hss.U,"Whoa!",4)
hss.dlgA(co,hss.E,"Scared, {YOU}?",1)
local choice = hss.showTextMenu(co, "What do you say?", "Scared? More like terrified!|I'm scared I might start laughing!")
if (choice == 0) then
hss.evt(co,"Ethan lifts the armrest and puts his arm around you. You lean your head on his shoulder.", "")
hss.dlgA(co,hss.U,"I'm not scared anymore...",1)
else
hss.dlgA(co,hss.E,"Heh. Yeah... I ~know~ our crew's going to make better movies than this!",1)
hss.dlgA(co,hss.U,"You can count on it!",1)
end
hss.showQuestComplete(co)
hss.evt(co,"The credits roll, and the lights come up.", "")
hss.dlgA(co,hss.U,"How'd you like the movie, Ethan?",1)
hss.dlgA(co,hss.U,"...uh, Ethan?",4)
hss.dlgA(co,hss.E,"Zzzz... ten percent, or my client walks! Huh? What?",4)
hss.dlgA(co,hss.U,"Did you... fall asleep?",2)
choice = hss.showTextMenu(co, "What do you say?", "If you're tired, we can go home...|What, am I boring you or something?|WAKE UP!")
if (choice == 0) then
hss.dlgA(co,hss.E,"Tired? Are you kidding? I don't get tired. I don't have time for tired.",1)
hss.dlg(co,hss.E,"I worked three all-nighters this week, and I could run a marathon right now! No sweat!")
hss.dlgA(co,hss.U,"Ethan...",2)
elseif (choice == 1) then
hss.dlgA(co,hss.E,"Huh? No! Of course not, that's crazy talk!",4)
hss.dlgA(co,hss.E,"It was just a late night at the office last night... and the night before that... and then a couple more.",2)
else
hss.dlgA(co,hss.E,"Whoa! Okay, my adrenaline is ~definitely~ kicking in now! Sorry about that!",4)
hss.dlgA(co,hss.E,"It was just a late night at the office last night... and the night before that... and then a couple more.",2)
end
hss.dlg(co,hss.E,"Look, I'm making it up to you, I promise. You thought we were just doing the premiere tonight? Just watch!")
end
function intro_date_0001_4(co)
hss.evt(co,"You and Ethan file out with the other guests into the cool night.", "")
hss.dlg(co,hss.E,"Stay right here. I just need to make a couple quick calls and make sure everything's arranged...")
hss.evt(co,"You're lingering by the curbside lined with Maseratis and Lamborghinis... when you hear a familiar voice behind you!", "")
hss.dlgA(co,hss.C,"{YOU}! Fancy running into you here!",1)
end
function outro_date_0001_4(co)
hss.evt(co,"You spin around to find Chris Winters standing behind you on the red carpet!", "")
hss.dlg(co,hss.C,"{YOU}! What brings you here?")
hss.dlg(co,hss.U,"Actually... I'm here with someone.")
hss.evt(co,"Chris raises an eyebrow... then he spots Ethan talking a mile a minute into his phone.", "")
hss.dlg(co,hss.C,"Ah. Date night. Is it serious?")
local choice = hss.showTextMenu(co, "What do you say?", "I sure hope so.|It's just our first date.")
if (choice == 0) then
hss.dlg(co,hss.C,"Well... then I'm sure it is.")
else
hss.dlgA(co,hss.C,"I see he's pulling out all the stops. Smart man. He knows any guy would be lucky to have you.",1)
end
hss.dlg(co,hss.C,"Anyway, I've gotta jet, literally. Flying to Venice tonight, then Sao Paulo. Festival stuff. But... maybe I'll see you when I get back.")
hss.showQuestComplete(co)
hss.evt(co,"As Chris leaves, you rejoin Ethan, who's talking on the phone near the curb.", "")
hss.dlgA(co,hss.E,"I know it wasn't what we agreed on, but... yeah, well, see if you ever get work in this town again, pal!",3)
hss.dlgA(co,hss.U,"What's wrong?",2)
hss.dlgA(co,hss.E,"Just that flake of a limo driver--",4)
hss.dlgA(co,hss.U,"Don't worry about it. We can just call a cab. Where are we headed?",1)
hss.dlgA(co,hss.E,"Oh, you'll see. I don't want to spoil the surprise.",1)
end
function intro_date_0001_5(co)
hss.evt(co,"A short while later, you get let out high up in the hills. Ethan takes your hand and leads you down a path to the famous Hollywood sign overlooking the city.", "")
hss.dlgA(co,hss.U,"Wow! This view is beautiful! Wait, I thought people weren't even allowed to come up here! How'd you manage this?",4)
hss.dlgA(co,hss.E,"A magician never reveals his secrets.",1)
hss.evt(co,"You sit together inside one of the 'O's and gaze out at the city, which glitters like a thousand diamonds.", "")
hss.dlg(co,hss.U,"This is amazing, Ethan. It is! But...")
hss.dlgA(co,hss.U,"Why don't you tell me what's really going on? How did we get in here?",2)
end
function outro_date_0001_5(co)
hss.dlgA(co,hss.U,"You can tell me what's up, Ethan. How did you manage to get us in here?",2)
hss.dlg(co,hss.E,"It's nothing bad, {YOU}. Just made some calls, got the security guard a gig on Ariana Grande's tour. He owed me one.")
hss.dlg(co,hss.U,"And the clothes? The premiere? The limo?")
hss.dlg(co,hss.E,"Look, {YOU}, I network. I trade favors. That's how I get things done.")
hss.dlg(co,hss.E,"Everyone wants something. The boutique owner, the publicist at the premiere... even the limo driver has a brother trying to be an actor.")
hss.dlg(co,hss.E,"I make things happen for them. They return the favor. That's how it works around here.")
hss.showQuestComplete(co)
hss.dlgA(co,hss.U,"Wait, is that why you're so tired? Because you've been working all week to set everything up for tonight?",2)
hss.dlg(co,hss.U,"That's really sweet, Ethan, but you didn't have to run yourself ragged just for me.")
hss.dlg(co,hss.E,"I did it because I wanted to. Maybe you're used to guys not treating you the way you deserve, but with me, get used to it.")
if hss.getCharacterGender("YOU") == hss.Gender.MALE then
hss.dlg(co,hss.E,"Besides... if I don't act like I run the town, I wouldn't be able to keep a single client, let alone a guy like you.")
else
hss.dlg(co,hss.E,"Besides... if I don't act like I run the town, I wouldn't be able to keep a single client, let alone a girl like you.")
end
hss.dlgA(co,hss.U,"What do you mean?",4)
end
function outro_date_0001_6(co)
hss.evt(co,"Ethan shifts, uncomfortable. He takes a deep breath...", "")
hss.dlg(co,hss.E,"I grew up poor. See? How hard was that to say?")
hss.dlg(co,hss.E,"And I don't mean Hollywood poor, like when you have to sell a jet to pay alimony when your wife catches you with a waitress from Kinky Kitten's.")
hss.dlgA(co,hss.E,"I'm talking, 'food stamps', 'wear the same clothes every day' poor. One thing about my family, whatever we do, we do it all the way...",3)
hss.dlgA(co,hss.U,"Ethan, growing up poor is nothing to be ashamed of.",2)
hss.dlgA(co,hss.E,"Hah, tell that to the producers who laughed me out of their offices when I first came here.",1)
hss.dlg(co,hss.E,"Half this town started out rich and connected, and they're not gonna risk their millions on a plucky upstart from the wrong side of the tracks.")
hss.dlg(co,hss.E,"So if I don't project success morning, noon, and night, no one will want me to rep them, not even television extras... so I work as hard as I can.")
local choice = hss.showTextMenu(co, "What do you say?", "I know you do.|I'm just worried about you.")
if (choice == 0) then
hss.dlgA(co,hss.U,"I've never seen anyone as driven as you. And I know you're gonna get everything you want one day.",1)
hss.dlgA(co,hss.E,"I knew you'd understand. See, this is why I like you. You want success just as bad as I do.",1)
else
hss.dlgA(co,hss.U,"I don't want you to burn yourself out. I'm afraid you'll work so hard that you won't get to enjoy everything you earn.",2)
hss.dlg(co,hss.E,"I'm good, {YOU}. I promise. But I gotta say, it feels nice to have someone care. That's rare around here.")
end
hss.setGameProperty("DATES_ETHAN", "NUM_DATES", "1");
hss.showQuestComplete(co)
hss.dlgA(co,hss.E,"Heh, I worked so hard to convince you that I was Perfect Ethan, and you got me to throw it all out the window in a few seconds...",1)
local choice = hss.showTextMenu(co, "What do you do?", "Kiss him!|Hug him!|High-five him!")
if (choice == 0) then
hss.evt(co,"You silence Ethan with a long, slow kiss. After...", "")
hss.dlgA(co,hss.E,"Wow. There's some trademark {YOU} magic.",1)
elseif (choice == 1) then
hss.evt(co,"You bring Ethan in for a hug.", "")
hss.dlgA(co,hss.U,"Thanks for a fun date!",1)
else
hss.evt(co,"You give Ethan a high-five.", "")
hss.dlgA(co,hss.E,"Uh... go team?",4)
hss.dlgA(co,hss.U,"Yep! High-five for being a great date!",1)
end
hss.evt(co,"You gaze out together at the shining city lights... and soon enough, Ethan falls into a peaceful sleep on your shoulder.", "")
hss.dlgA(co,hss.U,"Sweet dreams, Ethan. I hope you make them all come true...",1)
hss.dlgA(co,hss.U,"...I hope we both do.",1)
hss.evt(co,"Want to keep dating Ethan? Stay tuned for more dates!", "")
hss.evt(co,"But don't be afraid to play the field! There's plenty of love to go around in Hollywood!", "")
rateTheGame = 0;
rateTheGame = hss.getGameProperty("date_0002_pool_5", "rateTheGameAddison")
if rateTheGame == nil then
hss.setQuestProperty("rateTheGameEthan", 1)
hss.showRateGame(co)
end
end
hss.checkEnvironment({"YOU"})
hss.runOpt()
