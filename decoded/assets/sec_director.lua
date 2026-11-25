-- HWU Secondary: Director "Going Off-Script"
function outro_sec_director_1(co)
hss.evt(co,"The next day, you meet up with {CONNECTED_CHARACTER_NAME} before class...", "")
if (hss.getCharacterType("YOU") == hss.CharacterType.MOVIE_STAR) then
hss.dlgA(co,"{CONNECTED_CHARACTER}","Boo-yah! {YOU} is finally starring in one of my movies! I can see it now... you'll be my muse!",5)
hss.dlgA(co,"{CONNECTED_CHARACTER}","The Uma to my Tarantino. The Johnny Depp to my Tim Burton... also the Helena Bonham Carter to my Tim Burton!",1)
hss.dlgA(co,hss.U,"You're... far too kind!",4)
elseif (hss.getCharacterType("YOU") == hss.CharacterType.DIRECTOR) then
hss.dlgA(co,"{CONNECTED_CHARACTER}","Oh, man! Me and {YOU} directing together? We're gonna be so good, it shouldn't even be legal!",5)
else
hss.dlgA(co,"{CONNECTED_CHARACTER}","Between your fashion design and my flair for lens flares, these people are about to get a crash course in ~style!~",5)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Preferably with lots of actual crashes.",1)
hss.dlgA(co,hss.U,"So long as I'm ~behind~ the camera for that part!",1)
end
hss.dlg(co,"{CONNECTED_CHARACTER}","In case you're not familiar with my work, my biggest influences are Michael Bay, John Woo, and myself.")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Now let's see what project the professor wants us to totally crush!",1)
hss.showQuestComplete(co)
hss.evt(co,"You and {CONNECTED_CHARACTER_NAME} take your seats as Professor Hunt paces on stage...", "")
hss.dlg(co,"THOMAS","Between the deadlines, the budgets, and the moronic money-grubbing producers, Hollywood is just one big pressure cooker of a town.")
hss.dlgA(co,"THOMAS","But when things start falling apart... which they will, because you ~will~ screw up... ~that's~ when you show whether you're a name or a nobody.",3)
hss.dlgA(co,"THOMAS","Time for you eager beavers to taste that pressure. Each team will make a short film from scratch... in ~twenty-four hours.~",1)
hss.evt(co,"A murmur of excitement and apprehension ripples through the class.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","That's what I'm talkin' about! Fast and loose! That's ~true~ cinema.",1)
hss.dlgA(co,hss.U,"Just twenty-four hours, though? That sounds pretty tough.",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Not tougher than us, {YOU}. Trust me, we're gonna ~crush~ this assignment, no sweat.",1)
end
function intro_sec_director_2(co)
hss.evt(co,"Professor Hunt passes out sealed envelopes to every team in the classroom.", "")
hss.dlg(co,"THOMAS","Okay, hatchlings, you're each being assigned a genre and a prop that ~must~ feature in your movie.")
hss.dlgA(co,"THOMAS","You all know what 'must' means, right? Good, that's a start.",3)
hss.dlg(co,"{CONNECTED_CHARACTER}","What do you think we got, {YOU}? Better not be something lame. I ~cannot~ deal with lame.")
hss.dlg(co,"THOMAS","Your finished films will be exhibited at the Batista Theater tomorrow night, and the least terrible one will be named the winner. Try not to embarrass the university, or more importantly, me.")
hss.evt(co,"Hunt checks his watch...", "")
hss.dlg(co,"THOMAS","Your twenty-four hours begin in three... two... one...")
end
function outro_sec_director_2(co)
hss.dlg(co,"THOMAS","You may begin.")
hss.evt(co,"The teams tear open their envelopes! You pull a folded page from yours and read...", "")
hss.dlg(co,hss.U,"Says here that the genre for our movie is 'high fantasy', and we have to feature a 'dragon egg' prop.")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Jackpot, baby! Dragons mean fire! Fire means ~explosions!~ Told you this would be a piece of cake.",5)
hss.dlgA(co,hss.U,"I'm pretty excited too, {CONNECTED_CHARACTER_NAME}... but it's still gonna be tough to pull this off in a single day.",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Nothing we can't handle. In fact, I ~live~ for the challenge! It's like Professor Chiseled-Jaw said...",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","The biggest stars in Hollywood got there 'cause they thrived under pressure. Time to show Hunt that we do too!",1)
hss.showQuestComplete(co)
hss.evt(co,"You grab your notebook...", "")
hss.dlg(co,hss.U,"Let's get started. First, we'll need a story outline--")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Story?! Forget the story! We're flying by the seat of our pants here!",4)
hss.dlg(co,"{CONNECTED_CHARACTER}","We'll figure it out as we shoot. That's how ~Star Wars~ was made, you know.")
hss.dlgA(co,hss.U,"I'm not sure that's accurate.",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Trust me. So long as something awesome happens every 30 seconds, no one cares!",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","There's only two things we need right now. An epic place to shoot and two stars who can deliver. Let's scout a location and lock down some talent!",1)
end
function outro_sec_director_3(co)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Awesome find, {YOU}! We're working fast and furious, just the way I like it! Boom, boom, boom!",1)
hss.dlg(co,"{CONNECTED_CHARACTER}","This will be plenty of room to let Sprinkles do her thing.")
hss.dlgA(co,hss.U,"...Sprinkles?",4)
hss.evt(co,"Just then, a trailer backs up onto the lot and drops its rear gate. A powerful black horse trots out, led by a trainer!", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","~That's~ Sprinkles.",1)
hss.dlg(co,"{CONNECTED_CHARACTER}","I'm thinking we open with a cloaked warrior racing across the plain atop a majestic steed! You know, something to grab the audience's attention!")
hss.dlgA(co,"{CONNECTED_CHARACTER}","There's only one question. How do we shoot it to achieve ~maximum spectacularness?~",4)
hss.dlgA(co,hss.U,"Why not use...",1)
local choice = hss.showTextMenu(co, "What do you say?", "Quick, rapid-fire shots! They're fast and fun!|One long tracking shot! It's ambitious and dramatic!|Sloooooow-moooooo!");
hss.setQuestProperty("shotType", choice)
if (choice == 0) then
hss.dlgA(co,"{CONNECTED_CHARACTER}","Obviously! The only way to fit in more awesomeness is to just have ~more~ awesome shots! The audience won't even be able to keep up!",1)
elseif (choice == 1) then
hss.dlgA(co,"{CONNECTED_CHARACTER}","Seriously! I always say, if you're not gonna be daring, like, what are you even ~doing?~",1)
else
hss.dlgA(co,"{CONNECTED_CHARACTER}","Took the words right out of my mouth! ~Everything~ looks cooler in slow motion!",4)
end
if (hss.getCharacterType("YOU") == hss.CharacterType.MOVIE_STAR) then
hss.dlgA(co,"{CONNECTED_CHARACTER}","All right, you're my star, {YOU}! Climb up on Sprinkles, let's do this thing!",1)
else
if (hss.getCharacterType("YOU") == hss.CharacterType.FASHIONISTA) then
hss.evt(co,"Soon, after you've finished designing a flowing black cloak for the rider...", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Sick, {YOU}! Now put that on and climb up on Sprinkles!",1)
else
hss.evt(co,"Soon, after you and {CONNECTED_CHARACTER_NAME} have set up the camera rig...", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","This is gonna look straight ~boss~, {YOU}! Now put on that cloak and climb up on Sprinkles!",1)
end
hss.dlgA(co,hss.U,"Me? You want ~me~ to ride the horse?",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","It's either me or you, and my face is made for the camera's butt. Now let's go! Tick, tock, tick, tock!",1)
end
hss.showQuestComplete(co)
hss.dlgA(co,"{CONNECTED_CHARACTER}","And ~action!~",1)
hss.evt(co,"You hang on tight as Sprinkles the stallion blitzes across the open field, hooves thundering!", "")
hss.dlgA(co,hss.U,"Whoaaaa!",4)
if (choice == 0) then
hss.dlgA(co,"{CONNECTED_CHARACTER}","Cut, print, and fistbump! Those quick cuts totally captured the horse's crazy speed!",1)
elseif (choice == 1) then
hss.dlgA(co,"{CONNECTED_CHARACTER}","Cut, print, and fistbump! That long take totally captured the raw relentlessness of the scene!",1)
else
hss.dlgA(co,"{CONNECTED_CHARACTER}","Cut, print, and fistbump! The slo-mo totally captured the majestic freakin' epicness of the scene!",1)
end
hss.dlg(co,"{CONNECTED_CHARACTER}","But a face-melting start like that isn't enough to make a great film. If a movie doesn't have a make-out scene, it's like, why are you wasting my time?")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Do you know any hotties who are down to star in it?",1)
hss.dlgA(co,hss.U,"I might have some hotties in mind...",1)
hss.dlg(co,"{CONNECTED_CHARACTER}","Seriously, though. Make sure they're hot. Nobody pays to watch non-hot people make out.")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Actually, my uncle Jerry does, but well... that's a long story.",2)
end
function intro_sec_director_4(co)
hss.dlgA(co,hss.Q1,"Make-out scenes are my specialty. I've been getting lots of practice lately.",1)
hss.dlgA(co,hss.Q2,"Okay, I can do this... it's just being vulnerable and intimate for all to see. No sweat...",2)
hss.dlgA(co,hss.Q2,"Wait, wait! Is my hair okay? Do I grab some butt? ~A little or a lot?~",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Lame! One of our stars is having a meltdown! See, this is why I prefer to work with CGI robots...",3)
hss.dlg(co,hss.U,"Don't worry. I'll get {QUEST_CHAR_2_NAME} focused.")
end
function outro_sec_director_4(co)
local castYou = 0;
if (hss.getCharacterReferenceNameByProperty("QUEST_CHAR_1") == "YOU") then
castYou = 1;
end
hss.evt(co,"{QUEST_CHAR_2_NAME} fidgets nervously on set before the make-out scene!", "")
hss.dlgA(co,hss.Q2,"Okay, I'm just gonna go 15-percent tongue. No, 10-percent. Oh no, my mouth's gone dry!",4)
hss.dlg(co,hss.U,"{QUEST_CHAR_2_NAME}, I need you to...")
local kissType = hss.showTextMenu(co, "What do you say?", "Be passionate!|Be nervous!");
if (kissType == 0) then
if (castYou == 1) then
hss.dlgA(co,hss.U,"Forget about yourself. Forget the camera is even there! It's just your character and mine, alone in the world. Show me the fire!",1)
hss.dlg(co,hss.Q2,"Okay... ~whew~... I think I've got this. Thanks, {YOU}.")
hss.dlg(co,"{CONNECTED_CHARACTER}","Action!")
hss.evt(co,"As the camera rolls, {QUEST_CHAR_2_NAME} kisses you with passionate intensity!", "")
else
hss.dlgA(co,hss.U,"Forget about yourself. Forget the camera is even there! It's just you and {QUEST_CHAR_1_NAME}, alone in the world. Show me the fire!",1)
hss.dlg(co,hss.Q2,"Okay... ~whew~... I think I've got this. Thanks, {YOU}.")
hss.dlg(co,"{CONNECTED_CHARACTER}","Action!")
hss.evt(co,"As the camera rolls, {QUEST_CHAR_2_NAME} kisses {QUEST_CHAR_1_NAME} with passionate intensity!", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Now that's what I call acting!",1)
end
else
hss.dlgA(co,hss.Q2,"Be nervous? Is this some sort of reverse psychology trick?",4)
hss.dlgA(co,hss.U,"Nope. I'm loving the anxiety. It's funny, it's authentic, and it's relatable.",1)
hss.dlgA(co,hss.U,"Acting is all about seeking truth. So be true!",1)
hss.dlgA(co,hss.Q2,"Okay... I think I've got this... thanks, {YOU}!",1)
hss.dlg(co,"{CONNECTED_CHARACTER}","Action!")
if (castYou == 1) then
hss.evt(co,"As the camera rolls, {QUEST_CHAR_1_NAME} kisses you awkwardly...", "")
else
hss.evt(co,"As the camera rolls, {QUEST_CHAR_2_NAME} kisses {QUEST_CHAR_1_NAME} awkwardly...", "")
end
hss.dlgA(co,"{CONNECTED_CHARACTER}","On the real, though... that ~is~ kinda cute!",1)
end
hss.setQuestProperty("castYou", castYou)
hss.setQuestProperty("kissType", kissType)
hss.showQuestComplete(co)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Action, check. Romance, double check. At this rate, we might even get to sleep tonight!",1)
hss.dlgA(co,hss.U,"That would be nice.",1)
hss.dlg(co,"{CONNECTED_CHARACTER}","All we need now is the big finale, and that's where we'll showcase our required prop... ~the dragon egg!~")
end
function intro_sec_director_5(co)
hss.evt(co,"A van pulls up on set. The driver hands {CONNECTED_CHARACTER_NAME} a cardboard box.", "")
hss.dlg(co,"{CONNECTED_CHARACTER}","Here it is, the last piece of the puzzle!")
hss.evt(co,"{CONNECTED_CHARACTER_NAME} rips open the box and pulls out... a large speckled ostrich egg!", "")
hss.dlgA(co,hss.U,"Hey! That totally looks like it could be a dragon egg!",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Pretty sweet, huh? Scored the last one, just before the store closed for the night--",1)
hss.evt(co,"Just then, the egg slips from {CONNECTED_CHARACTER_NAME}'s grip! It shatters into a puddle of goop!", "")
hss.dlgA(co,hss.U,"...oh, crap.",4)
end
function outro_sec_director_5(co)
hss.evt(co,"{CONNECTED_CHARACTER_NAME} stares in horror at the gooey remains of your dragon egg prop!", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","No... no, no, no...",4)
hss.dlgA(co,hss.U,"It's okay, {CONNECTED_CHARACTER_NAME}--",2)
hss.dlgA(co,"{CONNECTED_CHARACTER}","How is it okay?! We're disqualified if we don't get that egg in the movie, and it's too late to buy another! We're completely and utterly screwed!",2)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Oh my god... Hunt was right... I ~don't~ have what it takes. I'm a ~nobody!~",2)
hss.dlgA(co,hss.U,"Only if you let yourself be one! When the going gets tough, real filmmakers find a way, remember?",3)
hss.dlgA(co,"{CONNECTED_CHARACTER}","But there's nothing we can do!",2)
hss.dlg(co,hss.U,"Sure there is! I say we...")
local choice = hss.showTextMenu(co, "What do you do?", "Replace it with a fake egg!|Turn it into an omelet!");
if (choice == 0) then
hss.evt(co,"After wrapping a basketball in paper mache, you and {CONNECTED_CHARACTER_NAME} shoot the scene with the fake egg hidden in shadows!", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Whoa! So mysterious... and mystery is provocative!",4)
else
hss.dlgA(co,"{CONNECTED_CHARACTER}","Huh?!",4)
hss.dlgA(co,hss.U,"We can just say that our main character eats dragon eggs for breakfast! That way it's still featured!",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Haha! Way to adapt, {YOU}!",1)
end
hss.evt(co,"After filming the last shot...", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Um... so I, uh... I might've freaked out a little back there. That's my bad.",2)
hss.dlgA(co,hss.U,"I've got your back. That's why we're a team.",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Thanks, {YOU}. Well, that's a wrap. Time to put my Final Cut skills to the test and edit this thing ASAP!",1)
hss.evt(co,"A few hours later...", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","This. Is. Awesome. Now we just have to turn it in to Hunt before...",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Oh, man! We gotta go, now! We're almost out of time!",4)
hss.setQuestProperty("eggChoice", choice)
hss.showQuestComplete(co)
hss.evt(co,"As the sun rises over L.A., you and {CONNECTED_CHARACTER_NAME} race back to campus!", "")
hss.dlgA(co,hss.U,"Professor! Here's our film, all finished!",1)
hss.evt(co,"Hunt looks up from his desk, studying you. He checks his watch.", "")
hss.dlgA(co,"THOMAS","You're late.",3)
hss.dlgA(co,"{CONNECTED_CHARACTER}","By, like, fifteen seconds! That's nothing!",4)
hss.dlgA(co,"THOMAS","Late is late, {CONNECTED_CHARACTER_NAME}.",3)
hss.evt(co,"Hunt takes your flash drive.", "")
hss.dlgA(co,"THOMAS","You both look like crap. Go clean yourselves up. Tonight is a film screening, not a slumber party.",3)
end
function outro_sec_director_6(co)
local shotType;
local castYou;
local kissType;
local eggChoice;
shotType = hss.getGameProperty("sec_director_3", "shotType")
castYou = hss.getGameProperty("sec_director_4", "castYou")
kissType = hss.getGameProperty("sec_director_4", "kissType")
eggChoice = hss.getGameProperty("sec_director_5", "eggChoice")
hss.evt(co,"That night, you and {CONNECTED_CHARACTER_NAME} enter the Batista Theater, where all your classmates are socializing, near-delirious from exhaustion.", "")
hss.evt(co,"The lights go down, and the short films start to play! Soon, your opening credits appear on the big screen!", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Nothing like seeing your name in giant letters!",1)
hss.dlgA(co,hss.U,"Here we go!",4)
if (shotType == 0) then
hss.evt(co,"As the movie starts, rapid-fire cuts of you on the black horse puts the whole audience on the edge of their seats!", "")
elseif (shotType == 1) then
hss.evt(co,"As the movie starts, the audience holds its breath during the epic tracking shot of you on the black horse!", "")
else
hss.evt(co,"As the movie starts, the audience gazes with wonder at the elegant slow-motion shot of you on the black horse!", "")
end
if (eggChoice == 0) then
hss.evt(co,"They ooh and aah when the fake dragon egg appears shadowy and ominous...", "")
else
hss.evt(co,"They laugh at the scene of cooking dragon egg omelets...", "")
end
if (castYou == 1) then
if (kissType == 0) then
hss.evt(co,"And they cheer at the sight of you locked in a passionate kiss with your co-star!", "")
else
hss.evt(co,"And they aww at the sight of your awkward kiss with your co-star!", "")
end
else
if (kissType == 0) then
hss.evt(co,"And they cheer at the passionate kiss between your two leads!", "")
else
hss.evt(co,"And they aww at the awkward kiss between your two leads!", "")
end
end
hss.dlgA(co,"{CONNECTED_CHARACTER}","They're feeling it, {YOU}! We've got 'em eating out of the palms of our hands!",1)
hss.evt(co,"The movie ends with a big explosion filling the whole screen!", "")
hss.dlgA(co,hss.U,"Whoa!",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Come on, {YOU}. You ~know~ I had to get an explosion in there somewhere!",1)
hss.evt(co,"The whole class stands up and applauds the loudest they have all night!", "")
hss.showQuestComplete(co)
hss.evt(co,"The lights come up, and Professor Hunt walks to the front of the theater, holding his scorecard.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","The real drama's just getting started, {YOU}. It's awards time!",1)
hss.dlg(co,"{CONNECTED_CHARACTER}","And I think I know who our toughest competition is...")
end
function intro_sec_director_7(co)
hss.evt(co,"As Professor Hunt begins talking, {QUEST_CHAR_2_NAME} and {QUEST_CHAR_3_NAME} come up to congratulate you.", "")
hss.dlgA(co,hss.Q2,"I thought ~our~ movie was good, but you guys killed it.",1)
hss.dlgA(co,hss.Q3,"You and {CONNECTED_CHARACTER_NAME} are totally gonna win.",1)
hss.dlgA(co,hss.U,"Well...",1)
local choice = hss.showTextMenu(co, "What do you say?", "Everyone's was so good!|You're right, we were the best!");
if (choice == 0) then
hss.dlgA(co,hss.Q3,"Thanks, {YOU}... but you've got this in the bag.",1)
else
hss.dlgA(co,hss.Q2,"Uh... that's one way to take a compliment, I guess.",4)
end
hss.dlg(co,"THOMAS","Tonight's films each stood out in their own way... some for better reasons than others...")
hss.dlg(co,"THOMAS","But none of you ~completely~ humiliated yourselves. And so, you survive my course for another day.")
hss.dlgA(co,"THOMAS","But let's not drag this out, okay? Awards shows are the scourge of Hollywood.",3)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Here we go! Get your acceptance speech ready, {YOU}!",1)
hss.dlg(co,"THOMAS","The winner is...")
end
function outro_sec_director_7(co)
hss.dlg(co,"THOMAS","The winner is...")
hss.dlg(co,"THOMAS","{QUEST_CHAR_2_NAME} and {QUEST_CHAR_3_NAME}.")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Are you kidding me?!",3)
hss.dlgA(co,hss.U,"Oh...",2)
hss.dlgA(co,hss.Q2,"Wait... we won?! ~We freakin' won?!~",4)
hss.dlgA(co,hss.Q3,"Woohoo! Afterparty at my place!",5)
hss.evt(co,"Disappointed, you start to head for the exit, but {CONNECTED_CHARACTER_NAME} corners Hunt!", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Professor! Can you at least tell us what we did wrong?",3)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Was it the egg thing? Because I'm the one who broke it. You shouldn't be punishing {YOU} for my screw-up!",3)
hss.dlgA(co,"THOMAS","If you want to be noble, you're in the wrong town. You sink and swim together.",3)
hss.dlgA(co,"THOMAS","And to be frank, I was actually very impressed by the creative way you handled the prop.",3)
hss.dlgA(co,"THOMAS","But the fact remains, you were late. And if you think I'm the type to give special treatment, you are sorely mistaken.",3)
hss.showQuestComplete(co)
hss.evt(co,"As the afterparty at {QUEST_CHAR_3_NAME}'s dorm continues into the night, {CONNECTED_CHARACTER_NAME} sidles up to you.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Hey... {YOU}... that's bull that we lost. You were awesome.",2)
hss.dlgA(co,"{CONNECTED_CHARACTER}","If I hadn't broken the egg, we would've been done on time.",2)
hss.dlgA(co,hss.U,"Honestly, {CONNECTED_CHARACTER_NAME}...",2)
local choice = hss.showTextMenu(co, "What do you say?", "It doesn't matter.|We should've won anyway.");
if (choice == 0) then
hss.dlg(co,hss.U,"Don't worry about it. Who cares if we won some stupid award from a jerk professor? That's not why we're here.")
hss.dlg(co,hss.U,"We've been making our own way all this time, and that's not about to change.")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Hey, you know what? Yeah! Hunt wouldn't know an awesome flick if it... if it flicked him in the face!",1)
else
hss.dlgA(co,hss.U,"We were seconds late. Hunt was just looking for a reason to disqualify us.",3)
hss.dlgA(co,"{CONNECTED_CHARACTER}","But why? He got a beef with you or something? Like even more than he does with the whole world?",2)
hss.dlgA(co,hss.U,"I don't know. But I'm not going to let him stop me.",3)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Me neither!",1)
end
hss.dlg(co,"{CONNECTED_CHARACTER}","But really, {YOU}... I might be an egomaniacal narcissist, but I know when I owe somebody.")
hss.dlg(co,"{CONNECTED_CHARACTER}","We wouldn't have finished the movie at all if you hadn't kept a clear head.")
hss.dlg(co,hss.U,"We're a team, {CONNECTED_CHARACTER_NAME}. Today taught us ~both~ a lot.")
hss.dlg(co,"{CONNECTED_CHARACTER}","I mean it. You stayed cool under pressure. If we were The Avengers, you'd be Iron Man, and I'd be some hysterical civilian who shwarmas all over themselves.")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Next time, I just hope I can be more like you.",1)
end
hss.checkEnvironment({"YOU"})
hss.runOpt()
