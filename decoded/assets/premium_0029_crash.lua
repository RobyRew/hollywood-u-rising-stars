function inter_preview(co)
hss.evt(co,"You're enjoying a quick pick-me-up at the coffee shop on campus, when suddenly...", "")
hss.dlgA(co,hss.CR,"{YOU}! I was hoping you'd be here! I really need your help with something...",1)
hss.dlg(co,hss.U,"Is it finding your shoes?")
hss.dlgA(co,hss.CR,"My what?",4)
hss.evt(co,"You look pointedly at Crash's bare feet.", "")
hss.dlgA(co,hss.CR,"Oh! Nah, I left them at home. My feet got all soft and wimpy over the winter, so I gotta toughen them up!",1)
hss.dlg(co,hss.CR,"Anyway, that's not important right now! I'm working on a new spy thriller called 'Out With a Bang', and I noticed something ~crazy!~")
if hss.getCharacterGender("YOU") == hss.Gender.MALE then
hss.dlg(co,hss.CR,"You're a ~dead~ ringer for Jeff Donnelly, who plays one of the main henchmen. So when his usual stunt double got sick, naturally I thought of you!")
else
hss.dlg(co,hss.CR,"You're a ~dead~ ringer for Jess Donnelly, who plays one of the main henchmen. So when her usual stunt double got sick, naturally I thought of you!")
end
hss.dlg(co,hss.U,"That sounds cool, Crash, but I'm not really a stunt person...")
if (hss.getCharacterType("YOU") == hss.CharacterType.MOVIE_STAR) then
hss.dlg(co,hss.U,"Ask me to give an epic monologue right before the final battle, and I'm there. Ask me to ~fight~ in the final battle...")
elseif (hss.getCharacterType("YOU") == hss.CharacterType.FASHIONISTA) then
hss.dlg(co,hss.U,"Ask me to design an action-proof bodysuit, and I'm there. Ask me to ~do~ the action ~in~ the bodysuit...")
else
hss.dlg(co,hss.U,"Ask me to capture a fast-paced action sequence, and I'm there. Ask me to ~fight~ in the action sequence...")
end
hss.dlg(co,hss.U,"Well, that's probably best left to the professionals, like you.")
hss.dlg(co,hss.CR,"Don't be silly! There's nothing to it. Jumping out of airplanes and fake fighting is easy. ~Anyone~ can do it...")
hss.dlg(co,hss.U,"If you say so... what exactly does this gig involve?")
hss.dlg(co,hss.CR,"We'll do some stage fighting in a martial arts sequence, shoot a chase scene on top of a moving train, jump off an exploding building...")
hss.dlg(co,hss.CR,"And get this... ~Chris Winters~ is playing the villain! In the climax, we fight him and his minions while ~skiing down a mountain!~ It's gonna be sick!")
hss.dlgA(co,hss.U,"That ~does~ sound pretty sick...",1)
hss.dlgA(co,hss.CR,"Plus, we'll get to hang out while I show you the ropes! It'll be like a crash course in stunt work.",1)
hss.dlgA(co,hss.CR,"Dude... ~Crash~ course.",4)
hss.dlgA(co,hss.U,"You should trademark that.",1)
hss.dlg(co,hss.CR,"Anyway, it'll be great! Nothing bonds two people together like raw, unshackled, butt-clenching adrenaline! You in?")
hss.markQuestScriptRequirementFinished()
end
function outro_premium_0029_crash_1(co)
hss.dlgA(co,hss.U,"I'm in!",1)
hss.dlgA(co,hss.CR,"Yes! This is gonna be ~epic!~",5)
hss.dlg(co,hss.CR,"We'll split the pay fifty-fifty, meaning we'll each get, like, twenty-five bucks...")
hss.dlgA(co,hss.U,"Wait, this gig only pays ~fifty dollars?!~",4)
hss.dlg(co,hss.CR,"I mean, yeah. That's what the producer and I agreed on, and it's my usual fee... I know it's probably less than you're used to, but it'll be so much fun to work together!")
hss.dlgA(co,hss.U,"Crash, you should be getting paid ~way~ more than that.",2)
hss.dlgA(co,hss.CR,"Why? I'm not doing anything ~that~ hard. Like I always say, anyone can jump off a burning building.",1)
hss.showQuestComplete(co)
hss.dlgA(co,hss.U,"But...",2)
hss.dlgA(co,hss.CR,"Don't worry about it, {YOU}. Just meet me at this address bright and early tomorrow morning!",1)
end
function intro_premium_0029_crash_2(co)
hss.evt(co,"The next day, you show up at the 'Out With a Bang' set just as the sun is rising over the hills...", "")
hss.dlgA(co,hss.U,"So... tired...",2)
hss.dlgA(co,hss.CR,"Wake up, wake up, wake up! You can't do stunts if you're asleep!",1)
hss.dlg(co,hss.U,"Then I guess I'm not doing stunts today.")
hss.dlgA(co,hss.CR,"Come on, lazybones.",1)
hss.evt(co,"Crash ushers you over to where {QUEST_CHAR_1_NAME} is going over the scene with {QUEST_CHAR_2_NAME}. {QUEST_CHAR_1_NAME} hands you a movie script.", "")
hss.dlgA(co,hss.U,"Where's ~your~ stunt double, {QUEST_CHAR_2_NAME}?",4)
hss.dlgA(co,hss.Q2,"My only 'stunt' today is getting tossed through a paper screen, so {QUEST_CHAR_1_NAME} said I could do it myself!",1)
hss.dlg(co,hss.Q1,"Okay, guys, this is the scene where the villain, the nefarious Doctor Glass, sends his henchmen to capture Agent Jackson Flynn. I've highlighted all the lines you and Crash should know.")
hss.dlgA(co,hss.U,"Why do we need to know these lines? Aren't we just doing stunt work?",4)
hss.dlgA(co,hss.Q2,"To help you get into character! You're still playing a part, after all.",1)
hss.dlgA(co,hss.CR,"The ~best~ part. Think of the actors like Bruce Banner, and we're the Hulk!",1)
hss.dlg(co,hss.Q1,"Plus, it'll help me know where to splice in shots of the main actor later.")
hss.dlg(co,hss.Q1,"Crash is Flynn's stunt double, so he'll be fighting {QUEST_CHAR_2_NAME} and {YOU}. Everyone ready?")
hss.dlgA(co,hss.U,"No!",4)
hss.dlgA(co,hss.CR,"Ready!",1)
end
function outro_premium_0029_crash_2(co)
hss.evt(co,"Crash goes over the fight choreography with you and {QUEST_CHAR_2_NAME} while {QUEST_CHAR_1_NAME} makes sure that the cameraman is ready to capture every kick and punch.", "")
hss.dlg(co,hss.CR,"Okay {YOU}, when you come at me I'm gonna try to shield myself with this board and you're gonna break it in half!")
hss.dlgA(co,hss.U,"And ~how~ do I do that, exactly?",4)
hss.dlg(co,hss.CR,"It's not as solid as it looks. Don't punch the board itself, punch ~through~ the board!")
hss.dlg(co,hss.CR,"Then you go to tackle me and I'll throw you onto the mat. Make sure you breathe ~out~ as you land, okay?")
hss.dlgA(co,hss.U,"Uh... okay.",4)
hss.dlg(co,hss.CR,"Then {QUEST_CHAR_2_NAME} grabs me from behind and we grapple. As soon as I toss {QUEST_CHAR_2_NAME} through that panel, I want you to grab something and try to hit me in the face.")
hss.dlg(co,hss.U,"Any preference as to ~what~ I swing at your face?")
hss.dlgA(co,hss.CR,"Surprise me.",1)
hss.dlgA(co,hss.Q1,"And... ~ACTION!~",4)
hss.evt(co,"You and {QUEST_CHAR_2_NAME} drop into fighting stances, cautiously approaching Crash...", "")
hss.dlgA(co,hss.Q2,"You can't stop Doctor Glass...",3)
hss.dlgA(co,hss.U,"You're outnumbered and outmatched. Surrender!",3)
hss.dlgA(co,hss.CR,"Never!",3)
hss.evt(co,"You wind up for a punch, and Crash grabs a board to shield himself. You punch...", "")
local board = hss.showTextMenu(co, "Where do you punch?", "The board!|Through the board!", false, 3);
if (board == 1) then
hss.evt(co,"The board splinters as your fist tears through it, narrowly missing Crash's head!", "")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward0") == nil then
hss.setQuestProperty("reward0",1)
hss.dlgA(co,hss.U,"Hyah!",3,hss.REWARD_COINS,25)
else
hss.dlgA(co,hss.U,"Hyah!",3)
end
else
hss.evt(co,"Your knuckles connect with the wood with a solid ~thunk.~", "")
hss.dlgA(co,hss.U,"Ow! Ow ow ow...",4)
hss.evt(co,"Behind the camera, {QUEST_CHAR_1_NAME} motions for you to keep going.", "")
end
hss.evt(co,"You leap forward to tackle Crash! Tossing the board aside, Crash falls back, pulling you down with him. He plants both feet in your stomach!", "")
hss.dlgA(co,hss.U,"Aaaaahhhh!",4)
hss.evt(co,"Crash extends his legs, launching you into the air! You flip head over heels, falling with your back towards the mat! As you hit, you...", "")
local throw = hss.showTextMenu(co, "What do you do?", "Breathe out!|Breathe in!|Hold your breath!", false, 3);
if (throw == 0) then
hss.evt(co,"You breathe out just before you hit, landing solidly on the mat.", "")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward1") == nil then
hss.setQuestProperty("reward1",1)
hss.dlgA(co,hss.U,"Whoa, that didn't even hurt!",4,hss.REWARD_COINS,25)
else
hss.dlgA(co,hss.U,"Whoa, that didn't even hurt!",4)
end
else
if (throw == 1) then
hss.evt(co,"You breathe in just before you hit, and all the wind is driven out of you by the impact!", "")
elseif (throw == 2) then
hss.evt(co,"You hold your breath until you hit, and all the wind is driven out of you by the impact!", "")
else
hss.evt(co,"You hit the ground hard, and all the wind is driven out of you by the impact!", "")
end
hss.dlgA(co,hss.U,"Ooomph!",4)
end
hss.evt(co,"You scramble to your feet as Crash wrestles with {QUEST_CHAR_2_NAME}.", "")
hss.dlgA(co,hss.Q2,"Just give in... we won't let you escape!",3)
hss.dlgA(co,hss.CR,"I'm afraid you don't have a choice.",3)
hss.evt(co,"With a mighty heave, Crash throws {QUEST_CHAR_2_NAME} through a sliding paper screen! As he turns to confront you, you grab...", "")
local kick = hss.showTextMenu(co, "What do you grab?", "A chair!|A lamp!|A wooden sword!");
if (kick == 0) then
hss.evt(co,"You swing the wooden chair right at Crash's face!", "")
hss.dlgA(co,hss.CR,"~Yaaaaaaa!~",3)
hss.evt(co,"Crash whirls, his leg a blur as it strikes the chair with a ~crack!~ The chair flies out of your hands and hits the wall, shattering into pieces!", "")
elseif (kick == 1) then
hss.evt(co,"You throw the heavy ceramic lamp right at Crash's face!", "")
hss.dlgA(co,hss.CR,"~Yaaaaaaa!~",3)
hss.evt(co,"Crash whirls, his leg a blur as it strikes the lamp, which explodes in mid-air!", "")
else
hss.evt(co,"You swing the wooden sword right at Crash's face!", "")
hss.dlgA(co,hss.CR,"~Yaaaaaaa!~",3)
hss.evt(co,"Crash whirls, his leg a blur as it strikes the sword with a ~crack!~ The blade snaps in half, leaving you holding a splintered handle!", "")
end
hss.dlgA(co,hss.U,"Whoa...",4)
hss.showQuestComplete(co)
hss.evt(co,"Several takes later...", "")
hss.dlg(co,hss.Q1,"All right, that's a wrap! Great job on that scene, everyone.")
hss.dlg(co,hss.Q1,"Especially you, Crash. Where'd you learn to fight like that? You're a machine!")
hss.dlg(co,hss.CR,"Oh, it's no biggie. I've been doing martial arts since I was little.")
hss.dlg(co,hss.U,"Aww... tiny Crash doing karate sounds adorable.")
hss.dlg(co,hss.CR,"They started me on judo, actually. Since then I've done jiu-jitsu, muay thai, tae kwon do... and pretty much everything else.")
hss.dlgA(co,hss.U,"Wow... any blackbelts?",4)
hss.dlg(co,hss.CR,"Yeah... like, eight, maybe? I lost count.")
hss.dlg(co,hss.CR,"I had a ~ton~ of energy as a kid. Any time my parents tried to sit me down to do homework, I'd end up climbing the walls or trying to do flips off the couch.")
hss.dlg(co,hss.CR,"They hoped I'd learn some discipline from all the martial arts classes, which I totally did! I just ~also~ learned how to butterfly-kick stuff off the counters...")
hss.dlg(co,hss.U,"I bet they weren't super into that.")
hss.dlg(co,hss.CR,"Yeah... they're good people, they just don't get the stunt thing.")
hss.dlg(co,hss.CR,"When they hear 'stuntman' they don't think 'professional' so much as 'reckless thrill seeker who's gonna crack his head open one of these days.'")
hss.dlgA(co,hss.CR,"Parents, right? Anyway, it's almost time for the train scene! We should get to the next set.",1)
hss.dlg(co,hss.U,"Right behind you...")
end
function intro_premium_0029_crash_3(co)
hss.evt(co,"Crash leads you to the next set... a long train in front of a huge green screen!", "")
hss.dlgA(co,hss.Q2,"Hey, guys! You're just in time... we're about to start shooting soon.",1)
hss.dlg(co,hss.Q3,"You ready to join our henchmen crew?")
hss.dlgA(co,hss.U,"Absolutely! Also, can I just say that you two look ~amazing?~",1)
hss.dlgA(co,hss.Q2,"Thanks! I'm feeling very evil chic.",1)
hss.dlg(co,hss.CR,"So in this scene, the three of you are chasing Flynn across the top of the train as it barrels toward a tunnel!")
hss.dlg(co,hss.CR,"The train won't be moving forward, but it'll sway back and forth so we get the right movement in the shot. The green screen will do the rest.")
hss.dlg(co,hss.CR,"After you jump between the cars and capture me, they'll move a big foam arch down the train to make it look like we're going into a tunnel. Make sure you hit the deck, or you'll get knocked off the train! Any questions?")
hss.dlg(co,hss.U,"Yeah, is it too late for me to pass on the whole ~jumping between train cars~ thing?")
hss.dlgA(co,hss.CR,"Yup! Now, take your marks...",1)
hss.evt(co,"You, {QUEST_CHAR_2_NAME}, and {QUEST_CHAR_3_NAME} line up on top of the last train car. Crash stands one car ahead.", "")
hss.dlgA(co,hss.CR,"And... ~go!~",1)
end
function outro_premium_0029_crash_3(co)
hss.evt(co,"The train beneath your feet starts to move, and you, {QUEST_CHAR_2_NAME}, and {QUEST_CHAR_3_NAME} start running toward Crash!", "")
hss.dlgA(co,hss.Q3,"There he is! Catch him!",3)
hss.dlgA(co,hss.Q2,"We can't let Flynn get away again!",3)
hss.evt(co,"{QUEST_CHAR_2_NAME} and {QUEST_CHAR_3_NAME} vault from the last car onto the one ahead. You run after them and...", "")
local jump = hss.showTextMenu(co, "What do you do?", "Jump!|Stop!|Sprint!", false, 3);
if (jump == 0) then
hss.evt(co,"You leap onto the next train car, maintaining your balance!", "")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward0") == nil then
hss.setQuestProperty("reward0",1)
hss.dlgA(co,hss.U,"Don't stop now! We have to get Flynn!",3,hss.REWARD_COINS,25)
else
hss.dlgA(co,hss.U,"Don't stop now! We have to get Flynn!",3)
end
hss.evt(co,"Up ahead, {QUEST_CHAR_2_NAME} tackles Crash and they tumble onto the roof of the train car.", "")
hss.evt(co,"You catch up with {QUEST_CHAR_3_NAME} and you both watch as {QUEST_CHAR_2_NAME} struggles to put a pair of handcuffs on Crash.", "")
hss.dlgA(co,hss.Q3,"We've got you now, Agent Flynn!",3)
hss.dlgA(co,hss.CR,"Think so?",3)
hss.evt(co,"You look up, and see the entrance of a tunnel speeding towards you!", "")
hss.dlgA(co,hss.U,"Ack!",4)
local tunnel = hss.showTextMenu(co, "What do you do?", "Stand your ground!|Hit the deck!", false, 3);
if (tunnel == 1) then
hss.evt(co,"You drop to your stomach just in time! The tunnel entrance ~whooshes~ past overhead as you all cling to the roof of the train.", "")
hss.evt(co,"On the other side of the tunnel, you carefully get to your feet.", "")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward1") == nil then
hss.setQuestProperty("reward1",1)
hss.dlgA(co,hss.U,"You're mine, Flynn!",3,hss.REWARD_COINS,25)
else
hss.dlgA(co,hss.U,"You're mine, Flynn!",3)
end
hss.dlgA(co,hss.CR,"Not on your life!",3)
hss.evt(co,"Crash rolls off the side of the train! The three of you run to the edge and peer down.", "")
hss.dlgA(co,hss.Q3,"What now?",4)
hss.dlgA(co,hss.U,"There's ~no way~ he survived that fall.",3)
hss.dlg(co,hss.Q2,"Come on then, let's tell the Doctor.")
hss.evt(co,"The director shouts 'Cut!' as Crash peeks his head out from under the train.", "")
hss.dlgA(co,hss.CR,"Great job, guys! That was fantastic!",1)
else
hss.dlgA(co,hss.U,"Aaaah!",4)
hss.evt(co,"The tunnel entrance catches you in the stomach, knocking you off the train and onto a crash mat!", "")
hss.dlgA(co,hss.Q3,"{YOU}!",4)
hss.evt(co,"The director shouts 'Cut!' as everyone gathers around you to make sure you're okay...", "")
hss.dlgA(co,hss.U,"Oof... I'm fine. Sorry, everyone.",2)
hss.dlg(co,hss.CR,"That's okay, {YOU}. We'll just go again.")
end
else
if (jump == 2) then
hss.evt(co,"You keep sprinting... straight off the train car!", "")
else
hss.evt(co,"You reach the end of the train car... and lose your balance!", "")
end
hss.dlgA(co,hss.U,"Aaaah!",4)
hss.evt(co,"You fall onto a crash mat in between the cars.", "")
hss.dlgA(co,hss.Q3,"{YOU}!",4)
hss.evt(co,"The director shouts, 'Cut!' as everyone gathers around you to make sure you're okay...", "")
hss.dlgA(co,hss.U,"Sorry, everyone.",2)
hss.dlg(co,hss.CR,"That's okay, {YOU}. We'll just go again.")
end
hss.showQuestComplete(co)
hss.evt(co,"After running through the scene several more times, you and Crash look over the footage with the director.", "")
hss.dlg(co,hss.U,"Whoa. Crash, that roll off the roof of the train was incredible! How'd you catch that ladder without even looking?")
hss.dlgA(co,hss.CR,"It's not that great. Look... you can see exactly when I brace myself to grab it.",2)
hss.dlgA(co,hss.U,"I... don't think I can.",4)
hss.dlgA(co,hss.CR,"You, {QUEST_CHAR_2_NAME}, and {QUEST_CHAR_3_NAME} look amazing though. By the last take, you were leaping over the cars like you've been doing this your whole life!",1)
hss.dlg(co,hss.U,"It feels like I have! You're a great coach.")
hss.dlg(co,hss.CR,"Well, let's hope you keep that enthusiasm up... tomorrow, we have to escape from the stronghold of Doctor Glass, a.k.a. ~Chris Winters~ as it self-destructs around us!")
hss.dlg(co,hss.CR,"You guys should head out, get a good night's rest...")
hss.dlgA(co,hss.U,"Are ~you~ not going home? It's getting late.",4)
hss.dlg(co,hss.CR,"Nah. I think I need a few more takes of my fall to get it perfect. I want it to look really ~real,~ you know?")
hss.dlgA(co,hss.U,"Crash, you've been doing stunts all day. You deserve a break! Have you even eaten anything?",2)
hss.dlgA(co,hss.CR,"Oh man, I totally haven't! Thanks for the reminder. I've got food in the break room, I'll go eat it now.",4)
hss.evt(co,"Crash heads to the break room, and you start to pack up your things.", "")
hss.dlgA(co,hss.U,"Oh, I forgot to ask when we're shooting tomorrow!",4)
hss.evt(co,"You find Crash sitting alone in the break room, punching a bag of instant ramen to break it up. He opens the bag, adds in some hot sauce from a packet, and pops a chunk of noodles into his mouth.", "")
hss.dlgA(co,hss.U,"Dry ramen? ~That's~ your dinner?",4)
hss.dlgA(co,hss.CR,"{YOU}! Uh... it's not as bad as it looks. Hot sauce is basically a vegetable, right?",4)
hss.dlgA(co,hss.U,"Crash... that can't be good for you.",2)
hss.dlg(co,hss.CR,"I'm used to it. Stunt doubles aren't exactly raking in the dough, you know? We gotta make do with the gigs we can get, and even those contracts are usually only for a few days.")
hss.dlg(co,hss.U,"But...")
hss.dlgA(co,hss.CR,"Please don't worry about me, {YOU}, it's totally fine. I'm okay with living that broke stuntman life as long as I get to keep doing awesome stuff!",2)
hss.dlg(co,hss.CR,"Now, go get some rest. I need you in top form tomorrow!")
end
function inter_escape(co)
hss.evt(co,"Early the next morning, a helicopter flies you to the next shooting location for 'Out With a Bang'... Doctor Glass's mountain stronghold!", "")
hss.dlg(co,hss.CR,"So in this scene, I've convinced your character to help me destroy Doctor Glass's freeze ray, saving the world.")
hss.dlg(co,hss.CR,"He's pretty mad about that, obviously, so he tries to kill us both by blowing up the building while he escapes out the back.")
hss.dlg(co,hss.U,"Yeah, about that... how do ~we~ avoid getting blown up with it?")
hss.dlgA(co,hss.CR,"Because we know exactly ~how~ it's gonna blow up! We sprint through the closing blast doors, vault over the falling ceiling beam, dodge the exploding control panel...",1)
hss.dlg(co,hss.CR,"Then we dive through that breakaway glass and fall a few stories onto the airbag below! Don't worry, they'll wait to set off the ~big~ explosion until we're clear of the window.")
hss.dlg(co,hss.U,"Right... that's comforting. Here's hoping I don't freak out.")
hss.evt(co,"The director calls for quiet on the set... then yells 'Action!'", "")
hss.dlgA(co,hss.U,"Here we go!",3)
hss.evt(co,"You and Crash run toward a pair of sturdy metal doors as they begin to close! Crash runs through the doors, and you...", "")
local choice = hss.showTextMenu(co, "What do you do?", "Slip!|Trip!|Sprint!", false, 4);
if (choice == 2) then
hss.evt(co,"You put on an extra burst of speed, easily slipping between the closing doors!", "")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward0") == nil then
hss.setQuestProperty("reward0",1)
hss.dlgA(co,hss.CR,"Nice!",1,hss.REWARD_COINS,25)
else
hss.dlgA(co,hss.CR,"Nice!",1)
end
else
hss.evt(co,"You stumble, banging your shoulder against one of the doors on your way through.", "")
hss.dlgA(co,hss.U,"Ow!",4)
hss.dlgA(co,hss.CR,"Keep up, {YOU}!",4)
end
hss.evt(co,"Right ahead of you, a beam breaks free from the ceiling and crashes to the floor! You...", "")
local choice = hss.showTextMenu(co, "What do you do?", "Jump!|Trip!|Stumble!", false, 4);
if (choice == 0) then
hss.evt(co,"You vault over the fallen beam and keep running! Beside you, Crash does a dive roll over the beam, smoothly rolling to his feet!", "")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward1") == nil then
hss.setQuestProperty("reward1",1)
hss.dlgA(co,hss.CR,"Woo! We're unstoppable!",1,hss.REWARD_COINS,25)
else
hss.dlgA(co,hss.CR,"Woo! We're unstoppable!",1)
end
else
hss.evt(co,"You run smack into the fallen beam, tumbling over it and landing awkwardly on the other side!", "")
hss.dlgA(co,hss.U,"Oof!",4)
hss.evt(co,"Crash vaults easily over the beam, stopping to help you up.", "")
hss.dlgA(co,hss.CR,"Come on! We've gotta keep moving!",4)
end
hss.evt(co,"You and Crash keep running through the control room, the walls crumbling around you! To your left, a control panel violently explodes! You...", "")
local choice = hss.showTextMenu(co, "What do you do?", "Dodge!|Freeze!|Stop!", false, 4);
if (choice == 0) then
hss.evt(co,"You dodge to the right, avoiding most of the flying debris.", "")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward2") == nil then
hss.setQuestProperty("reward2",1)
hss.dlgA(co,hss.CR,"Good job, {YOU}! Now it's time for the grand finale...",1,hss.REWARD_COINS,25)
else
hss.dlgA(co,hss.CR,"Good job, {YOU}! Now it's time for the grand finale...",1)
end
else
hss.evt(co,"You stop dead in your tracks! Crash tackles you to the ground just as the panel explodes, spraying hot chunks of plastic and metal in every direction!", "")
hss.dlgA(co,hss.U,"Ack! Sorry.",4)
hss.dlgA(co,hss.CR,"Don't apologize, just run! It's time for the grand finale...",4)
end
hss.evt(co,"Side by side, you and Crash charge towards the huge panoramic window that overlooks the snowy mountainside.", "")
hss.dlgA(co,hss.U,"Crash? I think I'm freaking out a little...",4)
hss.dlgA(co,hss.CR,"Don't think! Just juuuuuuuuump!",1)
hss.evt(co,"As one, you dive through the huge glass pane, shattering it into a thousand pieces! As you start to fall, a plume of fire bursts through the window above your heads!", "")
hss.dlgA(co,hss.U,"~Aaaaaaahhhhh!~",4)
hss.dlgA(co,hss.CR,"~Yeeeeaaahhh!!!~",5)
hss.markQuestScriptRequirementFinished()
end
function outro_premium_0029_crash_4(co)
hss.evt(co,"After plummeting through the frigid mountain air, you both hit the airbag with a soft ~thump,~ laughing as it starts to deflate around you.", "")
hss.dlgA(co,hss.U,"I can't believe we just did that! My heart's beating so fast!",4)
hss.dlgA(co,hss.CR,"That's how you know you're alive, {YOU}! Feel that white-hot adrenaline pumping in your veins? Doesn't it feel like you could do ~anything?~",1)
hss.dlgA(co,hss.U,"You're right! I feel invincible!",1)
hss.dlgA(co,hss.CR,"I feel like I could kick a hole in the sun!",5)
hss.showQuestComplete(co)
hss.evt(co,"Crew members help you and Crash climb out of the half-deflated airbag. Several insist on shaking Crash's hand, their faces awestruck.", "")
hss.dlgA(co,hss.CR,"Thanks, guys. I had a great time up there! Glad it was fun to watch, too.",1)
hss.dlg(co,hss.U,"And the fun's not over yet! We've got one more scene, right?")
hss.dlgA(co,hss.CR,"Not just any scene, the ~final chase.~ The villain is unmasked... and it's our job to take him and his minions out before he can escape!",1)
hss.dlgA(co,hss.U,"Sounds exciting!",1)
hss.dlgA(co,hss.CR,"It's ~double~ exciting, because the villain we're chasing is ~Chris Winters!~",1)
hss.dlgA(co,hss.CR,"I've watched 'The Last Lumberjack' like, twenty times! You think it'd be weird if I asked him to put me in a headlock for a quick selfie?",1)
end
function intro_premium_0029_crash_5(co)
hss.evt(co,"Snow-topped mountains rise all around as you and your friends prepare to film the final action sequence of 'Out With a Bang'!", "")
hss.dlg(co,hss.Q1,"Finally, I'm branching out into acting! I'm following in the footsteps of Timberlake and Rihanna...")
hss.dlg(co,hss.Q2,"{QUEST_CHAR_1_NAME}, can we get an in-costume selfie for my fashion blog? We're evil minion twinsies!")
hss.dlgA(co,hss.U,"Here, I'll take the picture. Say 'freeze ray!'",1)
hss.evt(co,"After a round of photos, everyone straps into their skis. Crash does a few experimental jumps and spins, twirling his ski poles like batons.", "")
hss.dlgA(co,hss.CR,"Ready to kick some villain butt, {YOU}?",1)
hss.dlgA(co,hss.U,"~So~ ready! Now we just need our villain...",1)
hss.evt(co,"You hear the rumble of an engine, and a sleek black snowmobile pulls up in front of you. The snowmobile's rider revs the engine and removes his helmet.", "")
hss.dlgA(co,hss.C,"We meet again, Agent Flynn...",1)
hss.dlg(co,hss.U,"Hey, Chris! Sexy evil scientist is a good look for you.")
hss.dlgA(co,hss.C,"Thanks, {YOU}. I've gotta say, this is a bit more exciting than my usual ski retreats.",1)
hss.dlgA(co,hss.U,"What, you don't always get ~chased~ down the mountain?",1)
hss.dlgA(co,hss.C,"There ~was~ that time a fan spotted me on the chairlift and tried to follow me down a black diamond... but that's a story for another day.",1)
hss.evt(co,"Chris takes his place at the head of his henchman army, and the director yells 'Action!'", "")
end
function outro_premium_0029_crash_5(co)
hss.evt(co,"After the first take of the final action scene, you join the crew to review the footage. The director frowns as on-screen, you and Crash mow down henchmen left and right.", "")
hss.dlg(co,hss.C,"Yeah... something's definitely missing. This scene isn't as thrilling as I thought it would be.")
hss.dlgA(co,hss.U,"I see what you mean. It feels a little generic.",2)
hss.evt(co,"The director suggests adding in more henchman...", "")
hss.dlgA(co,hss.CR,"Are you kidding? That's the ~opposite~ of what we should do!",4)
hss.evt(co,"Everyone turns to look at Crash, who blushes.", "")
hss.dlgA(co,hss.CR,"Uh, sorry. Never mind.",2)
hss.dlg(co,hss.U,"No, wait. What'd you mean by that?")
hss.dlg(co,hss.CR,"If you want the fight to mean something, you've gotta ~reduce~ the scale... make it more personal.")
hss.dlgA(co,hss.U,"So... what if we cut out all the henchmen except {QUEST_CHAR_1_NAME} and {QUEST_CHAR_2_NAME}?",4)
hss.dlgA(co,hss.CR,"Yeah! And we make it a ~real~ fight. None of this one-hit-K.O. business.",1)
hss.evt(co,"The director nods thoughtfully. Soon, you're back at the top of the slope with cameras rolling.", "")
hss.dlgA(co,hss.C,"Take them ~out.~",3)
hss.dlgA(co,hss.Q2,"My pleasure!",3)
hss.evt(co,"{QUEST_CHAR_2_NAME} attacks Crash, their ski poles clashing like swords! Next, {QUEST_CHAR_1_NAME} swoops in and grabs the back of your coat.", "")
hss.dlgA(co,hss.Q1,"You'll be sorry you ever ~dreamed~ of turning against Doctor Glass, traitor!",3)
hss.dlgA(co,hss.U,"We'll see about that...",3)
hss.evt(co,"You struggle, flying over the snow at breakneck speeds! Eventually, you manage to break free and throw {QUEST_CHAR_1_NAME} off balance!", "")
hss.dlgA(co,hss.Q1,"Noooooo!",4)
hss.evt(co,"{QUEST_CHAR_1_NAME} tumbles down the slope, skis and poles scattering in every direction! Ahead of you, Crash and {QUEST_CHAR_2_NAME} hit a bump, flying into the air!", "")
hss.dlgA(co,hss.Q2,"Aaaaahhh!",4)
hss.evt(co,"{QUEST_CHAR_2_NAME} lands in a snowbank, sinking neck-deep in powder! Crash does a backflip and lands back on his skis!", "")
hss.dlgA(co,hss.CR,"~Woo!~",5)
hss.evt(co,"You reach the bottom of the slope. The director grins, flashing you and Crash the thumbs-up.", "")
hss.dlg(co,hss.U,"Looks like someone's idea worked out! You've got great instincts, Crash!")
hss.dlgA(co,hss.CR,"Naw, I just watch way too many action movies.",1)
hss.dlg(co,hss.C,"Well I'll be sure to watch ~you~ more closely, Crash. I've got a good feeling about you.")
hss.showQuestComplete(co)
hss.evt(co,"Chris pats Crash on the back and heads over to talk to the producer. Around you, everyone else starts to pack up for the day.", "")
hss.dlgA(co,hss.CR,"Wow... did you hear that? Chris Winters liked my idea! It was a really obvious call, though. I bet someone else would've worked it out.",1)
hss.dlgA(co,hss.U,"Okay, that's it. I've had enough.",3)
hss.dlgA(co,hss.CR,"Huh?",4)
hss.dlg(co,hss.U,"Crash, you're ~brilliant.~ The reason that call seemed obvious to you is because you're ~good~ at this!")
hss.dlg(co,hss.CR,"I'm really glad you think so, but I keep telling you, my job's not that hard! I'm not a real actor like Chris--")
hss.dlgA(co,hss.U,"Why do you think 'real actors' rarely do their own stunts, Crash? What you do takes so much hard work and skill, not to mention bravery!",3)
hss.dlg(co,hss.U,"You deserve better than dry ramen and hot sauce. You deserve to have your skills recognized!")
hss.dlgA(co,hss.U,"Now walk up to that producer and stand up for yourself!",3)
hss.evt(co,"Crash glances at the sharply-dressed producer, unsure.", "")
hss.dlg(co,hss.CR,"I guess I could... but what if--")
hss.dlgA(co,hss.U,"Crash, if there's one thing I've learned about you this week, it's that you're not afraid of ~anything.~",3)
hss.dlgA(co,hss.U,"Not leaping from a train, not getting blown up, and ~definitely~ not some suit who probably couldn't even climb a ladder without wetting himself.",3)
hss.dlgA(co,hss.CR,"You're right... I'm not afraid of him! I don't even know what fear is!",3)
hss.evt(co,"Crash sets his jaw and marches off to confront the producer.", "")
hss.evt(co,"Later that evening, you're heading back to campus when you get a text from Crash!", "")
hss.dlg(co,hss.U,"An address? ~'Meet me here in an hour... dress fancy!'~")
hss.dlgA(co,hss.U,"I wonder what's up...",4)
end
function outro_premium_0029_crash_6(co)
hss.evt(co,"You drive to the address that Crash texted you, and find yourself outside an authentic ramen shop! Inside, you spot Crash, reading through the menu with wide eyes.", "")
hss.dlgA(co,hss.CR,"{YOU}! Thank god you're here... I have no idea what to order!",4)
hss.dlg(co,hss.U,"I hear the tonkotsu ramen is really good here.")
hss.dlg(co,hss.CR,"Sounds good to me!")
hss.evt(co,"After you place your order, Crash stares across the table at you, bouncing slightly in his chair.", "")
hss.dlgA(co,hss.U,"Okay, you ~obviously~ have good news. Out with it!",1)
hss.dlgA(co,hss.CR,"I talked to the producer... and I got a promotion! You're looking at the official stunt coordinator for 'Out With a Bang'!",5)
hss.dlgA(co,hss.U,"Congratulations! That's amazing!",1)
hss.dlg(co,hss.U,"Nobody deserves this more than you. I have no idea how you can do this ~all the time.~")
hss.dlgA(co,hss.U,"Just a few days in your world, and I'm so sore I can barely move!",2)
hss.dlgA(co,hss.CR,"Soreness is good! It means you've been working hard!",1)
hss.evt(co,"A waiter sets a huge bowl of ramen in front of each of you. Crash gapes at his steaming bowl, prodding at the ingredients with his chopsticks.", "")
hss.dlgA(co,hss.CR,"There's so much ~stuff~ in here! Bean sprouts, nori, huge slices of pork... it's so beautiful!",4)
hss.dlgA(co,hss.U,"I bet it ~tastes~ good too!",1)
hss.dlgA(co,hss.CR,"One way to find out!",1)
hss.showQuestComplete(co)
hss.evt(co,"As you happily dig into your noodles, you notice that Crash has stopped eating, his eyes tearing up.", "")
hss.dlgA(co,hss.U,"Crash? Are you... crying?",4)
hss.dlgA(co,hss.CR,"What. No!",4)
hss.dlgA(co,hss.CR,"I mean, yeah, maybe, but only because of how ~crazy~ good the ramen is! This egg is blowing my mind. How is the white so perfectly cooked while the yolk is still soft? It's like a soup miracle.",4)
hss.dlg(co,hss.U,"Crash, whatever's bothering you... you can tell me.")
hss.evt(co,"He sighs.", "")
hss.dlgA(co,hss.CR,"I was just thinking how long it's been since I had ramen like this. The real way.",2)
hss.dlg(co,hss.U,"I can see why that might make you sad.")
hss.dlgA(co,hss.CR,"It did, kinda. Then I was thinking about how my parents never really understood why I wanted to be a stuntman. They want me to be happy... but that's not the same as believing in what I do.",2)
hss.dlg(co,hss.U,"And that brought on the tears?")
hss.dlgA(co,hss.CR,"No... that wasn't it...",2)
hss.dlg(co,hss.U,"Okay, then what was it?")
hss.dlgA(co,hss.CR,"Well, then I realized... I realized I've never had anyone believe in me the way you do, {YOU}.",2)
hss.dlgA(co,hss.CR,"I'm not tearing up because I'm sad. It's because for the first time, I feel ~proud~ of what I do. You saw something amazing in me, and you wouldn't stop until I saw it too.",1)
hss.dlg(co,hss.U,"Well...")
local choice = hss.showTextMenu(co, "What do you say?", "I'm glad I could help!|YOU did all the work!");
if (choice == 0) then
hss.dlgA(co,hss.CR,"I'm glad too, you're an amazing friend, {YOU}!",1)
else
hss.dlgA(co,hss.U,"All ~I~ had to do was point out how amazing you are!",1)
hss.dlgA(co,hss.CR,"Well apparently I was too dense to see it myself, so thanks anyway!",1)
end
hss.dlg(co,hss.CR,"You know, this is definitely the best ramen I've ever had. But I feel like it's missing something...")
hss.evt(co,"Crash looks around furtively, then digs a hot sauce packet out of his pocket.", "")
hss.dlgA(co,hss.U,"Oh my god... you ~wouldn't.~",4)
hss.dlgA(co,hss.CR,"Watch me.",1)
hss.evt(co,"Crash shoots you a wicked grin as he tears open the packet and squeezes it all over his ramen. He slurps up a bunch of reddened noodles, a look of pure bliss spreading across his face.", "")
hss.dlg(co,hss.U,"Crash... don't ever change.")
end
local sceneTable = {}
sceneTable["inter_preview"] = inter_preview
sceneTable["outro_premium_0029_crash_1"] = outro_premium_0029_crash_1
sceneTable["intro_premium_0029_crash_2"] = intro_premium_0029_crash_2
sceneTable["outro_premium_0029_crash_2"] = outro_premium_0029_crash_2
sceneTable["intro_premium_0029_crash_3"] = intro_premium_0029_crash_3
sceneTable["outro_premium_0029_crash_3"] = outro_premium_0029_crash_3
sceneTable["inter_escape"] = inter_escape
sceneTable["outro_premium_0029_crash_4"] = outro_premium_0029_crash_4
sceneTable["intro_premium_0029_crash_5"] = intro_premium_0029_crash_5
sceneTable["outro_premium_0029_crash_5"] = outro_premium_0029_crash_5
sceneTable["outro_premium_0029_crash_6"] = outro_premium_0029_crash_6
hss.runScene(sceneTable)
