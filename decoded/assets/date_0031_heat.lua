function inter_preview(co)
hss.evt(co,"You're getting drinks at The Frosted Glass with Lisa one night when you see a familiar face behind the bar...", "")
hss.dlg(co,"MASON","...")
hss.evt(co,"Mason catches you staring as he mixes a drink for Bianca.", "")
hss.dlgA(co,hss.B,"Don't rush muddling the mint. I'm watching you.",3)
hss.evt(co,"You whisper to Lisa...", "")
hss.dlgA(co,hss.U,"~I've met that bartender before!~",4)
hss.dlgA(co,"LISA","You mean that hottie with a body?! ~Damn.~",1)
hss.dlg(co,hss.U,"~He beat up a bunch of obnoxious frat bros and got me, Ethan, and Addison into a club.~")
hss.evt(co,"Mason stops mixing the drink for Bianca, comes over, and starts pouring a drink for ~you.~", "")
hss.dlg(co,"MASON","Hey, {YOU}. You enjoy that club from the other night?")
hss.dlgA(co,"LISA","He remembered your name!",4)
hss.dlgA(co,hss.U,"Of course he remembers. I...",1)
local choice = hss.showTextMenu(co, "What do you say?", "Always leave an impression.|Have an unforgettable name.");
if (choice == 0) then
hss.dlg(co,"MASON","Can't argue with that.")
hss.dlg(co,"MASON","I'm not great with names and faces. But {YOU} just stuck.")
else
hss.dlgA(co,"LISA","You're saying {YOU} is an unforgettable name?",4)
hss.dlgA(co,hss.U,"Uh, obviously, when it comes with this package!",1)
hss.dlg(co,"MASON","Worked for me. And I'm terrible with names.")
hss.dlgA(co,hss.U,"See? It worked for Mason.",1)
hss.dlg(co,"MASON","Guess ~my name~ was unforgettable too.")
end
hss.dlgA(co,hss.B,"Hey! Bartender guy! You didn't finish making my drink!",3)
hss.evt(co,"Mason winks at you, not budging from his spot.", "")
hss.dlgA(co,"LISA","A hot guy who ignores Bianca? {YOU}, can I go on the record now and say I'm already in love?",1)
hss.dlgA(co,hss.B,"Grr!",3)
hss.evt(co,"Bianca storms off, looking for a manager to berate.", "")
hss.dlgA(co,"LISA","Okay, I see you two have an unspoken chemistry thing going on. But if you don't ask this guy out, {YOU}, I will.",1)
hss.dlg(co,"MASON","I've got a better idea.")
hss.evt(co,"Mason pulls off his bartender's apron, tosses it onto a peg behind the bar, and ducks under the hatch.", "")
hss.dlgA(co,hss.U,"What are you doing?",4)
hss.dlg(co,"MASON","Taking you out.")
hss.dlgA(co,hss.U,"What? But... aren't you working?!",4)
hss.dlg(co,"MASON","Nah. Not anymore. I just quit.")
hss.dlgA(co,hss.U,"So, just to be clear... you're quitting your job just so you can take me out on a date?",4)
hss.dlg(co,"MASON","That... and this job sucks. Two birds, one stone, you know?")
hss.dlg(co,hss.U,"I don't know if I can do this. I mean, I came here with my friend Lisa, and--")
hss.dlgA(co,"LISA","No way. Don't you ~dare~ use me as an excuse. You'd ~better~ ditch me, or I'll be so mad at you.",3)
hss.dlg(co,"MASON","Looks like your friend can handle herself.")
hss.dlg(co,"LISA","Are you kidding? Nightlife is ~my~ life.")
hss.dlg(co,"MASON","So... what's it going to be, {YOU}? You coming with me?")
local choice = hss.showTextMenu(co, "What do you say?", "Hell yes!|Sorry, I can't.");
if (choice == 0) then
hss.evt(co,"Mason takes your hand and leads you toward the club's back exit. You turn back to Lisa, who is grinning from ear-to-ear.", "")
hss.dlgA(co,"LISA","Have fun! I won't wait up!",1)
hss.markQuestScriptRequirementFinished()
else
hss.dlgA(co,hss.U,"This whole thing just feels too sudden and quick and--",4)
hss.dlgA(co,"LISA","~Crazy romantic!~ I was ~not~ kidding about going out with this guy, {YOU}. Ask me out, Hot Guy.",5)
hss.dlg(co,"MASON","Uh, sure. Want to go out?")
hss.dlgA(co,"LISA","You know I do! Let's go!",5)
hss.evt(co,"Mason takes Lisa's hand and leads her toward the club's exit.", "")
hss.dlg(co,"MASON","Ever been on a motorcycle?")
hss.dlg(co,"LISA","Are you not aware of who I am?")
hss.dlg(co,"MASON","What? You famous or something?")
hss.dlg(co,"LISA","Oh my god! You don't know who I am! You're in for a treat!")
hss.evt(co,"They turn back to you right before they leave...", "")
hss.dlg(co,"MASON","Later, {YOU}.")
hss.dlgA(co,"LISA","Don't wait up!",1)
hss.dlgA(co,hss.U,"Have fun...",4)
end
end
function outro_date_0031_heat_1(co)
hss.evt(co,"Outside the back of the club, Mason gets onto a black motorcycle and nods at the space on the seat behind him.", "")
hss.dlg(co,"MASON","Hop on.")
hss.dlgA(co,hss.U,"I can't believe I'm doing this.",4)
hss.evt(co,"You climb onto the motorcycle, wrapping your arms around Mason. His leather jacket feels cool against your skin.", "")
hss.showQuestComplete(co)
hss.evt(co,"Mason fires up the motorcycle, its engine roaring to life.", "")
hss.dlg(co,"MASON","You ready?")
hss.dlgA(co,hss.U,"I think so... where are we even going?",4)
hss.dlg(co,"MASON","Wherever the road takes us.")
hss.dlg(co,hss.U,"You're not really a big planner, are you?")
hss.dlg(co,"MASON","Nah. Plans never work out how you want anyway.")
hss.dlg(co,hss.U,"All right, then. Let's just see where the night takes us.")
hss.dlg(co,"MASON","Deal.")
hss.evt(co,"Mason revs the engine, and the bike peels out onto the road, leaving the club far behind you...", "")
end
function intro_date_0031_heat_2(co)
hss.evt(co,"Together, you and Mason ride through the city on his motorcycle, slicing through the cool night air, past shops and apartment buildings, until finally you end up beyond the edges of the city...", "")
hss.dlgA(co,hss.U,"I've never been out here before! Without all the city lights, you can actually see the stars...",1)
hss.evt(co,"Mason pulls the bike over to the side of the road, stopping it, and letting it idle.", "")
hss.dlgA(co,hss.U,"What are we doing?",4)
hss.evt(co,"Mason leans back, closer to you, pointing up at a cluster of stars in the sky...", "")
hss.dlg(co,"MASON","See those right there? Those bright ones?")
hss.dlg(co,hss.U,"Yeah. Is that some kind of constellation?")
hss.dlg(co,"MASON","Yeah, that's Osiris. And those three over there... that's Witika, the Eagle.")
hss.dlg(co,hss.U,"What about these four bright ones over here?")
hss.dlg(co,"MASON","Oh, those? Those form the Golden Pig.")
hss.evt(co,"You catch a sly smile on Mason's face.", "")
hss.dlg(co,hss.U,"Wait a second... you're making this up!")
hss.dlg(co,"MASON","Guilty. I actually don't know jack about stars.")
hss.dlgA(co,hss.U,"You jerk!",1)
hss.evt(co,"Mason winks at you, and you laugh. After a moment...", "")
hss.dlg(co,"MASON","Listen, this isn't just about messing with you. I pulled over because the road's dangerous up ahead.")
hss.dlg(co,"MASON","We need to be in sync. I lean, you lean, got it?")
hss.dlg(co,hss.U,"Got it!")
hss.dlg(co,"MASON","Hang on then. And follow my lead.")
end
function outro_date_0031_heat_2(co)
hss.evt(co,"Mason revs his motorcycle along a winding road, trees whipping past as you travel further into the countryside, your arms wrapped tightly around him.", "")
hss.dlg(co,"MASON","You ready, {YOU}?")
hss.dlg(co,hss.U,"I'm ready.")
hss.evt(co,"The road turns sharply right, and Mason leans into it. You...", "")
local choice = hss.showTextMenu(co, "What do you do?", "Lean left!|Lean right!", false, 3);
if (choice == 1) then
hss.evt(co,"You lean with Mason, perfectly gliding into the turn. You can barely hear him over the sound of the bike.", "")
hss.dlg(co,"MASON","Still there?")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward0") == nil then
hss.setQuestProperty("reward0",1)
hss.dlgA(co,hss.U,"Still here!",1,hss.REWARD_COINS,25)
else
hss.dlgA(co,hss.U,"Still here!",1)
end
hss.evt(co,"Mason straightens out of the turn and hugs the edge as the road banks sharply back to the left. You...", "")
local choice = hss.showTextMenu(co, "What do you do?", "Lean left!|Lean right!", false, 3);
if (choice == 0) then
hss.evt(co,"You feel Mason's body leaning left. You lean with him.", "")
hss.dlg(co,"MASON","You okay?")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward1") == nil then
hss.setQuestProperty("reward1",1)
hss.dlgA(co,hss.U,"Yep!",1,hss.REWARD_COINS,25)
else
hss.dlgA(co,hss.U,"Yep!",1)
end
hss.evt(co,"When Mason pulls out of the turn, you slip from your seat, barely hanging on! Your vision of the road is blocked!", "")
hss.evt(co,"All you can do is feel Mason and anticipate which direction he's going to turn! You...", "")
local choice = hss.showTextMenu(co, "What do you do?", "Lean left!|Lean right!", false, 3);
if (choice == 0) then
hss.evt(co,"You lean left...", "")
hss.evt(co,"...just as Mason does! You take the turn smoothly!", "")
hss.dlg(co,"MASON","You all right?")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward2") == nil then
hss.setQuestProperty("reward2",1)
hss.dlgA(co,hss.U,"Yep!",1,hss.REWARD_COINS,25)
else
hss.dlgA(co,hss.U,"Yep!",1)
end
elseif (choice == 1) then
hss.evt(co,"You lean right...", "")
hss.evt(co,"...just as Mason does! You take the turn smoothly!", "")
hss.dlg(co,"MASON","You all right?")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward2") == nil then
hss.setQuestProperty("reward2",1)
hss.dlgA(co,hss.U,"Yep!",1,hss.REWARD_COINS,25)
else
hss.dlgA(co,hss.U,"Yep!",1)
end
else
hss.evt(co,"You hesitate!", "")
hss.evt(co,"Mason leans, but the bike's back wheel starts fishtailing, rubber burning all over the road!", "")
hss.dlgA(co,"MASON","Hang on!",4)
hss.evt(co,"Mason manages to straighten out the bike. It comes to a rest, acrid smoke filling the air around you.", "")
hss.dlg(co,"MASON","You okay?")
hss.dlgA(co,hss.U,"Yeah, I'm fine.",2)
hss.dlg(co,"MASON","What happened back there?")
hss.dlgA(co,hss.U,"Guess I wasn't as in sync as I needed to be. It won't happen again...",2)
hss.dlg(co,"MASON","Doesn't matter. We're past the tough spot anyway.")
hss.evt(co,"Mason revs the bike back up and continues on.", "")
end
else
hss.evt(co,"The balance of the bike is thrown completely off! Mason tries to correct, but the bike's back wheel starts fishtailing, rubber burning all over the road!", "")
hss.dlgA(co,"MASON","Hang on!",4)
hss.evt(co,"Mason manages to straighten out the bike. It comes to a rest, acrid smoke filling the air around you.", "")
hss.dlg(co,"MASON","You okay?")
hss.dlgA(co,hss.U,"Yeah, I'm fine.",2)
hss.dlg(co,"MASON","What happened back there?")
hss.dlgA(co,hss.U,"Guess I wasn't as in sync as I needed to be. It won't happen again...",2)
hss.evt(co,"Mason nods, and fires the motorcycle back up, driving much more slowly now...", "")
end
else
hss.evt(co,"The balance of the bike is thrown completely off! Mason tries to correct, but the bike's back wheel starts fishtailing, rubber burning all over the road!", "")
hss.dlgA(co,"MASON","Hang on!",4)
hss.evt(co,"Mason manages to straighten out the bike. It comes to a rest, acrid smoke filling the air around you.", "")
hss.dlg(co,"MASON","You okay?")
hss.dlgA(co,hss.U,"Yeah, I'm fine.",2)
hss.dlg(co,"MASON","What happened back there?")
hss.dlgA(co,hss.U,"Guess I wasn't as in sync as I needed to be. It won't happen again...",2)
hss.evt(co,"Mason nods, and fires the motorcycle back up, driving much more slowly now...", "")
end
hss.showQuestComplete(co)
hss.evt(co,"After weaving through the forested hills, the road spills out into a clearing, where a beautiful, faded blue mansion resides. Mason stops the bike in front of a big 'Keep Out' sign.", "")
hss.dlg(co,"MASON","Like they're ~begging~ us to come in.")
hss.dlg(co,hss.U,"You realize that's literally the opposite meaning, right?")
hss.dlg(co,"MASON","I was never good at reading comprehension. Come on.")
hss.evt(co,"Mason takes your hand, and leads you to the front door...", "")
end
function inter_explore(co)
hss.evt(co,"Mason leads you inside the abandoned mansion. You find yourself in a majestic foyer. A spiral staircase captures your attention, its wooden bannister spiraling upwards before ending abruptly in midair, having crumbled from neglect and decay.", "")
hss.evt(co,"All around you are signs of what was once extravagant. A skewed chandelier, a broken grandfather clock, a sword on the wall, now rusted.", "")
hss.dlg(co,hss.U,"This place is beautiful. Completely unlivable, but still beautiful.")
hss.dlg(co,"MASON","Sure beats my apartment.")
hss.evt(co,"On a dusty antique loveseat, you spot a stack of boxes.", "")
hss.dlg(co,hss.U,"Let's look through these!")
hss.evt(co,"Opening them, you discover a bunch of old photographs, mostly of the same family.", "")
hss.dlg(co,"MASON","For richie riches, they sure don't look happy.")
hss.evt(co,"As you both continue searching through the pictures, you glance at Mason, trying to figure him out.", "")
hss.dlg(co,hss.U,"So, Mason I have roughly a thousand questions to ask you.")
hss.dlg(co,"MASON","Mmm. I'll give you three.")
hss.dlgA(co,hss.U,"What? Three? Why so few?",1)
hss.dlg(co,"MASON","It'll be fun. And since I'm feeling nice, those three questions you just asked me don't count.")
hss.dlgA(co,hss.U,"Thanks for the charity. Fine, I'll play your little game. Three questions.",1)
hss.dlg(co,hss.U,"First, the obvious one... who quits their job just to go on a date with someone they don't know?")
hss.dlg(co,"MASON","Me. I don't like being tied down. Something special comes up, I want to be able to drop everything for it.")
hss.dlgA(co,hss.U,"Smooth answer. Okay, question two...",1)
hss.dlg(co,hss.U,"What are you afraid of?")
hss.dlgA(co,"MASON","Uh, what?",4)
hss.dlg(co,hss.U,"You get in fights, you ride a motorcycle, now you're in a mildly creepy house with a relative stranger.")
hss.dlg(co,hss.U,"But none of that seems to affect you. You must be afraid of ~something.~")
hss.dlg(co,"MASON","Probably. Not sure what that is. But I'll let you know if I find out.")
hss.dlg(co,hss.U,"Not an answer, but all right. I'll hold you to that. Last question, and this one is ~super~ important.")
local choice = hss.showTextMenu(co, "What do you say?", "What's your favorite animal?|What's your last name?");
hss.dlg(co,"MASON","That ~is~ super important.")
hss.dlg(co,hss.U,"Well?")
if (choice == 0) then
hss.dlg(co,"MASON","Probably a hawk. Nobody messes with hawks.")
hss.dlg(co,hss.U,"I can see that.")
else
hss.dlg(co,"MASON","Evans.")
hss.dlg(co,hss.U,"Mason Evans. Has a nice ring.")
end
hss.evt(co,"You open another box, which is also filled with photos.", "")
hss.dlg(co,hss.U,"I don't get these people.")
hss.dlg(co,"MASON","What's there to get?")
hss.dlg(co,hss.U,"I mean... who would leave all this behind? And wouldn't pictures be the first thing you take with you?")
hss.dlg(co,"MASON","Nah, I get it. Something bad happens and you just go, you know? Maybe they didn't want to remember.")
hss.dlg(co,hss.U,"Sounds like you're speaking from experience.")
hss.dlg(co,"MASON","Maybe I am.")
hss.dlg(co,hss.U,"Okay, now I have, like, a thousand more questions for you.")
hss.evt(co,"Mason doesn't answer, his attention on something high above you. You follow his gaze...", "")
hss.dlgA(co,hss.U,"Whoa.",4)
hss.markQuestScriptRequirementFinished()
end
function outro_date_0031_heat_3(co)
hss.evt(co,"High above you and Mason, you see a dazzlingly colorful array of names and drawings all over the ceiling.", "")
hss.dlgA(co,hss.U,"What are ~those~ for?",4)
hss.dlg(co,"MASON","Signatures. Guess they're from people who climbed all the way up there...")
hss.dlg(co,hss.U,"I could see that being an accomplishment, given the lack of an entire second floor.")
hss.evt(co,"Mason gives you a look.", "")
hss.dlg(co,hss.U,"You want to go up there, don't you?")
hss.dlg(co,"MASON","Hell yeah.")
hss.dlg(co,hss.U,"Then let's do it!")
hss.showQuestComplete(co)
hss.evt(co,"You and Mason attempt to ascend to the top floor of the mansion. You start along the stairs, but one of the steps crumbles beneath your feet.", "")
hss.dlgA(co,hss.U,"Not that way!",4)
hss.dlg(co,"MASON","This'll be harder than I thought.")
hss.dlgA(co,hss.U,"You're not planning on quitting, are you? Because you kind of have that reputation already. You know, since you quit your job and all...",1)
hss.dlg(co,"MASON","Wow. Low blow, {YOU}.")
hss.dlgA(co,hss.U,"I call 'em like I see 'em.",1)
hss.dlg(co,"MASON","Guess that means I ~have~ to follow through now.")
hss.dlgA(co,hss.U,"Guess so.",1)
end
function intro_date_0031_heat_4(co)
hss.evt(co,"Together, you and Mason manage to bypass the crumbling staircase, climbing up to the second floor of the abandoned mansion...", "")
hss.dlg(co,"MASON","One floor down, one to go.")
hss.dlg(co,hss.U,"It looks like people have been using the top of that bookcase in the far corner as a platform...")
hss.dlgA(co,hss.U,"But the only way to get there is by walking on this rickety beam above us.",2)
hss.evt(co,"You reach up and pull on the beam a little. It creaks, the sound echoing throughout the house.", "")
hss.dlg(co,"MASON","I'll go first.")
hss.dlg(co,hss.U,"I have no problem letting you be the death-defying guinea pig.")
hss.evt(co,"Mason stretches above him and grabs the beam, pulling himself up with ease.", "")
hss.dlgA(co,hss.U,"~So~ strong...",4)
hss.dlg(co,"MASON","What'd you say?")
hss.dlgA(co,hss.U,"Nothing. You probably just heard the, uh, beam.",4)
hss.dlg(co,"MASON","Right. The beam. Anyway, here goes.")
hss.evt(co,"Mason stands up on the beam and walks out over the chasm below. He loses his balance for a moment, teetering!", "")
hss.dlgA(co,"MASON","Whoa!",4)
hss.dlgA(co,hss.U,"Careful, Mason!",4)
hss.evt(co,"He rights himself and with a few quick steps safely reaches the bookcase on the far side.", "")
hss.dlg(co,"MASON","Your turn.")
hss.evt(co,"You pull yourself up onto the beam. As you stand up on it, you're painfully aware of just how unstable it is, just how high up you are, and just how far you'd fall...", "")
hss.dlgA(co,hss.U,"This is not a good idea...",4)
hss.evt(co,"You take a step out, seeing through the hole of the second floor ~all the way down.~ Vertigo takes over, the floor suddenly rising up to you!", "")
local choice = hss.showTextMenu(co, "What do you do?", "Balance!|Fall!", false, 3);
if (choice == 0) then
hss.evt(co,"You keep your balance. Putting one foot in front of the other.", "")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward0") == nil then
hss.setQuestProperty("reward0",1)
hss.dlgA(co,hss.U,"Steady, {YOU}. Steady.",0,hss.REWARD_COINS,25)
else
hss.dlgA(co,hss.U,"Steady, {YOU}. Steady.",0)
end
hss.dlg(co,"MASON","A few more steps...")
hss.evt(co,"You take another step, and your foot slips!", "")
hss.dlgA(co,hss.U,"Whoa!",4)
local choice = hss.showTextMenu(co, "What do you do?", "Fall!|Balance!|Fall!", false, 3);
if (choice == 1) then
hss.evt(co,"You flail your arms, barely managing to regain your sense of balance.", "")
hss.dlg(co,"MASON","You got it?")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward1") == nil then
hss.setQuestProperty("reward1",1)
hss.dlgA(co,hss.U,"I... I think so.",0,hss.REWARD_COINS,25)
else
hss.dlgA(co,hss.U,"I... I think so.",0)
end
hss.evt(co,"As you take your next step, the beam creaks sharply!", "")
hss.dlg(co,"MASON","{YOU}, move, it's gonna break!")
local choice = hss.showTextMenu(co, "What do you do?", "Rush forward!|Freeze!|Freeze!|Freeze!", false, 3);
if (choice == 0) then
hss.evt(co,"You don't hesitate, dashing along the beam as fast as you can! It snaps behind you!", "")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward2") == nil then
hss.setQuestProperty("reward2",1)
hss.dlgA(co,hss.U,"Must. Keep. Moving!",0,hss.REWARD_COINS,25)
else
hss.dlgA(co,hss.U,"Must. Keep. Moving!",0)
end
hss.evt(co,"As it gives way, you leap toward Mason...", "")
hss.dlgA(co,"MASON","{YOU}!",4)
hss.evt(co,"Your hands stretch out... you fall...", "")
else
hss.evt(co,"You freeze up, eyes locked on the ground, the floor beneath you starting to spin. You feel light-headed...", "")
hss.dlgA(co,hss.U,"Mason...",2)
hss.evt(co,"You feel yourself falling...", "")
end
else
hss.evt(co,"You can't regain your balance!", "")
hss.dlgA(co,hss.U,"Mason...",2)
hss.evt(co,"You fall...", "")
end
else
hss.evt(co,"The vertigo is overwhelming! You can't seem to regain your balance...", "")
hss.dlgA(co,hss.U,"Mason...",2)
hss.evt(co,"You fall...", "")
end
end
function outro_date_0031_heat_4(co)
hss.evt(co,"You're falling! Mason reaches out for you...", "")
hss.evt(co,"...and grabs you out of the air!", "")
hss.dlgA(co,"MASON","Gotcha!",4)
hss.evt(co,"He pulls you up onto the bookcase as the beam falls all the way down to the ground! It lands with a loud ~bang!~", "")
hss.dlgA(co,"MASON","You all right?",4)
hss.dlgA(co,hss.U,"I think so. Unless I died. Then I'm pretty far from all right.",2)
hss.dlg(co,"MASON","You didn't die, {YOU}.")
hss.evt(co,"You lie there, eyes closed beside him, your chest heaving, the adrenaline rushing through you.", "")
hss.dlg(co,"MASON","Open your eyes, {YOU}. You're gonna like what you see.")
hss.evt(co,"You open your eyes to see the ceiling just a few feet above you. Your entire field of vision is now filled by a multi-colored mosaic of names, doodles, and elaborate drawings!", "")
hss.dlgA(co,hss.U,"I've never been so excited to see a ceiling! We did it!",1)
hss.dlg(co,"MASON","Damn straight. Now let's sign our names.")
hss.evt(co,"Together, you sign your names on the ceiling: ~{YOU} and Mason~.", "")
hss.showQuestComplete(co)
hss.evt(co,"Once you've finished signing your name on the ceiling...", "")
hss.dlg(co,"MASON","Didn't think about this next part. Getting down might be tough.")
hss.evt(co,"You spot a window near the bookcase about halfway down.", "")
hss.dlg(co,hss.U,"Hey, follow me.")
hss.evt(co,"You swing your legs off the bookcase and kick open the window.", "")
hss.dlg(co,"MASON","Good call, {YOU}.")
end
function intro_date_0031_heat_5(co)
hss.evt(co,"You and Mason clamber out on the roof and dangle your feet over the edge.", "")
hss.dlg(co,hss.U,"I can't believe it. Two seconds ago I was at the club with my friend, debating whether I should reject you.")
hss.dlg(co,"MASON","You were thinking about rejecting me? ~Damn.~")
hss.dlg(co,hss.U,"And now I'm up on the roof of a ~mansion,~ of all places.")
hss.dlg(co,"MASON","Sounds pretty badass, {YOU}.")
hss.evt(co,"You chuckle. A cool breeze blows across the roof. You both stare out at the starry sky.", "")
hss.dlgA(co,hss.U,"Know any other constellations? I want to know more than just the Golden Pig.",1)
hss.dlg(co,"MASON","Oh, there's no limit to my fake star knowledge. But right now...")
hss.dlgA(co,"MASON","...you wanted to know what I'm afraid of. Now I know...",2)
hss.dlgA(co,"MASON","You were on the beam, and then, when you were falling, I...",2)
hss.evt(co,"He stops. You meet his eyes.", "")
hss.dlgA(co,hss.U,"Thank you, Mason. You saved my--",4)
hss.evt(co,"Your words catch in your mouth as Mason moves toward you, leaning in to kiss you...", "")
end
function outro_date_0031_heat_5(co)
hss.evt(co,"On a rooftop beneath the stars, Mason leans down to kiss you...", "")
local choice = hss.showTextMenu(co, "What do you do?", "Let it happen!|Pull back!");
if (choice == 0) then
hss.evt(co,"You let him kiss you, your skin tingling, your body going numb, your heart thumping in your chest.", "")
hss.evt(co,"You never want it to end...", "")
hss.showQuestComplete(co)
hss.evt(co,"Finally, against all your impulses, you pull away from him...", "")
else
hss.evt(co,"You pull back from him.", "")
hss.dlg(co,hss.U,"Sorry, Mason. It's just... too soon for me.")
hss.dlg(co,"MASON","Hey, no need to explain. We can wait as long as you want.")
hss.evt(co,"You reach over and take Mason's hand as you stare up at the night sky...", "")
hss.showQuestComplete(co)
hss.evt(co,"You sit out there together, watching the stars twinkle. At long last, you turn to each other.", "")
end
hss.dlg(co,"MASON","Time to head back.")
hss.dlg(co,hss.U,"Unfortunately. Uh, do I even want to know how we're going to get down from here?")
hss.dlg(co,"MASON","We'll figure it out.")
hss.evt(co,"~Want to spend more time with Mason? Want to see what makes this bad boy tick?~", "")
hss.evt(co,"~The next date is available right now!~", "")
end
local sceneTable = {}
sceneTable["inter_preview"] = inter_preview
sceneTable["outro_date_0031_heat_1"] = outro_date_0031_heat_1
sceneTable["intro_date_0031_heat_2"] = intro_date_0031_heat_2
sceneTable["outro_date_0031_heat_2"] = outro_date_0031_heat_2
sceneTable["inter_explore"] = inter_explore
sceneTable["outro_date_0031_heat_3"] = outro_date_0031_heat_3
sceneTable["intro_date_0031_heat_4"] = intro_date_0031_heat_4
sceneTable["outro_date_0031_heat_4"] = outro_date_0031_heat_4
sceneTable["intro_date_0031_heat_5"] = intro_date_0031_heat_5
sceneTable["outro_date_0031_heat_5"] = outro_date_0031_heat_5
hss.runScene(sceneTable)
