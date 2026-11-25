-- HWU Secondary: Movie Star "Going Off-Script"
function intro_sec_movie_star_1(co)
hss.evt(co,"The next day, {CONNECTED_CHARACTER_NAME} grabs the seat beside you in class...", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Together, I bet we've got a real shot at impressing Professor Hunt, {YOU}. And with his connections, who knows?",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","This time next year, we could be sipping champagne at Cannes, Instagramming pics from the Riviera to all my {CONNECTED_CHARACTER_NAME}sters!",1)
hss.dlgA(co,hss.U,"Your who what now?",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","The {CONNECTED_CHARACTER_NAME}sters! That's my fan club. Only a few hundred of them for now, but after you and me ace this course, I might be tacking on another zero!",1)
if (hss.getCharacterType("YOU") == hss.CharacterType.MOVIE_STAR) then
hss.dlg(co,hss.U,"Professor Hunt really has that much influence, huh?")
hss.dlgA(co,"{CONNECTED_CHARACTER}","The man's a genius, plain and simple. But, honestly? Between your natural talent and my rigorous method, you and me could be ~teaching~ this 'Improve Acting' class.",1)
else
hss.dlg(co,hss.U,"Well, fair warning, acting's not really my strongest suit.")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Sure, but you'll have to work with divas like us all the time, so best get to know us. I promise we're not all bad!",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","And just relax, you can't go wrong with me. I've got my method down so good, I could be ~teaching~ this 'Improve Acting' class!",1)
end
hss.dlgA(co,hss.U,"Um, {CONNECTED_CHARACTER_NAME}... I think the syllabus said this was '~Improv~ Acting' week. You know... like, improvisation?",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Improv?! Wait... where you come up with your own jokes and everything? Like, ~in front of people?~",4)
hss.dlgA(co,hss.U,"Yep! Should be fun!",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Uh oh... well, I guess everybody's gotta try new things sometime, right?",4)
end
function outro_sec_movie_star_1(co)
hss.evt(co,"In class, Professor Hunt sits casually on the edge of the stage. He scans the faces of his students.", "")
hss.dlg(co,"THOMAS","No matter what you do in this town, you have to play well with others, or you will fail. Spectacularly.")
hss.dlgA(co,"THOMAS","Unless you command so much respect that you no longer have to... but I'm just the exception that proves the rule.",1)
hss.evt(co,"Among the students, {CONNECTED_CHARACTER_NAME} whispers to you.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Look at him, {YOU}. He may be retired from acting, but he's still got the posture, the poise, the presence.",1)
hss.dlg(co,"{CONNECTED_CHARACTER}","One day I'll be just like him! I'm, like, his biggest fan!")
hss.dlgA(co,hss.U,"Sounds like ~he's~ his biggest fan.",4)
hss.dlg(co,"THOMAS","This week, we're partnering up for a week of improv. You'll be feeding off each other's energy, infusing vivid naturalism into your dialogue...")
hss.dlgA(co,"THOMAS","Or at the very least, proving you're capable of conversing like someone with a working brain stem.",3)
hss.showQuestComplete(co)
hss.evt(co,"Professor Hunt hops off the edge of the stage and paces up the aisle of the theater.", "")
hss.dlg(co,"THOMAS","Let's kick this off with a simple warm-up exercise. Even you doe-eyed newbies should be able to handle that.")
hss.dlg(co,"THOMAS","You and your partner will sustain a conversation speaking only in ~famous movie quotes.~ Got it? Good.")
hss.evt(co,"Hunt's eyes seek you out in the room.", "")
hss.dlg(co,"THOMAS","Ah. {YOU}.")
hss.dlgA(co,hss.U,"Yes, Professor?",4)
hss.dlgA(co,"THOMAS","Why don't you and {CONNECTED_CHARACTER_NAME} lead us off? We might as well start small.",1)
end
function inter_sec_movie_star_2(co)
hss.evt(co,"You and {CONNECTED_CHARACTER_NAME} get up on stage in front of the class, your footsteps echoing in the large theater.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Okay... I can handle this... {YOU}, how do I look? I look okay, right?",2)
hss.dlgA(co,"THOMAS","The game is to speak only in movie quotes. Don't hang your partner out to dry, and for the love of God, don't bore me.",3)
hss.evt(co,"Thinking hard, you take a deep breath, turn to {CONNECTED_CHARACTER_NAME}, and say...", "")
local choice = hss.showTextMenu(co, "What do you say?", "'Why so serious?'|'Do you wanna build a snowman?'");
if (choice == 0) then
hss.dlgA(co,hss.U,"'Why so serious?'",2)
hss.evt(co,"{CONNECTED_CHARACTER_NAME} turns away with a pained expression...", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","'I am your father...'",2)
hss.evt(co,"You eagerly hold your hands out, demanding!", "")
hss.dlg(co,hss.U,"'Show me the money!'")
hss.dlgA(co,"{CONNECTED_CHARACTER}","'Let it go.'",3)
hss.dlgA(co,hss.U,"'Okay.'",2)
else
hss.dlgA(co,hss.U,"'Do you wanna build a snowman?'",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","'I volunteer as tribute!'",1)
hss.evt(co,"Together, you and {CONNECTED_CHARACTER_NAME} act as if you're crafting a small snowman out of thin air.", "")
hss.evt(co,"{CONNECTED_CHARACTER_NAME} hugs the invisible snowman...", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","'You... complete me.'",9)
hss.evt(co,"You pretend to kick over the brand new snowman! {CONNECTED_CHARACTER_NAME} gasps in horror!", "")
hss.dlgA(co,hss.U,"'I'm king of the world!'",1)
end
hss.dlgA(co,"{CONNECTED_CHARACTER}","Aaaand... ~scene!~",1)
hss.evt(co,"You both bow. The whole class applauds, and {CONNECTED_CHARACTER_NAME} soaks it up. You grin at Professor Hunt.", "")
hss.dlgA(co,hss.U,"'Are you not entertained?!'",1)
hss.markQuestScriptRequirementFinished()
end
function outro_sec_movie_star_2(co)
hss.dlg(co,"THOMAS","All right, all right. That wasn't irredeemably terrible. Who's next?")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Did you hear that, {YOU}? ~The~ Thomas Hunt said we weren't irredeemably terrible!",1)
hss.dlgA(co,hss.U,"Um, 'yay'? Kinda thought we deserved more credit than that.",2)
hss.dlgA(co,"{CONNECTED_CHARACTER}","You kidding? That's the nicest thing I've ever heard the guy say!",1)
hss.dlg(co,hss.U,"You were way better than 'not terrible'! You always had the right line to say, ~and~ you looked great up there!")
hss.dlgA(co,"{CONNECTED_CHARACTER}","I've got all those quotes right here in my head! I've seen all those movies, like, literally fifty times!",1)
hss.dlgA(co,hss.U,"You must watch a ~lot~ of movies!",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Gotta study the masters if you're going to be one of them, you know?",1)
hss.showQuestComplete(co)
hss.evt(co,"Soon, everyone in class has completed the warm-up exercise.", "")
hss.dlg(co,"THOMAS","You haven't ~completely~ embarrassed yourselves... yet.")
hss.dlgA(co,"THOMAS","But now we get to the fun part. Each team will be filming a short scene. If you're lucky, the scene won't end with you running off set in tears.",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Now ~this~ is more my speed. Ready for my close-up, know what I mean, {YOU}? Time for all that method training to pay off!",1)
hss.dlg(co,"{CONNECTED_CHARACTER}","Excuse me, Professor Hunt? When do we get our scripts?")
hss.dlgA(co,"THOMAS","Scripts? Will you be needing me to hold your hand through the scene too?  Or perhaps I should give you a bottle and change your diaper?",3)
hss.dlgA(co,hss.U,"...this conversation got weird.",4)
hss.dlgA(co,"THOMAS","This is improv, {CONNECTED_CHARACTER_NAME}. 100% ad-libbed. I come up with your characters, you come up with the scene. That simple.",3)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Uhh, sure... simple...",2)
end
function intro_sec_movie_star_3(co)
hss.evt(co,"As the whole class looks on, {QUEST_CHAR_2_NAME} sets up a camera to film your improv scene with {CONNECTED_CHARACTER_NAME}...", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","So, um, {QUEST_CHAR_2_NAME}... any pointers?",2)
hss.dlgA(co,hss.Q2,"I'm not directing you, {CONNECTED_CHARACTER_NAME}. I'm just here to make you look good! This is ~your~ scene.",1)
hss.dlgA(co,"THOMAS","Are we done socializing? Good. Let's begin.",3)
hss.dlg(co,"THOMAS","{YOU}, you're a very alarmed patient at a hospital, and {CONNECTED_CHARACTER_NAME} is a doctor who only practices 18th Century medicine. And... go!")
hss.evt(co,"You hurry onto the stage!", "")
hss.dlgA(co,hss.U,"Doc, you gotta help me...",4)
local choice = hss.showTextMenu(co, "What do you say?", "I got a papercut!|I'm covered in leeches!");
hss.setQuestProperty("improvChoice", choice)
hss.evt(co,"{CONNECTED_CHARACTER_NAME} tenses up for a moment, mind racing... then finally responds!", "")
if (choice == 0) then
hss.dlgA(co,"{CONNECTED_CHARACTER}","Then time is short! We must amputate the whole arm!",4)
else
hss.dlgA(co,"{CONNECTED_CHARACTER}","Fortunately, the cure for your ailment is the same cure I use for everything else... ~more leeches!~",1)
end
hss.evt(co,"The class chuckles. {CONNECTED_CHARACTER_NAME} smiles, relieved... but then Professor Hunt shouts over everyone!", "")
hss.dlg(co,"THOMAS","Cut! Again, from the top!")
hss.dlgA(co,hss.U,"Huh? What was wrong?",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Wait, I thought I nailed it!",4)
hss.dlgA(co,"THOMAS","Don't flatter yourself. You did okay.",3)
hss.dlg(co,"THOMAS","But this is improv. Every take, you come up with something new. Action!")
end
function outro_sec_movie_star_3(co)
local improvChoice;
improvChoice = hss.getGameProperty("sec_movie_star_3", "improvChoice")
hss.dlg(co,hss.Q2,"Okay, people! Take two!")
hss.evt(co,"You run up to {CONNECTED_CHARACTER_NAME} as {QUEST_CHAR_2_NAME} pans the camera to follow you...", "")
hss.dlgA(co,hss.U,"Doc, you gotta help me...",4)
local choice = hss.showTextMenu(co, "What do you say?", "My entire family has dysentery!|I made out with a goat!");
hss.evt(co,"{CONNECTED_CHARACTER_NAME} hesitates...", "")
if (improvChoice == 0) then
hss.dlgA(co,"{CONNECTED_CHARACTER}","...then time is short! We ~must~ amputate!",2)
else
hss.dlgA(co,"{CONNECTED_CHARACTER}","Uh... more leeches!",2)
end
hss.dlgA(co,"THOMAS","Cut! Cut, cut! {CONNECTED_CHARACTER_NAME}, do you see a script in front of you?",3)
hss.dlgA(co,"{CONNECTED_CHARACTER}","No, Professor--",2)
hss.dlgA(co,"THOMAS","Then why are you repeating the same line? You want to say the same thing over and over, go work at In-N-Out! At least then you could get me some fries!",3)
hss.dlgA(co,"THOMAS","From the top!",3)
hss.evt(co,"You run the scene once more, only this time {CONNECTED_CHARACTER_NAME} completely freezes up!", "")
hss.dlgA(co,hss.U,"Psst! {CONNECTED_CHARACTER_NAME}! Any day now!",2)
hss.dlgA(co,"{CONNECTED_CHARACTER}","I... uh...",4)
hss.dlgA(co,"THOMAS","All right, enough. ~Next!~",3)
hss.dlgA(co,hss.U,"Just a second, Professor, I'm sure {CONNECTED_CHARACTER_NAME}--",2)
hss.dlgA(co,"THOMAS","{CONNECTED_CHARACTER_NAME} is wasting my time and everyone else's considerably less valuable time.",3)
hss.dlgA(co,"THOMAS","Get it together by tomorrow, {CONNECTED_CHARACTER_NAME}, or I'll give your spot in this workshop to someone who deserves it.",3)
hss.dlgA(co,hss.Q2,"Yikes. ~Nobody~ could make that scene look good.",2)
hss.showQuestComplete(co)
hss.evt(co,"You and {CONNECTED_CHARACTER_NAME} head back to your seats...", "")
hss.dlgA(co,hss.U,"Don't listen to Professor Hunt, {CONNECTED_CHARACTER_NAME}, you just gotta--",3)
hss.dlgA(co,"{CONNECTED_CHARACTER}","It's okay, {YOU}, I looked pretty bad up there but... you wanna be a star in this town, you gotta have a thick skin.",2)
hss.evt(co,"You take your seat, but {CONNECTED_CHARACTER_NAME} keeps going for the exit!", "")
hss.dlgA(co,hss.U,"{CONNECTED_CHARACTER_NAME}! Class isn't over! Where are you going?",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","I gotta take a walk. Catch ya later.",2)
end
function intro_sec_movie_star_4(co)
hss.evt(co,"After searching all over social media for clues, you finally find {CONNECTED_CHARACTER_NAME} at the historic Batista Theater, watching an all-day marathon of classic movies...", "")
hss.dlg(co,hss.U,"Hey, {CONNECTED_CHARACTER_NAME}. Mind if I join you?")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Oh... hey... sure, if you want. I just like to watch the greats, you know.",2)
hss.evt(co,"{CONNECTED_CHARACTER_NAME} speaks in hushed tones in the dark, as 'Jaws' flickers on the bright screen.", "")
hss.dlg(co,"{CONNECTED_CHARACTER}","I figure I'm just not any good at improv, but so what? I'm an actor, not a writer. Improv is good for light comedy and all, but I want the immortal lines that everyone quotes!")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Take 'You're gonna need a bigger boat.' The flawless timing, the practiced delivery... it's perfect!",1)
hss.dlgA(co,hss.U,"Actually, {CONNECTED_CHARACTER_NAME}... that line was ad libbed.",2)
hss.dlgA(co,"{CONNECTED_CHARACTER}","It was?!",2)
end
function outro_sec_movie_star_4(co)
hss.dlgA(co,hss.U,"Actually, a ton of famous movie lines were totally unscripted.",2)
hss.dlg(co,hss.U,"'Anchorman', '22 Jump Street', even 'Star Wars'! Some of the best moments in movies were all improv!")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Ugh... so you're telling me I'll never be a star, all because I can't improv.",2)
hss.dlgA(co,hss.U,"No, I'm telling you that...",3)
local choice = hss.showTextMenu(co, "What do you say?", "If you care about something, you have to work at it!|You can't let all the {CONNECTED_CHARACTER_NAME}sters down!");
if (choice == 0) then
if (hss.getCharacterGender("_MOVIE_STAR_") == hss.Gender.MALE) then
hss.dlgA(co,hss.U,"Do you think Matthew McConaughey just decided one day to start his McConaissance?",3)
hss.dlgA(co,hss.U,"I bet you think Chris Pratt's abs came out of nowhere too.",3)
else
hss.dlgA(co,hss.U,"Do you think Jennifer Lawrence just decided one day to start winning Oscars?",3)
end
hss.dlgA(co,"{CONNECTED_CHARACTER}","You know something? You're right! Improv is just my next challenge as an artist! The next mountain to climb!",3)
else
hss.dlgA(co,hss.U,"All those fans who have had your back from the beginning... and the millions more who haven't yet had the chance to post Tumblr GIFs of you smiling coyly... they're counting on you!",3)
hss.dlgA(co,"{CONNECTED_CHARACTER}","You know something? You're right! I can't quit! I owe it to the {CONNECTED_CHARACTER_NAME}sters around the world!",3)
end
hss.evt(co,"Someone else in the audience shushes {CONNECTED_CHARACTER_NAME}!", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Oh, my bad!",4)
hss.dlg(co,"{CONNECTED_CHARACTER}","Okay, {YOU}, I'm in... but how exactly do I go about, you know, learning how to improvise?")
hss.dlgA(co,hss.U,"Same thing you do for your regular acting... it takes practice! And I have a great idea for how to start...",1)
hss.showQuestComplete(co)
hss.evt(co,"You bring {CONNECTED_CHARACTER_NAME} to Bar Selona. A huge line wraps around the block. You walk up to the door, only for the bouncers to block your way!", "")
hss.dlgA(co,hss.U,"What's the meaning of this? Out of the way, I'm...",3)
local choice = hss.showTextMenu(co, "What do you say?", "The DJ!|The vodka sales rep!");
if (choice == 0) then
hss.dlgA(co,hss.U,"What's your boss gonna say when there's no boom-clap for your guests to twerk to?",3)
hss.evt(co,"The bouncers share a look, shrug, and step aside! You and {CONNECTED_CHARACTER_NAME} walk inside the crowded bar!", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Whoa, {YOU}! I had no idea you were a DJ!",1)
else
hss.dlgA(co,hss.U,"What'll your boss say after I pull your top-shelf supply and your guests have to drink vodka that comes in plastic bottles?",3)
hss.evt(co,"The bouncers share a nervous look and step aside! You and {CONNECTED_CHARACTER_NAME} walk inside the crowded bar!", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Wait a second, {YOU}... can you actually hook me up with some nice vodka?",4)
end
hss.dlgA(co,hss.U,"That, my friend, was improv. And now it's your turn!",1)
end
function outro_sec_movie_star_5(co)
hss.evt(co,"You lead {CONNECTED_CHARACTER_NAME} to an open table near the packed bar.", "")
hss.dlg(co,hss.U,"Okay, {CONNECTED_CHARACTER_NAME}... I want you to go up to that girl over there and convince her you're...")
local choice = hss.showTextMenu(co, "What do you say?", "A dog whisperer!|An astronaut with a fear of heights!|The inventor of the selfie!");
hss.dlgA(co,"{CONNECTED_CHARACTER}","No way! What if I embarrass myself in front of everyone? Once is enough for today, thank you!",4)
hss.dlg(co,hss.U,"Embarrassing yourself is what it takes to do improv. It's being real! And vulnerable! Isn't it?")
hss.dlg(co,"{CONNECTED_CHARACTER}","Well... yeah. Acting is becoming the character. Sensing their feelings, thinking their thoughts.")
hss.dlgA(co,hss.U,"That's exactly what improv is all about! It's becoming someone entirely new! But the difference is, it's all inside you! You don't say what's on a page, you say what the character would say!",1)
hss.dlg(co,hss.U,"~Be~ your character! Be natural, and you'll be convincing!")
if (hss.getCharacterGender("_MOVIE_STAR_") == hss.Gender.MALE) then
hss.evt(co,"{CONNECTED_CHARACTER_NAME} takes a deep breath and walks over to the girl at the bar. They start chatting. After a few minutes, he comes back to you, wide eyed.", "")
else
hss.evt(co,"{CONNECTED_CHARACTER_NAME} takes a deep breath and walks over to the girl at the bar. They start chatting. After a few minutes, she comes back to you, wide eyed.", "")
end
hss.dlgA(co,"{CONNECTED_CHARACTER}","She totally bought it! I can't believe that worked!",4)
if (choice == 0) then
hss.dlgA(co,"{CONNECTED_CHARACTER}","She asked me what I did, and suddenly I found myself talking about how I use my special ability to solve police cases with my trusty dachshund named Oreo!",4)
elseif (choice == 1) then
hss.dlgA(co,"{CONNECTED_CHARACTER}","She asked me what I did, and suddenly I found myself talking about how I had to fix the International Space Station with my eyes closed because I was so scared!",4)
else
hss.dlgA(co,"{CONNECTED_CHARACTER}","She asked me what I did, and suddenly I found myself talking about how I came up with the selfie by holding my camera the wrong way by mistake when snapping a pic of my mimosa brunch!",4)
end
hss.dlgA(co,hss.U,"And how did you feel doing it?",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","I felt like I ~was~ my character... I didn't even feel like I was playing a role!",1)
hss.dlgA(co,hss.U,"That's how you know you nailed the part!",1)
hss.showQuestComplete(co)
hss.dlg(co,hss.U,"So, {CONNECTED_CHARACTER_NAME}, ready to nail that improv scene tomorrow?")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Maybe not on the first take. But that's okay. I just have to stay loose and keep trying new things!",1)
hss.dlgA(co,hss.U,"That's the improvisational spirit!",1)
end
function intro_sec_movie_star_6(co)
hss.evt(co,"The next day, you and {CONNECTED_CHARACTER_NAME} show up to class, eager to get started.", "")
hss.dlg(co,"THOMAS","{CONNECTED_CHARACTER_NAME}. I'm surprised you even dared to come back.")
hss.dlg(co,"{CONNECTED_CHARACTER}","This is improv, Professor. You can't be afraid to try again after failing.")
hss.dlgA(co,hss.U,"I think {CONNECTED_CHARACTER_NAME} will surprise you.",1)
hss.dlg(co,"THOMAS","I haven't been surprised since the ending of ~'The Sixth Sense'~. Just to make sure you and {YOU} haven't been memorizing lines, you've got a new scene to do this time.")
hss.dlg(co,"THOMAS","Let's see... {YOU}, you're the world's worst bank robber, and {CONNECTED_CHARACTER_NAME}'s the world's friendliest cop.")
hss.dlgA(co,"THOMAS","...well? What are you waiting for? Amuse me!",3)
end
function outro_sec_movie_star_6(co)
hss.evt(co,"In front of your whole class, you burst out from behind the stage curtains in a panic, pretending to carry two heavy duffel bags!", "")
hss.dlgA(co,hss.U,"Aw, man...",2)
local choice = hss.showTextMenu(co, "What do you say?", "I can't remember where I parked my getaway car!|Why'd I fill the bags with coins? They're so heavy!");
hss.evt(co,"As the class giggles, {CONNECTED_CHARACTER_NAME} comes patrolling the corner and spots you!", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Police! Hold it right there...",3)
if (choice == 0) then
hss.dlgA(co,"{CONNECTED_CHARACTER}","You look lost! Here, I'll give you a lift! Where you headin'?",1)
else
hss.dlgA(co,"{CONNECTED_CHARACTER}","You're gonna pull your back carrying those big sacks of money! Here, I'll give you a hand!",4)
end
hss.dlg(co,"THOMAS","Cut! Congrats on remembering how your tongue worked, {CONNECTED_CHARACTER_NAME}...")
hss.dlg(co,"THOMAS","But let's see if lightning can strike twice. From the top!")
hss.evt(co,"You restart the scene, running on stage and pointing a finger at {CONNECTED_CHARACTER_NAME}!", "")
hss.dlgA(co,hss.U,"Nobody move, this is a stick-up! I want--",3)
hss.dlgA(co,hss.U,"Wait... I forgot to cut any holes in my mask! Where is everyone?",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Over here... no, here! A little to the left! Your other left!",1)
hss.evt(co,"{CONNECTED_CHARACTER_NAME} pretends to help you pull off your mask!", "")
hss.dlgA(co,hss.U,"Whew... thanks, Officer.",2)
hss.dlgA(co,"{CONNECTED_CHARACTER}","I'm here to protect and serve!",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","By the way, you shouldn't hide your face. You have beautiful features!",1)
hss.evt(co,"The class laughs. After a few more takes, Professor Hunt gestures to cut off the camera.", "")
hss.dlg(co,"THOMAS","Okay, okay, that's good enough. Next!")
hss.dlgA(co,hss.U,"So? Did we manage to surprise you?",1)
if (hss.getCharacterGender("_MOVIE_STAR_") == hss.Gender.MALE) then
hss.dlgA(co,"THOMAS","Surprised? Try relieved. Relieved that {CONNECTED_CHARACTER_NAME} isn't completely failing to live up to his potential.",3)
else
hss.dlgA(co,"THOMAS","Surprised? Try relieved. Relieved that {CONNECTED_CHARACTER_NAME} isn't completely failing to live up to her potential.",3)
end
hss.dlgA(co,"{CONNECTED_CHARACTER}","OMG! Did he just say I have potential? Okay, new world record. ~That's~ the nicest thing I've ever heard him say.",4)
hss.showQuestComplete(co)
hss.evt(co,"After class, {CONNECTED_CHARACTER_NAME} jogs up to you.", "")
hss.dlg(co,"{CONNECTED_CHARACTER}","Hey, I just wanted to thank you, {YOU}. All this time, I was locked into my method as an actor, locked into the script...")
hss.dlgA(co,"{CONNECTED_CHARACTER}","But you showed me the stars know when to trust their own instincts. And now I know I can too.",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","I just mean... you know how much I idolize Professor Hunt, but it's ~you~ who really taught me something.",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Just don't tell him I said that!",4)
hss.dlgA(co,hss.U,"My lips are sealed.",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Listen, {YOU}, there's something else I gotta tell you...",2)
hss.dlgA(co,"{CONNECTED_CHARACTER}","I just found out my long-lost uncle is now my rightful guardian. I have to move... to France. This is goodbye...",2)
hss.dlgA(co,hss.U,"Wait, you're leaving? Right now?",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Hah, kidding! That was just more improv! I'm obsessed now!",1)
hss.dlgA(co,hss.U,"Clearly, I've created a monster.",1)
end
hss.checkEnvironment({"YOU"})
hss.runOpt()
