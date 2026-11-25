require "hss"
function outro_prim_0001_1(co)
hss.dlgA(co,hss.E,"Great, looks like there's enough room for me to move in over here!",1)
hss.evt(co,"Remember to keep building dorms to make more room for new members of your entourage!", "")
hss.showQuestComplete(co)
hss.evt(co,"After you recruit Ethan to your Entourage, place him in either a ~Movie Star~ Dorm or a ~Director~ Dorm!", "")
end
function outro_prim_0001_2(co)
hss.setGameProperty("FAME_TRACKER", "NUM_FAME", "0");
hss.setGameProperty("DATES_ETHAN", "NUM_DATES", "0");
hss.setGameProperty("DATES_ADDISON", "NUM_DATES", "0");
hss.setGameProperty("DATES_CHRIS", "NUM_DATES", "0");
hss.setGameProperty("ARIA_ADDED", "ARIA_FLAG", "FALSE");
hss.setGameProperty("ARIA_STARTED", "ARIA_FLAG", "FALSE");
hss.evt(co,"The morning after your late night at Blitz, you're woken up by a knock on your door. You stumble out of bed to answer it, and Ethan rushes in.", "")
hss.dlgA(co,hss.E,"No one ever won an Oscar by sleeping in! Time to rise and shine. Here's a bagel.",1)
hss.dlgA(co,hss.U,"It's got a bite taken out of it.",2)
hss.dlgA(co,hss.E,"That's my fifteen percent. Get used to it.",7)
hss.showQuestComplete(co)
hss.dlgA(co,hss.E,"So, good news, bad news time.",1)
hss.dlg(co,hss.E,"Good news: that little meet-cute with Chris Winters last night got you mentioned on PerezHilton.")
hss.evt(co,"Ethan pulls up the site on his phone and shows you.", "")
hss.dlgA(co,hss.U,"This says Chris was spotted at the party 'slumming with some no-namer.' How is this the good news?",4)
hss.dlg(co,hss.E,"Any publicity is good publicity. I've already got some ideas on how to leverage this. Just trust me.")
hss.dlg(co,hss.U,"Okay, so what's the bad news, then?")
hss.dlgA(co,hss.E,"That's the real reason I'm waking you up this early. You've been called in front of the University Board Committee.",2)
hss.dlgA(co,hss.U,"Huh? Why?",4)
hss.dlgA(co,hss.E,"One word: Bianca.",3)
hss.dlgA(co,hss.U,"I'm going to need more words.",3)
hss.dlg(co,hss.E,"Her dad's a big shot around here, and I'd bet my Porsche that she just pulled some strings to get you in trouble over some trumped up charges.")
hss.dlg(co,hss.E,"Let's go. You've got to find out what we're dealing with here.")
end
function inter_meeting(co)
local hasMet = 0;
hasMet = hss.getGameProperty("sec_starting_3", "hasMetProf")
if (hasMet == 1) then
hss.evt(co,"At the University Board Committee meeting, you sit facing a row of Hollywood U's top professors, led by Thomas Hunt. Bianca and her friends sit next to them, grinning smugly.", "")
hss.dlgA(co,"THOMAS","{YOU}. I can't say I'm surprised to see you here under these circumstances. If you aren't certain which of your escapades has landed you in front of this committee, allow me to fill you in.",3)
else
hss.evt(co,"At the University Board Committee meeting, you sit facing a row of Hollywood U's top professors. Bianca and her friends sit next to them, grinning smugly.", "")
hss.evt(co,"You realize one of the professors is eyeing you with a cold stare.", "")
hss.dlgA(co,"THOMAS","...",3)
hss.dlgA(co,hss.U,"Um, Ethan? Who's the guy giving me the death glare?",2)
hss.dlg(co,hss.E,"That's just Thomas Hunt. Probably the greatest actor and filmmaker of his generation... that is, before he quit to start teaching.")
hss.dlgA(co,hss.E,"Equal parts genius, perfectionist, and egomaniac. The guy's got a rep for making people's lives hell.",2)
hss.dlgA(co,hss.U,"And it looks like I'm next.",2)
hss.dlgA(co,"THOMAS","Ahem, {YOU}? Sorry to interrupt your extraordinarily important conversation, but we have a little business to attend to.",3)
end
hss.dlgA(co,"THOMAS","According to Bianca Stone, you accosted her last night at a club and threw your drink at her.",3)
hss.dlgA(co,hss.U,"What?!",4)
hss.dlgA(co,hss.B,"That's right. {YOU} was so violent! Honestly, I don't even feel safe standing here right now.",2)
local choice = hss.showTextMenu(co, "What do you say?", "Bianca is a disgusting liar!|That's not exactly how it happened.");
if (choice == 0) then
hss.dlgA(co,"THOMAS","Bianca told us that you'd say something like that. I'm afraid that several witnesses have come forward to back her version of the events.",3)
else
hss.dlg(co,hss.U,"I accidentally bumped into her and spilled my drink. But it was unintentional.")
hss.dlgA(co,"THOMAS","I'm glad you've at least admitted to the incident occurring.",3,hss.REWARD_COINS,20)
hss.dlgA(co,"THOMAS","But Bianca has several witnesses who have supported her claims that not only was it intentional, but that you were aggressive and physical during the confrontation.",3)
end
hss.dlg(co,"JENNI","Yeah, we saw it all! {YOU} was like a crazy, rabid dog. The kind you have to put down.")
hss.dlgA(co,"SHAE","Not at all what you'd expect of a Hollywood U student.",3)
hss.dlgA(co,"LANCE","Yeah. Bianca was so brave, but she shouldn't have to deal with a crazy person.",2)
hss.dlgA(co,"THOMAS","Though it didn't happen on campus, we take these matters ~very~ seriously. As a student at Hollywood University, your actions reflect on this institution.",3)
hss.dlgA(co,"THOMAS","Starting today, we're putting you on probation. By the end of the month, the board will need to see that you've completed at least three high-profile projects, and you'll need three industry professionals to vouch for your character.",3)
hss.dlgA(co,"THOMAS","One step out of line in that time, and you'll be expelled.",3)
hss.markQuestScriptRequirementFinished()
end
function outro_prim_0001_3(co)
hss.evt(co,"You find Ethan outside the meeting room and fill him in on the way back to your dorm.", "")
hss.dlgA(co,hss.U,"The committee just ate up everything Bianca said! What happened to innocent until proven guilty?",3)
hss.dlgA(co,hss.E,"Hate to say it, but this doesn't surprise me. Bianca's dad has some serious power around this town, and you, my friend, are now on his bad side.",2)
hss.dlgA(co,hss.U,"Yeah, well, he's about to--",3)
hss.dlgA(co,hss.U,"Hey, check it out!",4)
hss.evt(co,"On the floor outside your dorm room is a letter with a familiar wax seal!", "")
hss.dlgA(co,hss.E,"What's that?",4)
hss.evt(co,"You tear open the letter and start reading it aloud.", "")
hss.dlgA(co,hss.U,"'{YOU}, probation isn't the most promising start for a rising star. Another mistake could be the end of your career. Tread lightly.'",4)
hss.setQuestProperty("hasMetProf", 1)
hss.showQuestComplete(co)
hss.dlg(co,hss.E,"Sorry, {YOU}. It doesn't sound like we can count on your benefactor. We're on our own to fight this probation.")
hss.dlgA(co,hss.U,"Where do we even begin? I need to start a project right away if I'm going to even have a shot at staying here...",2)
hss.dlgA(co,hss.E,"'If?' What kind of quitter talk is that? You're here to stay.",3)
hss.dlgA(co,hss.U,"You're right. I can't let Bianca win. I'm going to show her... and everyone... that I have what it takes to be here.",3)
hss.dlgA(co,hss.E,"That's the spirit! Now put your game face on... I've got something in the works that should really help your rep around here.",1)
end
function outro_prim_0001_4(co)
hss.dlgA(co,hss.E,"While you were in your meeting, your new agent turned that piece-of-crap tabloid blurb about you and Chris Winters into a brunch at Freddy's Bistro with up-and-coming pop star Lisa Valentine!",1)
hss.dlg(co,hss.U,"Lisa Valentine?")
hss.dlg(co,hss.E,"You know, as in ~'Lisa Mermaid'!~ The biggest pre-teen TV show of the century!")
hss.dlg(co,hss.E,"Lisa Valentine starred as the mermaid princess, Lisa Mermaid. She sang songs and saved her sea kingdom from a bumbling octopus on a weekly basis!")
hss.dlg(co,hss.E,"Actually, quick pro-tip. When we meet her, don't bring up 'Lisa Mermaid'.")
hss.dlg(co,hss.U,"Why not?")
hss.dlg(co,hss.E,"Well... she's twenty now. She's trying to break out of her kiddie past with a Miley-sized wrecking ball. Well, if her mom will ever get out of her way.")
hss.dlgA(co,hss.U,"Got it. No mermaid talk. So, when's this meeting?",1)
hss.dlg(co,hss.E,"She ~just~ texted me a time. Don't panic, but it's like, ten minutes from now. You can change on the way!")
hss.dlgA(co,hss.U,"Change? But I just wore this to meet with the professors...",4)
hss.dlg(co,hss.E,"Yeah, and it was fine for a committee meeting. But this is a meeting with Lisa Valentine! She actually cares about fashion.")
hss.dlgA(co,hss.U,"But I need some time to get ready!",3)
hss.dlg(co,hss.E,"It's up to you. Want to show up polished and late, or get ready in the car?")
local choice = hss.showTextMenu(co, "What do you say?", "Let's go! I'll change in the car.|I'm going to take my time and look my best.")
hss.setQuestProperty("onTime", choice)
if (choice == 0) then
hss.dlgA(co,hss.E,"Now we're talking!",1)
hss.showQuestComplete(co)
hss.evt(co,"A few minutes later, you're flying down the road in Ethan's Porsche!", "")
hss.dlg(co,hss.U,"How can you afford a car like this?")
hss.dlg(co,hss.E,"It's L.A.. I'm an agent. Clients see the bling, clients think I'll ~get them~ the bling.")
hss.dlg(co,hss.E,"I can't afford ~not~ to have one.")
hss.dlg(co,hss.E,"But hey, you should be focused on looking like the next big thing for Lisa! Get changed!")
else
hss.dlgA(co,hss.U,"There's no way I'll look good changing in a car.",3)
hss.dlgA(co,hss.E,"You're really going to be late to the biggest meeting of your life?",3)
hss.dlgA(co,hss.U,"Yep!",1)
hss.showQuestComplete(co)
hss.dlg(co,hss.E,"I can't believe this is happening...")
hss.dlgA(co,hss.U,"Hey, no one cares if you're late as long as you show up looking good!",1)
end
end
function outro_prim_0001_5(co)
local onTime;
onTime = hss.getGameProperty("prim_0001_brunch_4", "onTime")
if (onTime == 0) then
hss.dlg(co,hss.U,"How do I look?")
hss.dlg(co,hss.E,"Considering you did that at seventy miles an hour... not bad!")
hss.dlg(co,hss.U,"I'll take it, especially if our punctuality impresses Lisa!")
else
hss.evt(co,"After several minutes of intense primping...", "")
hss.dlg(co,hss.U,"So, how do I look?")
if hss.getCharacterGender("YOU") == hss.Gender.MALE then
hss.dlgA(co,hss.E,"Like Ryan Gosling's even hotter younger brother.",1)
else
hss.dlgA(co,hss.E,"Like Angelina Jolie's even hotter younger sister.",1)
end
hss.dlgA(co,hss.U,"I'll take that.",1)
hss.dlg(co,hss.E,"You're here. You're hot. Now let's go 'cause we're late.")
hss.evt(co,"A few minutes later, you're flying down the road in Ethan's Porsche!", "")
hss.dlg(co,hss.U,"How can you afford a car like this?")
hss.dlg(co,hss.E,"It's L.A.. I'm an agent. Clients see the bling, clients think I'll ~get them~ the bling.")
hss.dlg(co,hss.E,"I can't afford ~not~ to have one.")
end
hss.showQuestComplete(co)
hss.evt(co,"You and Ethan pull into the parking lot at Freddy's... to find it packed with sports cars, vintage hot rods, and sleek black limousines.", "")
hss.dlgA(co,hss.U,"What if we can't find a spot?",2)
hss.dlgA(co,hss.E,"Uh... I'm sure one will open up...",4)
hss.dlgA(co,hss.E,"Any minute now...",2)
end
function intro_prim_0001_6(co)
hss.evt(co,"Finally, a Bugatti reverses out of a parking spot and peels out into the street!", "")
hss.dlgA(co,hss.E,"That's more like it!",1)
hss.evt(co,"Ethan slides his Porsche into the spot, and the two of you jump out.", "")
hss.evt(co,"The place is crowded with starlets, screenwriters, and Hollywood execs hashing out deals over eggs Benedict and bottomless mimosas.", "")
hss.dlgA(co,hss.U,"Whoa... there are ~a lot~ of famous faces here.",4)
hss.dlg(co,hss.E,"Yeah, this is a local hotspot for industry types. Some of the biggest partnerships in Hollywood history started as chance encounters at Freddy's.")
hss.dlgA(co,hss.E,"Speaking of which... I think I see Lisa right over there!",1)
end
function outro_prim_0001_6(co)
local onTime;
onTime = hss.getGameProperty("prim_0001_brunch_4", "onTime")
hss.evt(co,"You and Ethan approach Lisa, who is sitting at an outdoor table.", "")
hss.dlgA(co,hss.E,"Lisa Valentine! How's my favorite singer?",7)
if (onTime == 0) then
hss.dlgA(co,"LISA","I'm just happy you're not late. I've got to be in the studio in an hour to finish my album. I'm ~SO~ busy today.",1)
hss.dlg(co,hss.E,"Thanks for taking the time to meet with us. I really appreciate it.")
hss.dlgA(co,"LISA","Hey, I always have time for the guy who introduced me to the best makeup artist in town when I was going through the Acne Crisis of 2013. Ethan ~totally~ saved my skin.",1)
else
hss.dlgA(co,"LISA","Annoyed. You're late.",3)
hss.dlgA(co,hss.U,"I'm sorry. It's my fault we're late... I took a little too long getting ready. I wanted to look my best for this meeting.",2)
hss.dlg(co,hss.E,"Lisa, this is {YOU}. {YOU}, Lisa Valentine.")
hss.dlg(co,"LISA","Well, {YOU}... I have to admit, I love your outfit. And I know I didn't really give you much warning. As you can probably guess, I'm a busy girl.")
hss.dlg(co,"LISA","I only agreed to this meeting because of Ethan. He introduced me to the best makeup artist in town when I was going through the Acne Crisis of 2013. Ethan ~totally~ saved my skin.")
end
hss.dlg(co,hss.E,"Literally.")
hss.dlgA(co,"LISA","Huh?",2)
hss.showQuestComplete(co)
hss.dlgA(co,hss.E,"Nice choice, coming to Freddy's, by the way.",1)
hss.dlgA(co,"LISA","I love their lattes. This is my third one! My mom ~hates~ when I have too much caffeine. Luckily, she got stuck in a meeting with my lawyers!",1)
hss.dlg(co,hss.U,"So, Lisa, Ethan tells me that...")
local choice = hss.showTextMenu(co, "What do you say?", "You were on Lisa Mermaid!|You're a rising star!", false, 3);
if (choice == 1) then
hss.dlg(co,"LISA","Trying to be. It isn't easy shaking the image of my past. You spend five years flopping around in a mermaid tail, and suddenly it's all anyone can talk about.")
hss.dlgA(co,"LISA","You're actually one of the few people I've met that hasn't ~immediately~ started talking about it.",1)
hss.dlgA(co,hss.U,"Hey, there's more to you than your past.",0,hss.REWARD_COINS,20)
elseif (choice == 0) then
hss.dlgA(co,"LISA","Ugh! If I hear anyone mention Lisa Mermaid ~one~ more time... I'm going to scream!",3)
hss.evt(co,"Ethan glares at you.", "")
hss.dlg(co,hss.U,"Uh... he also said that you're moving past that! Way past that!")
hss.dlgA(co,"LISA","You spend five years flopping around in a mermaid tail, and suddenly it's all anyone can talk about. It's like no one gets it. I'm not twelve years old anymore!",2)
hss.dlg(co,hss.U,"Right... sorry...")
else
hss.dlgA(co,"LISA","Ethan tells you... what?",2)
hss.dlgA(co,hss.U,"Um... sorry, I totally blanked.",4)
hss.dlgA(co,hss.E,"I was telling {YOU} that Lisa is a rising star!",3)
hss.dlg(co,"LISA","Thanks, Ethan. It's not easy to move past the whole Lisa Mermaid thing... you spend five years flopping around in a mermaid tail, and suddenly it's all people can talk about.")
end
hss.dlgA(co,"LISA","That's why I wanted to see you guys, actually. I've got a project that's going to make people forget all about that stupid mermaid. And Ethan said you were just the person to help!",1)
end
function inter_power_brunch(co)
hss.dlgA(co,"LISA","I'm going to be releasing my first album since 'Lisa Mermaid' ended.",1)
hss.dlg(co,"LISA","I'm done with the whole 'little girl' thing... I'm twenty years old now! That's like, so mature!")
hss.dlgA(co,"LISA","I have to show everyone I'm an adult now. And one of the best ways to do that is with an edgy music video!",1)
hss.dlg(co,"LISA","I don't want my video to be the same old recycled Hollywood garbage, and I've heard about Hollywood U's reputation for fresh talent.")
if (hss.getCharacterType("YOU") == hss.CharacterType.MOVIE_STAR) then
hss.dlgA(co,hss.U,"Perfect. Because I'm a brand new face, and I know I'll be the perfect star for your video!",1)
elseif (hss.getCharacterType("YOU") == hss.CharacterType.FASHIONISTA) then
hss.dlgA(co,hss.U,"Great! I know I can come up with some original fashions for your video!",1)
elseif (hss.getCharacterType("YOU") == hss.CharacterType.DIRECTOR) then
hss.dlgA(co,hss.U,"Perfect. I'm the newest director in town so you know my vision will be original!",1)
end
hss.dlgA(co,"LISA","Sweet! I can't wait to meet your crew!",1)
hss.dlgA(co,hss.U,"My... crew?",4)
hss.dlg(co,"LISA","Yeah. On the phone, Ethan said you ~and your crew~ would take care of the ~whole~ video.")
hss.evt(co,"Ethan gives you a wide-eyed glare!", "")
local choice = hss.showTextMenu(co, "What do you say?", "We'll get the video done. No problem!|Ethan said WHAT?!", false, 3);
if (choice == 0) then
hss.dlgA(co,hss.U,"Oh yeah. I've got a great... uh... crew.",1,hss.REWARD_COINS,20)
hss.evt(co,"Ethan winks at you.", "")
elseif (choice == 1) then
hss.dlgA(co,"LISA","Ethan...",3)
hss.dlgA(co,hss.E,"Don't worry! {YOU} knows that this video is a ~vital career move.~ Don't you, {YOU}?",1)
hss.dlgA(co,hss.U,"Er... yeah! So... I'll just make a whole music video. No problem.",4)
else
hss.dlgA(co,hss.U,"Uh...",4)
hss.dlgA(co,"LISA","You're not going to make this whole video by yourself, are you?",2)
hss.dlgA(co,hss.U,"Um... no! Of course not!",4)
hss.dlgA(co,"LISA","Then you've got a crew, right?",3)
hss.dlgA(co,hss.E,"Don't worry, Lisa. {YOU}'s got it covered.",1)
end
hss.dlg(co,"LISA","Good, because if this video is a flop, my career is basically over.")
hss.markQuestScriptRequirementFinished()
end
function outro_prim_0001_7(co)
hss.dlg(co,hss.E,"So what's our next step here?")
hss.dlgA(co,"LISA","Tomorrow you can pitch me and my team your best idea... oh, and send over the bios for your crew.",1)
hss.dlg(co,"LISA","I'll have someone send you a copy of the song. It's about an epic party, so the video should be something amazing!")
hss.dlgA(co,hss.U,"You've got it!",1)
hss.dlgA(co,"LISA","And Ethan, speaking of parties, I scored an extra invite to that ~party~ you asked me about. The one Aria's throwing for her birthday?",1)
hss.dlgA(co,hss.E,"Are you kidding? ~Lisa~, you're the best. I'll see you there. And I can't wait to meet Aria.",7)
hss.dlg(co,hss.U,"Aria?")
hss.dlg(co,"LISA","She was my sidekick on Lisa Mermaid. You won't meet a sweeter, sillier millionairess.")
hss.dlg(co,"LISA","Anyway, you can bring a plus one. You should come along too, {YOU}. Aria's yacht parties are legendary.")
hss.evt(co,"Lisa hands Ethan a fancy, seashell-shaped invitation and then waves to you both as she leaves.", "")
hss.dlgA(co,hss.E,"You just got invited to one of the most exclusive parties!",1)
hss.dlgA(co,hss.U,"A fancy party? I love Hollywood!",8)
hss.dlgA(co,hss.E,"Heh. It's a good thing you impressed Lisa. Remember the terms of your probation? If everything works out, this music video will be your first project for the University Board Committee...",1)
hss.dlg(co,hss.E,"And Lisa just might be the first professional who can vouch for you!")
hss.showQuestComplete(co)
hss.dlgA(co,hss.U,"So, business... how exactly am I supposed to find a crew in twenty-four hours?",4)
hss.dlgA(co,hss.E,"Don't worry. You've got Ethan Blake on your side. Together, we can make it happen.",1)
hss.dlg(co,hss.C,"Hey there, {YOU}.")
hss.evt(co,"You turn to see Chris Winters walking toward you!", "")
hss.dlgA(co,hss.U,"...Chris?!",4)
hss.dlgA(co,hss.C,"Mind if I join you for brunch?",1)
hss.dlgA(co,hss.U,"Sure! My treat!",1)
end
function outro_prim_0001_8(co)
local intoChris;
hss.dlgA(co,hss.C,"This seat taken?",1)
hss.dlg(co,hss.E,"For Chris Winters... never. I'm Ethan. Ethan Blake.")
intoChris = hss.getGameProperty("tutorial_bridge_3", "intoChris")
if (intoChris == 1) then
hss.evt(co,"Chris shakes Ethan's hand, sits, and gives you a neatly wrapped box.", "")
hss.dlgA(co,hss.U,"What is it?",4)
hss.dlg(co,hss.C,"Only one way to find out...")
hss.evt(co,"You open the box Chris Winters handed you, revealing your missing shoe from the other night!", "")
hss.dlgA(co,hss.U,"My shoe?! How did you find this?",4)
hss.dlgA(co,hss.C,"I guess it was just... fate.",1)
hss.setGameProperty("FAME_TRACKER", "NUM_FAME", "1");
hss.dlgA(co,hss.U,"Oh yeah, and how did you find me?",1)
hss.dlg(co,hss.C,"That was easy. Some fan tweeted that the 'no-namer' seen with me at the club last night was brunching with Lisa Valentine. Seemed like an opportunity to Cinderella your shoe back to you.")
hss.dlg(co,hss.U,"Does that make you...")
local choice = hss.showTextMenu(co, "What do you say?", "My Prince Charming?|My Fairy Godmother?|Kind of a creep?");
if (choice == 0) then
hss.dlgA(co,hss.C,"Well, I ~have~ been auditioning for roles in several fairy tale adaptations...",1)
elseif (choice == 1) then
hss.dlgA(co,hss.C,"Well, I ~have~ been auditioning for roles in several fairy tale adaptations...",1)
else
hss.dlgA(co,hss.C,"Whoa, I'm just a guy trying to do a good deed. How about that?",4)
end
else
hss.evt(co,"Chris shakes Ethan's hand, sits, and orders an Americano from a passing waiter.", "")
hss.dlgA(co,hss.C,"So, you're a Freddy's fan? You've got good taste, {YOU}.",1)
hss.dlg(co,hss.U,"Oh, I can't take credit for that. Lisa Valentine asked me here for a brunch meeting.")
hss.dlgA(co,hss.C,"A meeting with Lisa Valentine? You're moving up!",1)
hss.dlgA(co,hss.E,"Yeah, it's amazing what a good agent can do for your career... right, {YOU}?",1)
hss.dlgA(co,hss.U,"All right, you can stop congratulating yourself.",1)
hss.setGameProperty("FAME_TRACKER", "NUM_FAME", "1");
end
hss.showQuestComplete(co)
hss.dlg(co,hss.C,"So, how'd the meeting go?")
hss.dlg(co,hss.U,"We need to pitch Lisa Valentine a music video with a big party theme. Any tips?")
hss.dlgA(co,hss.C,"Well... I do have a pretty big beach house I could let you use to shoot the video.",1)
hss.dlgA(co,hss.U,"Are you serious?",4)
hss.dlg(co,hss.C,"Yep! Just give me a heads up, and I'll let you in.")
hss.evt(co,"He hands you a card with a phone number on the back. Just then, a swarm of paparazzi arrives, snapping photos from the sidewalk.", "")
hss.dlg(co,hss.C,"And that's my cue to leave. I'll see you around, {YOU}.")
hss.evt(co,"Chris leaves, the paparazzi trailing after him.", "")
hss.dlg(co,hss.E,"Time to get our crew together so we can make a pitch to Lisa.")
hss.dlg(co,hss.E,"By the way, let me know if you want to go to her friend's party tonight. I think I can get you in!")
hss.evt(co,"You've unlocked a special VIP Quest, featuring Lisa Valentine and an A-list celebrity who you can add to your entourage! Be sure to check it out!", "")
end
hss.checkEnvironment({"YOU"})
hss.runOpt()
