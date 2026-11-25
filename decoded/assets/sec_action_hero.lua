function outro_sec_action_hero_1(co)
hss.evt(co,"The morning sun crests over the Hollywood skyline, bathing the still-sleeping city in shades of amber and gold.", "")
hss.evt(co,"The streets are vacant except for delivery men, {CONNECTED_CHARACTER_NAME}... and you. You're jogging.", "")
hss.dlg(co,hss.U,"Huff... I get that Hunt has us partnered together for the whole week...")
hss.dlg(co,hss.U,"But why are we jogging around city hall at 5:30 in the morning?")
hss.dlg(co,"{CONNECTED_CHARACTER}","It's physical, athletic...")
hss.dlg(co,"{CONNECTED_CHARACTER}","And getting up early. That's something that most audiences wish they were disciplined enough to do.")
hss.dlg(co,"{CONNECTED_CHARACTER}","It's a subtle cue that the protagonist isn't just ~anybody.~")
hss.dlg(co,"{CONNECTED_CHARACTER}","This person has the ~capacity to be a hero.~")
hss.dlg(co,hss.U,"Right... huff... but that's in a movie...")
hss.dlg(co,hss.U,"Why are ~we~ jogging?")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Gotta stay in shape to land a big part!",1)
hss.evt(co,"{CONNECTED_CHARACTER_NAME} points to a nearby flight of stairs.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Last one up those stairs doesn't get to do the Rocky pose!",1)
hss.showQuestComplete(co)
if hss.getCharacterGender("_ACTION_HERO_") == hss.Gender.MALE then
hss.evt(co,"You follow {CONNECTED_CHARACTER_NAME} up the stairs, reaching the top landing just an instant after him.", "")
else
hss.evt(co,"You follow {CONNECTED_CHARACTER_NAME} up the stairs, reaching the top landing just an instant after her.", "")
end
hss.evt(co,"{CONNECTED_CHARACTER_NAME} kneels and pets a dog.", "")
hss.dlg(co,"{CONNECTED_CHARACTER}","Pretty good, {YOU}. You almost had me.")
if (hss.getCharacterType("YOU") == hss.CharacterType.MOVIE_STAR) then
if hss.getCharacterGender("YOU") == hss.Gender.MALE then
hss.dlgA(co,hss.U,"I'm a Movie Star! We do it all!",1)
hss.dlgA(co,hss.U,"Jamie Foxx got an Academy Award for ~Ray~, but he also got to kick butt as Electro in ~Amazing Spider-Man 2.~",1)
else
hss.dlgA(co,hss.U,"I'm a Movie Star! We do it all!",1)
hss.dlgA(co,hss.U,"Angelina Jolie got an Academy Award for ~Girl, Interrupted~, but she also got to kick butt as Lara Croft in ~Tomb Raider.~",1)
end
elseif (hss.getCharacterType("YOU") == hss.CharacterType.DIRECTOR) then
hss.dlgA(co,hss.U,"I'm a Director!",1)
hss.dlgA(co,hss.U,"I wouldn't feel comfortable asking an actor to suffer through something I wasn't prepared to do myself.",1)
else
hss.dlgA(co,hss.U,"I'm a Fashionista!",1)
hss.dlgA(co,hss.U,"This could all be inspiration for my trendy new line of fitness apparel.",1)
end
hss.dlgA(co,"{CONNECTED_CHARACTER}","Heh... fair enough.",1)
hss.evt(co,"{CONNECTED_CHARACTER_NAME}'s phone buzzes, and a text pops up. {CONNECTED_CHARACTER_NAME} reads it silently and scowls.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Workout's over. Professor Hunt wants us in his office.",3)
end
function intro_sec_action_hero_2(co)
hss.evt(co,"{CONNECTED_CHARACTER_NAME} storms past a protesting secretary and bursts into Professor Hunt's office. You follow after, apologetically.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","I told you after the last job, Professor...",3)
hss.dlgA(co,"{CONNECTED_CHARACTER}","~I'm out.~",3)
hss.dlgA(co,"THOMAS","There's out and there's ~out~, {CONNECTED_CHARACTER_NAME}.",3)
hss.dlgA(co,"THOMAS","Do you still attend classes at Hollywood U? Are you still enjoying the perks of the recommendation letter I wrote you?",3)
hss.dlg(co,"THOMAS","Besides... I have an opportunity even a renegade like ~you~ won't want to pass up.")
hss.evt(co,"Professor Hunt places a leather briefcase onto his desk. He opens it, and the contents radiate with a heavenly glow.", "")
hss.dlgA(co,hss.U,"...what is that?",4)
hss.dlg(co,"THOMAS","Let's just say that two major motion picture studios have come to an agreement regarding the rights to certain popular comic book characters...")
hss.dlg(co,"THOMAS","In this briefcase is the script to their ~marvelous~ movie team-up.")
hss.dlgA(co,hss.U,"...seriously?",4)
local choice = hss.showTextMenu(co, "What do you say?", "Can I read it? Please please please!|So? Who cares?");
if choice == 0 then
hss.dlgA(co,"THOMAS","Obviously not... and neither should anyone else!",3)
hss.dlgA(co,"THOMAS","The producers are aware that their script is a trite, cliched train wreck...",3)
hss.dlgA(co,"THOMAS","And they're moving ahead with production anyway.",3)
else
hss.dlgA(co,"THOMAS","Everyone cares! These franchises are guaranteed to rake in billions at the box office.",3)
hss.dlgA(co,"THOMAS","So even though the producers are aware that their script is a trite, cliched train wreck...",3)
hss.dlgA(co,"THOMAS","They're moving ahead with production anyway.",3)
end
hss.evt(co,"Hunt shuts and locks the briefcase.", "")
hss.dlgA(co,"THOMAS","Your task is to escort this briefcase from here to the movie studio in Burbank by 6PM tonight.",3)
hss.dlgA(co,"THOMAS","You're not to stop for anything... or ~anyone.~",3)
hss.dlgA(co,"THOMAS","There's a whole internet's worth of superfans who would kill to get their hands on this garbage.",3)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Sounds like you're expecting trouble, Hunt.",3)
hss.dlgA(co,"THOMAS","I'm ~expecting~ you to get the job done, {CONNECTED_CHARACTER_NAME}.",3)
hss.dlg(co,"THOMAS","And in return for your service, I'll make sure you receive top-level consideration for a ~super~ debut. Deal?")
hss.evt(co,"Thomas holds out his hand to shake. {CONNECTED_CHARACTER_NAME} hesitates, but then reluctantly takes it.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","...deal.",2)
hss.evt(co,"Professor Hunt turns his cold, scrutinizing glare onto you. He snaps one end of a handcuff onto the briefcase... and the other ~onto your wrist.~", "")
hss.dlgA(co,hss.U,"Hey now!",4)
hss.dlgA(co,"THOMAS","Don't worry. You'll be mentioned too, {YOU}. Just do as I expect.",3)
end
function outro_sec_action_hero_2(co)
hss.evt(co,"A few minutes later....", "")
if hss.getCharacterGender("_ACTION_HERO_") == hss.Gender.MALE then
hss.evt(co,"{CONNECTED_CHARACTER_NAME} careens his souped-up 1970s muscle car through heavy Los Angeles freeway traffic. You ride shotgun, the briefcase resting in your lap.", "")
else
hss.evt(co,"{CONNECTED_CHARACTER_NAME} careens her souped-up 1970s muscle car through heavy Los Angeles freeway traffic. You ride shotgun, briefcase resting in your lap.", "")
end
hss.dlg(co,hss.U,"So... you've run errands for Professor Hunt before?")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Everybody has problems, {YOU}...",3)
hss.dlgA(co,"{CONNECTED_CHARACTER}","And when Professor Hunt wants his to go away, he calls me to clean up.",3)
hss.dlgA(co,hss.U,"Mess? What do you mean by--",4)
hss.evt(co,"Your cell phone buzzes!", "")
hss.dlgA(co,hss.U,"Huh? Jenni just retweeted somebody with the handle ~@FourthPersons.~",4)
hss.dlg(co,hss.U,"'X-Vengers script en route to studio on 101. Dodge Charger. Lic# R3ALFUR10US.'")
hss.dlgA(co,hss.U,"Wait a second... ~THAT'S US!~",4)
hss.dlgA(co,hss.U,"Do you think anybody else has seen this twee--",4)
hss.evt(co,"A rainbow of paintballs splatter against the rear windshield.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Yep.",3)
hss.evt(co,"In the rear view mirror, you see a Subaru with a mustache on the grill revving up fast. Several superfans lean out the open passenger doors, blasting paintball guns.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","We got incoming. In a ~rideshare.~",3)
hss.showQuestComplete(co)
if hss.getCharacterGender("_ACTION_HERO_") == hss.Gender.MALE then
hss.evt(co,"{CONNECTED_CHARACTER_NAME} jams his foot down on the gas, shivving his Charger between minivans and honking compact sedans.", "")
else
hss.evt(co,"{CONNECTED_CHARACTER_NAME} jams her foot down on the gas, shivving her Charger between minivans and honking compact sedans.", "")
end
hss.dlgA(co,"{CONNECTED_CHARACTER}","Did we lose them?",3)
hss.dlgA(co,hss.U,"Maybe. I-- I can't see where they--",4)
hss.evt(co,"An ice cream truck drifts into your lane directly in front of you. Its rear doors burst open!", "")
hss.evt(co,"Inside, a superfan in a white apron and mirrored sunglasses fires up a paintball gatling gun. Paint gobs drumroll across your front windshield.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","We'll never make it to Burbank in this car...",3)
hss.dlgA(co,"{CONNECTED_CHARACTER}","We need to ditch it.",3)
hss.dlgA(co,hss.U,"Ditch it? But we're going, like, 70 miles an hour!",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","More like 85!",3)
hss.evt(co,"{CONNECTED_CHARACTER_NAME} jumps on the brake. The pursuing rideshare attempts to ram you at the same time. It passes in front of you, colliding with the ice cream truck.", "")
hss.dlgA(co,hss.U,"Oh craaaaaaap--",4)
hss.evt(co,"{CONNECTED_CHARACTER_NAME} jerks the wheel hard to the right.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Hang on!",4)
if hss.getCharacterGender("_ACTION_HERO_") == hss.Gender.MALE then
hss.evt(co,"Your vehicle Tokyo Drifts underneath a passing big rig and caroms into the exit lane. {CONNECTED_CHARACTER_NAME} jams his foot down repeatedly--", "")
else
hss.evt(co,"Your vehicle Tokyo Drifts underneath a passing big rig and caroms into the exit lane. {CONNECTED_CHARACTER_NAME} jams her foot down repeatedly--", "")
end
hss.dlgA(co,"{CONNECTED_CHARACTER}","Okay, {YOU}, you want the good news or the bad news?",3)
local choice = hss.showTextMenu(co, "What do you say?", "Good news!|Bad news!");
if choice == 0 then
hss.dlg(co,"{CONNECTED_CHARACTER}","I think we lost those ~Big Bang Theory~ rejects for now.")
hss.dlgA(co,hss.U,"And the bad news?",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","We just lost the brakes too!",4)
else
hss.dlgA(co,"{CONNECTED_CHARACTER}","We just lost the brakes!",2)
hss.dlgA(co,hss.U,"And the good news?",2)
hss.dlgA(co,"{CONNECTED_CHARACTER}","We haven't needed to stop yet!",4)
end
hss.evt(co,"Your vehicle flies upward off the exit ramp, rolls mid-air, and skids into an adjacent alley upside down.", "")
hss.dlgA(co,hss.U,"We're-- we're not dead! How are we not dead?",4)
hss.dlgA(co,hss.U,"Are you okay, {CONNECTED_CHARACTER_NAME}?",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","No time for a huggy-lovey sharefest, {YOU}...",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Do you know what happens when a car flips like this?",4)
hss.dlgA(co,hss.U,"...better call Allstate?",2)
hss.dlgA(co,"{CONNECTED_CHARACTER}","More like better take cover!",4)
hss.evt(co,"{CONNECTED_CHARACTER_NAME} undoes your seat belt and drags you away from the vehicle. As you exit the alley, the Charger explodes behind you--", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","~JUMP!~",4)
local choice = hss.showTextMenu(co, "What do you do?", "JUMP!|FALL!", false, 4);
if choice == 0 then
hss.evt(co,"You and {CONNECTED_CHARACTER_NAME} leap through the air. The explosion rages behind you, but you barely feel anything.", "")
hss.dlgA(co,hss.U,"We're-- we're not incinerated!",4,hss.REWARD_COINS,300)
hss.dlg(co,"{CONNECTED_CHARACTER}","Yeah, we got lucky. We were able to jump.")
hss.dlgA(co,hss.U,"Why would that make any difference? We were the ~exact~ same distance from the explosion!",4)
else
hss.evt(co,"You stumble to your knees, and a tsunami of superheated air surges all around you...", "")
hss.dlgA(co,hss.U,"Ahhh-- AHHH-- hottttt....",4)
hss.evt(co,"{CONNECTED_CHARACTER_NAME} lands, unsinged, and turns back to you.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","I did tell you to jump.",2)
hss.dlgA(co,hss.U,"Why would that make any difference? We were the ~exact~ same distance from the explosion!",4)
end
hss.dlgA(co,"{CONNECTED_CHARACTER}","I dunno. Physics...",2)
hss.dlgA(co,"{CONNECTED_CHARACTER}","It's just one of those things you pick up when you deal with explosions a lot.",2)
hss.dlgA(co,hss.U,"Right...",4)
hss.dlg(co,"{CONNECTED_CHARACTER}","Anyway, no time to talk shop...")
hss.evt(co,"{CONNECTED_CHARACTER_NAME} nods to the smoldering wreckage. The smoke from the explosion rises skyward, marking your position.", "")
hss.dlg(co,"{CONNECTED_CHARACTER}","Those superfans will be here any second.")
end
function intro_sec_action_hero_3(co)
hss.evt(co,"Ten minutes later, you and {CONNECTED_CHARACTER_NAME} are sprinting down Hollywood Boulevard.", "")
hss.dlgA(co,hss.U,"Huff... Huff... Hold up. Why are we still running? Shouldn't we be calling someone?",2)
hss.dlg(co,"{CONNECTED_CHARACTER}","Like who? Professor Hunt?")
hss.dlg(co,hss.U,"He gave us this assignment. He needs to know we're in deep trouble.")
hss.dlgA(co,"{CONNECTED_CHARACTER}","{YOU}, who knew about this gig?",3)
hss.dlg(co,hss.U,"What do you mean?")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Who ~knew~ we were transporting the script?",3)
hss.dlg(co,hss.U,"You, me, Professor Hunt--")
hss.dlgA(co,"{CONNECTED_CHARACTER}","~And~ whoever sent that tweet. There's a ~leak~ at Hollywood U. Somebody set us up...",3)
hss.dlg(co,"{CONNECTED_CHARACTER}","From here on out. The only people I trust are you and me.")
hss.evt(co,"From down the street, you hear a commotion--", "")
hss.evt(co,"A crowd of superfans swarms towards you, their faces hidden behind plastic superhero masks.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Aw hell.",3)
end
function outro_sec_action_hero_3(co)
hss.evt(co,"The crowd surges toward you and {CONNECTED_CHARACTER_NAME} like a zombie horde, hands grasping for the briefcase.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","In here!",3)
hss.evt(co,"{CONNECTED_CHARACTER_NAME} drags you through a door and into a Chinese restaurant. Patrons and staff pivot, shocked by the commotion.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","We'll go out through the kitchen!",3)
hss.evt(co,"As {CONNECTED_CHARACTER_NAME} bursts through the swinging doors that lead into the kitchen, a superfan dressed like Quicksilver darts up.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","{YOU}, behind you. You have to slow these guys down somehow!",3)
hss.evt(co,"As you continue running, you reach out your hand and knock over a--", "")
local choice = hss.showTextMenu(co, "What do you do?", "Lobster tank!|Tray of appetizers!", false, 4);
if choice == 0 then
hss.evt(co,"The lobster tank topples and shatters! Angry lobsters skitter through the whole restaurant, snapping at anyone in reach--", "")
hss.evt(co,"Patrons rise from their seats and flee toward the front entrance. The mob blocks the superfans from entering.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Quick thinking, {YOU}!",1,hss.REWARD_COINS,300)
else
hss.evt(co,"The tray of potstickers and egg rolls splatters across the floor, but the fanboy hops over it and keeps pursuing.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Gonna have to do better than that, {YOU}!",3)
hss.evt(co,"{CONNECTED_CHARACTER_NAME} upends a metal shelf. It lands horizontally, completely barricading the doorway to the kitchen.", "")
end
hss.dlgA(co,"{CONNECTED_CHARACTER}","Now we'll escape out the back exit into the alley.",3)
hss.showQuestComplete(co)
hss.evt(co,"You and {CONNECTED_CHARACTER_NAME} slip into the alley behind the kitchen.", "")
hss.dlg(co,"{CONNECTED_CHARACTER}","In a few minutes, those superfans will be scouring the whole area. We need to lay low.")
hss.dlg(co,hss.U,"Okay. Where?")
hss.evt(co,"{CONNECTED_CHARACTER_NAME} points toward a dingy factory across a parking lot. The lights are off inside, but smokestacks idly belch smoke.", "")
hss.dlg(co,"{CONNECTED_CHARACTER}","Over there! We'll hide inside that steam and flame Factory.")
end
function outro_sec_action_hero_4(co)
hss.evt(co,"You and {CONNECTED_CHARACTER_NAME} slam against the locked door with all your might!", "")
hss.dlgA(co,hss.U,"~Oof!~",4)
hss.evt(co,"The door jolts off its hinges, and you both topple inside the factory.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","...whoa!",4)
hss.evt(co,"The factory interior is a maze of conveyor belts, steam vents, and blind alleys.", "")
hss.dlg(co,hss.U,"What?")
hss.dlgA(co,"{CONNECTED_CHARACTER}","You mean, you don't think this looks like the absolute perfect place to stage an extended martial arts action sequence?",4)
hss.dlgA(co,hss.U,"Do you think that'll happen?",4)
hss.dlg(co,"{CONNECTED_CHARACTER}","Hard to tell. But for now, we can hide here.")
hss.showQuestComplete(co)
hss.evt(co,"{CONNECTED_CHARACTER_NAME} checks out the windows for signs of superfans, then takes a seat beside you after the all-clear.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","'Just one last job, {CONNECTED_CHARACTER_NAME}...'",3)
hss.dlgA(co,"{CONNECTED_CHARACTER}","'Then you're out clean, {CONNECTED_CHARACTER_NAME}...'",3)
if hss.getCharacterGender("_ACTION_HERO_") == hss.Gender.MALE then
hss.evt(co,"{CONNECTED_CHARACTER_NAME} shakes his head.", "")
else
hss.evt(co,"{CONNECTED_CHARACTER_NAME} shakes her head.", "")
end
hss.dlgA(co,"{CONNECTED_CHARACTER}","Typical, just typical...",3)
hss.dlg(co,hss.U,"You told me Professor Hunt used to have you clean up his messes, but you never told what those messes were.")
hss.dlgA(co,"{CONNECTED_CHARACTER}","We're stuck laying low for a while. I guess now is as good a time as any for a campfire sequence.",3)
hss.dlgA(co,hss.U,"Campfire what--?",4)
hss.dlg(co,"{CONNECTED_CHARACTER}","Just go with it.")
end
function intro_sec_action_hero_5(co)
if hss.getCharacterGender("_ACTION_HERO_") == hss.Gender.MALE then
hss.evt(co,"{CONNECTED_CHARACTER_NAME} stares out over the factory floor as he shares his story.", "")
else
hss.evt(co,"{CONNECTED_CHARACTER_NAME} stares out over the factory floor as she shares her story.", "")
end
hss.dlg(co,"{CONNECTED_CHARACTER}","My first role was on one of Hunt's pictures, ~North Shore...~")
hss.dlg(co,"{CONNECTED_CHARACTER}","The film was going really great. The only problem was the producer. She didn't want to cough up the money to film the climax in Hawaii...")
hss.dlg(co,"{CONNECTED_CHARACTER}","But Hunt wouldn't compromise. Not for anything.")
hss.dlg(co,"{CONNECTED_CHARACTER}","Then one night, as I'm about to drive home, Hunt tells me that one of the other actors had a terrible day...")
hss.dlg(co,"{CONNECTED_CHARACTER}","He wanted me to follow him home, to make sure he got there safe...")
hss.dlg(co,"{CONNECTED_CHARACTER}","So I end up following him straight to the house of the producer. The very ~married~ producer.")
hss.dlgA(co,hss.U,"They were having an affair?",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Hunt called the producer up. Said ~I~ saw everything...",3)
hss.dlgA(co,"{CONNECTED_CHARACTER}","He got to film the climax in Hawaii, and I got a recommendation letter to Hollywood U.",3)
hss.dlgA(co,hss.U,"So he blackmailed them? He used you to get what he wanted?",4)
hss.evt(co,"The door to the steam and flame factory thuds open!", "")
hss.dlgA(co,hss.U,"What the--",4)
local shaeLeft = 0;
if (hss.hasGameProperty("FAME_TRACKER", "SHAE_LEFT")) then
shaeLeft = hss.getGameProperty("FAME_TRACKER", "SHAE_LEFT");
end
if (shaeLeft == 1) then
hss.evt(co,"Two people somersault and flip inside, cartwheeling and backflipping into the center of the room. When they finally come to a stop, you're pinned on both sides.", "")
else
hss.evt(co,"Three people somersault and flip inside, cartwheeling and backflipping into the center of the room. When they finally come to a stop, you're completely surrounded.", "")
end
hss.dlgA(co,"JENNI","Thought you could hide from us, losers?",3)
hss.dlgA(co,"LANCE","Think again!",3)
end
function outro_sec_action_hero_5(co)
local shaeLeft = 0;
if (hss.hasGameProperty("FAME_TRACKER", "SHAE_LEFT")) then
shaeLeft = hss.getGameProperty("FAME_TRACKER", "SHAE_LEFT");
end
if (shaeLeft == 1) then
hss.evt(co,"Jenni and Lance circle around you menacingly.", "")
else
hss.evt(co,"Jenni, Lance, and Shae circle around you menacingly.", "")
end
hss.dlgA(co,"JENNI","Next time you want to disappear, you should probably remember to turn off location tracking on your phone!",1)
hss.dlgA(co,"LANCE","Bianca wants that script. Now hand it over or else!",1)
hss.dlgA(co,hss.U,"Or else what?",3)
hss.dlgA(co,"LANCE","Uh... or else, I dunno, Jenni will probably do something!",4)
hss.dlgA(co,"JENNI","Damn right I will! Kee~YAHHH!~",3)
if hss.getCharacterGender("_ACTION_HERO_") == hss.Gender.MALE then
hss.evt(co,"Jenni flips forward, lands directly in front of {CONNECTED_CHARACTER_NAME}, and delivers a high-heeled kick to his jaw!", "")
else
hss.evt(co,"Jenni flips forward, lands directly in front of {CONNECTED_CHARACTER_NAME}, and delivers a high-heeled kick straight to her jaw!", "")
end
hss.dlgA(co,"{CONNECTED_CHARACTER}","Okay then...",3)
if hss.getCharacterGender("_ACTION_HERO_") == hss.Gender.MALE then
hss.evt(co,"{CONNECTED_CHARACTER_NAME} shifts his jaw and spits blood onto the concrete floor.", "")
else
hss.evt(co,"{CONNECTED_CHARACTER_NAME} shifts her jaw and spits blood onto the concrete floor.", "")
end
hss.dlgA(co,"{CONNECTED_CHARACTER}","~Rumble time.~",3)
hss.showQuestComplete(co)
hss.evt(co,"The room explodes into chaos as everyone starts to fight!", "")
hss.evt(co,"{CONNECTED_CHARACTER_NAME} sweeps out Jenni's legs. She collapses to the floor next to you with a thud.", "")
hss.dlgA(co,"JENNI","Eek! No fair!",2)
if (shaeLeft == 1) then
hss.evt(co,"Jenni lashes up at you, slapping her hands wildly! You both fall back on a conveyor belt.", "")
hss.dlgA(co,hss.U,"Ah! Let go of my wrist.",4)
hss.evt(co,"With a hairpin, she quickly unlocks the handcuff connecting you to the briefcase, then rips it free! You're carried away on the conveyor belt!", "")
hss.dlgA(co,"JENNI","Bird is in hand. ~Bird is in hand.~",3)
else
hss.evt(co,"Shae tackles you onto a conveyor belt.", "")
hss.dlgA(co,hss.U,"Hey! Cut that out--",2)
hss.evt(co,"With a hairpin, she quickly unlocks the handcuff connecting you to the briefcase, then rips it free! You're carried away on the conveyor belt!", "")
hss.dlgA(co,"SHAE","Bird is in hand. ~Bird is in hand.~",3)
end
hss.evt(co,"{CONNECTED_CHARACTER_NAME} jumps up and lunges at Lance, throwing punch after punch. But Lance dodges each blow like an eel.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Aw, come on! How am I not punching you yet?",3)
hss.dlgA(co,"LANCE","Mother says I'm nimble!",4)
if hss.getCharacterGender("_ACTION_HERO_") == hss.Gender.MALE then
hss.evt(co,"As {CONNECTED_CHARACTER_NAME} tires from throwing empty punches, Jenni strikes him square across the back with the briefcase. {CONNECTED_CHARACTER_NAME} slumps to the ground.", "")
else
hss.evt(co,"As {CONNECTED_CHARACTER_NAME} tires from throwing empty punches, Jenni strikes her square across the back with the briefcase. {CONNECTED_CHARACTER_NAME} slumps to the ground.", "")
end
hss.dlgA(co,hss.U,"{CONNECTED_CHARACTER_NAME}!",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","I'm sorry, {YOU}. I-- I...",2)
hss.evt(co,"{CONNECTED_CHARACTER_NAME} passes out.", "")
hss.dlgA(co,"JENNI","Lance, tie these two up, and then we'll get out of here.",1)
end
function outro_sec_action_hero_6(co)
hss.evt(co,"A short while later, {CONNECTED_CHARACTER_NAME} stirs, then rouses...", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Wh-- what happened?",4)
hss.dlgA(co,hss.U,"You got knocked out. They stole the script.",2)
hss.dlgA(co,"{CONNECTED_CHARACTER}","And the reason I can't move?",4)
hss.dlgA(co,hss.U,"Oh, before they left, Bianca's flunkies tied us back-to-back with electrical cords.",2)
hss.dlgA(co,hss.U,"Security won't find us here for hours! It'll be too late!",2)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Not good enough!",3)
if hss.getCharacterGender("_ACTION_HERO_") == hss.Gender.MALE then
hss.evt(co,"{CONNECTED_CHARACTER_NAME} starts jerking his shoulders. There is a loud crack, and suddenly, the electrical cords loosen. You work free.", "")
else
hss.evt(co,"{CONNECTED_CHARACTER_NAME} starts jerking her shoulders. There is a loud crack, and suddenly, the electrical cords loosen. You work free.", "")
end
hss.dlgA(co,hss.U,"How did you do that?",4)
hss.dlg(co,"{CONNECTED_CHARACTER}","Intentionally dislocated my shoulder.")
hss.dlgA(co,hss.U,"Doesn't that hurt?",4)
hss.dlg(co,"{CONNECTED_CHARACTER}","Like french kissing fire ants.")
hss.dlg(co,"{CONNECTED_CHARACTER}","But heroes don't back down. They roll with the punches. They get the job done. ~No matter what.~")
hss.showQuestComplete(co)
if hss.getCharacterGender("_ACTION_HERO_") == hss.Gender.MALE then
hss.evt(co,"{CONNECTED_CHARACTER_NAME} cradles his limp arm.", "")
hss.dlg(co,"{CONNECTED_CHARACTER}","Nnn~YAHHH--~")
hss.evt(co,"He throws himself against the wall, shoulder first. With another loud crack, the joint resets.", "")
else
hss.evt(co,"{CONNECTED_CHARACTER_NAME} cradles her limp arm.", "")
hss.dlg(co,"{CONNECTED_CHARACTER}","Nnn~YAHHH--~")
hss.evt(co,"She throws herself against the wall, shoulder first. With another loud crack, the joint resets.", "")
end
hss.dlgA(co,hss.U,"That was so...",4)
local choice = hss.showTextMenu(co, "That was so...", "Bad-ass!|Stupid!");
if (choice == 0) then
hss.dlgA(co,hss.U,"You were just so calm about it.",4,hss.REWARD_COINS,100)
hss.dlg(co,"{CONNECTED_CHARACTER}","I Johnny Utah'd my shoulder playing ball in high school.")
hss.dlg(co,"{CONNECTED_CHARACTER}","Never made the pros, but I do have a stupid human trick that comes in handy every once in a while.")
hss.dlgA(co,hss.U,"I can see that...",4)
else
hss.dlgA(co,hss.U,"What if that hadn't worked? We'd be headed to the E.R.!",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","But it did work, and we're not tied up anymore...",1)
end
hss.dlgA(co,"{CONNECTED_CHARACTER}","Now we just need to figure out where Bianca's lackeys went. Did they say anything while I was out?",3)
hss.dlgA(co,hss.U,"Not really. Jenni said something about a lot of... wind...",2)
hss.dlgA(co,hss.U,"And Lance was worried about messing up his hair?",2)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Wind. Worried about hair...",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Might as well have sent us a singing telegram.",1)
end
function intro_sec_action_hero_7(co)
hss.evt(co,"Thirty minutes later...", "")
local shaeLeft = 0;
if (hss.hasGameProperty("FAME_TRACKER", "SHAE_LEFT")) then
shaeLeft = hss.getGameProperty("FAME_TRACKER", "SHAE_LEFT");
end
if (shaeLeft == 1) then
hss.evt(co,"Jenni and Lance stride boldly across the helipad on the roof of the Nakatomi Plaza Building. Bianca leans out of an idling private helicopter.", "")
else
hss.evt(co,"Jenni, Lance, and Shae stride boldly across the helipad on the roof of the Nakatomi Plaza Building. Bianca leans out of an idling private helicopter.", "")
end
hss.dlgA(co,hss.B,"Guhh, about time you got here, guys! Do you have the script or not?",3)
hss.evt(co,"Jenni holds up the briefcase.", "")
hss.dlg(co,"JENNI","Right here, fearless leader.")
hss.dlgA(co,hss.B,"Ooh! Gimme!",1)
hss.dlgA(co,hss.B,"Once I read it, I'll know which superhero I want to play. Then, unless they want their precious script all over the internet, they'll just ~have~ to give me the role...",1)
hss.dlgA(co,hss.B,"Which, err, I deserve because of my talent.",4)
hss.dlgA(co,hss.U,"Like hell!",3)
hss.evt(co,"You and {CONNECTED_CHARACTER_NAME} kick open the stairwell door and step onto the roof.", "")
hss.evt(co,"As you step forward, startled doves take flight in slow-motion.", "")
hss.dlgA(co,hss.U,"Bianca, your big part in the movie...",3)
local choice = hss.showTextMenu(co, "What do you do?", "Put on sunglasses!|Strike an awesome pose!", false, 8);
if (choice == 0) then
hss.evt(co,"You put on sunglasses and fix Bianca in your icy gaze.", "")
hss.dlgA(co,hss.U,"Just hit the cutting room floor. YEAAAAAAAAHHHHHH!",3)
else
hss.evt(co,"You fold your arms over your chest. You fix Bianca in your icy gaze.", "")
hss.dlgA(co,hss.U,"Just hit the cutting room floor.",3)
end
hss.dlgA(co,hss.B,"Oh really, you twerps are going to stop me? You and what army?",3)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Given that we just posted the location of the stolen script on Facebook, Twitter, Instagram, Vine, and Tumblr--",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","I'd say ~all~ of them.",1)
if (shaeLeft == 1) then
hss.evt(co,"The entire building shakes as hundreds of superfans storm up the stairs. They swarm out onto the roof, overwhelming Jenni and Lance!", "")
else
hss.evt(co,"The entire building shakes as hundreds of superfans storm up the stairs. They swarm out onto the roof, overwhelming Jenni, Lance, and Shae!", "")
end
hss.dlgA(co,"LANCE","I'm not good with crowds!",4)
hss.dlgA(co,hss.B,"Pilot, get me out of here!",3)
hss.evt(co,"The helicopter revs up and begins to lift off.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Bianca's escaping. We need to get to that chopper--",3)
hss.evt(co,"You and {CONNECTED_CHARACTER_NAME} dash forward, leap into the air, and clutch onto the skids. The helicopter rises and arcs away from the roof.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","~Hang on!~",3)
end
function outro_sec_action_hero_7(co)
hss.evt(co,"You and {CONNECTED_CHARACTER_NAME} hang on to the bottom of the helicopter as it zips and spirals over Sunset Boulevard.", "")
hss.dlgA(co,hss.B,"OMG! What's the matter with you two losers? Get off!",3)
hss.dlgA(co,hss.U,"We're not letting go until you give us back the script, Bianca!",3)
hss.evt(co,"The helicopter bucks mid-air as it hits a patch of turbulence!", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Ah! I'm slipping!",2)
if hss.getCharacterGender("_ACTION_HERO_") == hss.Gender.MALE then
hss.evt(co,"{CONNECTED_CHARACTER_NAME} falls, and at the last second, you catch him with one hand.", "")
else
hss.evt(co,"{CONNECTED_CHARACTER_NAME} falls, and at the last second, you catch her with one hand.", "")
end
hss.dlgA(co,hss.U,"I got you!",4)
hss.dlgA(co,hss.B,"Eek! Stop shaking this thing! I get airsick!",3)
hss.evt(co,"Bianca steadies herself, putting the briefcase in view.", "")
local premChoice = hss.showPremiumTextMenu(co, "Who do you do?", "Go for the briefcase!|[rings:20]Pull Bianca off the helicopter!");
if premChoice == 0 then
hss.setQuestProperty("helicopterMove", 1)
hss.evt(co,"You let go of your handhold and deftly grab onto the briefcase.", "")
hss.dlgA(co,hss.U,"I'll take that.",3)
hss.dlgA(co,hss.B,"What? How did you-- ~Nooooooo!~",4)
hss.evt(co,"You, {CONNECTED_CHARACTER_NAME}, and the briefcase go tumbling away--", "")
hss.evt(co,"Falling, falling, falling... and then ~SPLOOSH!~", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","...a pool?! We landed in a ~pool!~",4)
else
hss.setQuestProperty("helicopterMove", 2)
hss.evt(co,"With Herculean effort, you raise {CONNECTED_CHARACTER_NAME} onto the strut...", "")
hss.dlgA(co,hss.U,"There you go!",1)
hss.evt(co,"Then you reach up, grab ahold of Bianca, and yank her out of the helicopter!", "")
hss.dlgA(co,hss.B,"What? Let go of-- ~Nooooooo!~",4)
hss.evt(co,"Bianca falls, falls, falls... and then ~SPLOOSH!~", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","...a pool?! Bianca landed in a ~pool!~",4)
end
hss.showQuestComplete(co)
local helicopterMove = 0;
helicopterMove = hss.getGameProperty("sec_action_hero_7", "helicopterMove")
if helicopterMove == 2 then
hss.dlgA(co,"{CONNECTED_CHARACTER}","That was amazing, {YOU}! You saw the pool and made sure Bianca would land safely!",1)
hss.dlgA(co,hss.U,"...uh, yeah! Totally intentional.",4)
hss.evt(co,"You and {CONNECTED_CHARACTER_NAME} climb into the helicopter. Down below, Bianca shakes her fist at you impotently.", "")
hss.dlg(co,"{CONNECTED_CHARACTER}","What do you think, {YOU}?")
hss.dlgA(co,hss.U,"We got the script, and we got away. I always knew...",1)
local choice = hss.showTextMenu(co, "What do you do?", "Put on sunglasses!|Strike an awesome pose!", false, 4);
if (choice == 0) then
hss.dlgA(co,hss.U,"Bianca'd make a splash in this town. ~YEAAAAAAAAHHHHHH!~",1)
else
hss.dlgA(co,hss.U,"We'd get the ~drop~ on Bianca someday.",3)
end
else
hss.dlgA(co,"{CONNECTED_CHARACTER}","That was amazing, {YOU}! You saw the pool and timed our fall to land safely!",1)
hss.dlgA(co,hss.U,"...uh, yeah! Totally intentional.",4)
hss.evt(co,"You and {CONNECTED_CHARACTER_NAME} climb out of the backyard pool. Up overhead, the helicopter circles impotently. Bianca shakes her fist at you.", "")
hss.dlg(co,"{CONNECTED_CHARACTER}","What do you think, {YOU}?")
hss.dlgA(co,hss.U,"We got the script, and we got away. I always knew...",1)
local choice = hss.showTextMenu(co, "What do you do?", "Put on sunglasses!|Strike an awesome pose!", false, 4);
if (choice == 0) then
hss.dlgA(co,hss.U,"We'd make a splash in this town. ~YEAAAAAAAAHHHHHH!~",1)
else
hss.dlgA(co,hss.U,"We'd get the ~drop~ on Bianca someday.",3)
end
end
if hss.getCharacterGender("_ACTION_HERO_") == hss.Gender.MALE then
hss.evt(co,"{CONNECTED_CHARACTER_NAME} checks his watch.", "")
else
hss.evt(co,"{CONNECTED_CHARACTER_NAME} checks her watch.", "")
end
hss.dlg(co,"{CONNECTED_CHARACTER}","It's only 5:35. If we hurry, we can still make the deadline!")
end
function outro_sec_action_hero_8(co)
local helicopterMove = 0;
helicopterMove = hss.getGameProperty("sec_action_hero_7", "helicopterMove")
if helicopterMove == 2 then
hss.evt(co,"Twenty minutes later...", "")
hss.evt(co,"You and {CONNECTED_CHARACTER_NAME} hop down from the helicopter in the middle of the studio parking lot...", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Thanks for the lift!",1)
else
hss.evt(co,"Twenty minutes later...", "")
hss.evt(co,"You and {CONNECTED_CHARACTER_NAME} hop down from the bed of an old, rusted-out pickup truck filled with chicken cages.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Thanks for the lift!",1)
end
hss.evt(co,"As you approach the studio gates, Professor Hunt swoops in to intercept you.", "")
hss.dlgA(co,"THOMAS","{YOU}! {CONNECTED_CHARACTER_NAME}! Hold up!",3)
hss.dlgA(co,hss.U,"Professor Hunt? What are you doing here?",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","If you were coming here anyway, why'd you want ~us~ to escort the script?",4)
hss.dlgA(co,"THOMAS","Never mind that. Well done! You completed the assignment!",3)
hss.dlgA(co,"THOMAS","Now hand it over!",3)
hss.showQuestComplete(co)
hss.evt(co,"{CONNECTED_CHARACTER_NAME} begins to hand over the briefcase, and you quickly snatch it away--", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","{YOU}, why'd you do that?",4)
hss.dlgA(co,hss.U,"Don't you get it, {CONNECTED_CHARACTER_NAME}? Somebody leaked the location of the script. I think it was ~Professor Hunt.~",3)
hss.dlgA(co,"THOMAS","Preposterous! Why on earth would ~I~ sabotage a movie?",3)
hss.dlgA(co,hss.U,"You wouldn't sabotage a movie. But you'd do anything to ~improve~ one.",3)
hss.dlgA(co,hss.U,"You called the script a 'trite, cliched train wreck'...",3)
hss.dlgA(co,hss.U,"And the producers weren't doing anything to fix the problem. But they'd ~have to~ if the script got leaked...",3)
hss.dlgA(co,hss.U,"So you concocted a reason for us to transport the script across town...",3)
hss.dlgA(co,hss.U,"And then you sent a tweet using the handle ~@FourthPersons.~",3)
hss.dlgA(co,hss.U,"AKA anagram ~@ProfessorHunt.~",3)
hss.dlgA(co,"THOMAS","As delighted as I am that you know what an anagram is...",3)
hss.dlgA(co,"THOMAS","You still seem to be having trouble with the word 'evidence'. As in, you have none.",3)
hss.dlgA(co,"THOMAS","And even if I ~was~ responsible for the tweet, what would it matter?",3)
hss.dlgA(co,"THOMAS","The worst thing that'd happen is that we'd all get to enjoy a better film. How is that wrong?",3)
hss.dlgA(co,"{CONNECTED_CHARACTER}","So it really was all a set-up?",2)
hss.dlgA(co,"{CONNECTED_CHARACTER}","You gave us the assignment thinking we'd ~fail.~ You used us?",2)
hss.dlg(co,"THOMAS","I did what I had to do, {CONNECTED_CHARACTER_NAME}. Give me the briefcase.")
hss.evt(co,"Torn, {CONNECTED_CHARACTER_NAME} looks from Hunt to the studio gates.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","{YOU}, what do we do?",2)
local choice = hss.showTextMenu(co, "What do you say?", "Give the script to Hunt.|Take the script to the studio.");
if (choice == 0) then
hss.dlgA(co,hss.U,"Tommy Boy betrayed us...",3)
hss.dlgA(co,hss.U,"But he's right. We can't let the studio make a bad film, not if we can do something about it...",2)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Yeah, you're right. Sometimes a hero has to do the wrong things for the right reasons.",3)
hss.evt(co,"You hand the briefcase to Hunt.", "")
hss.dlg(co,"THOMAS","No one besides us will know what happened here, but you saved this film.")
hss.dlg(co,"THOMAS","And once a new draft gets written, I'll make sure you both get mentioned for key positions.")
hss.evt(co,"Professor Hunt walks away with the briefcase.", "")
else
hss.dlgA(co,hss.U,"The assignment was to ~get the script to the studio.~",3)
hss.dlgA(co,hss.U,"Heroes don't back down. They roll with the punches. They get the job done. ~No matter what.~",3)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Yeah, you're right.",3)
hss.evt(co,"You and {CONNECTED_CHARACTER_NAME} push past Hunt and drop off the script. When you step back outside, he calls after you.", "")
hss.dlgA(co,"THOMAS","Since you insist on keeping your word, so will I...",3)
hss.dlgA(co,"THOMAS","I'll make sure you both get mentioned for key positions on the film...",3)
hss.dlgA(co,"THOMAS","Of course, it'll be a trite, cliched train wreck.",3)
hss.dlgA(co,"THOMAS","But that was ~your~ choice.",3)
hss.evt(co,"Professor Hunt storms away.", "")
end
hss.evt(co,"You and {CONNECTED_CHARACTER_NAME} turn the other direction, walking westward down Sepulveda Boulevard. The rosy-red sun slips toward the horizon.", "")
hss.dlg(co,hss.U,"So that happened...")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Yep. Action! Adventure! Fake-out ending!",1)
hss.dlgA(co,hss.U,"Wait, why are you smiling?",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Because we made a great team, {YOU}...",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","And just because this assignment is over, that doesn't mean we can't come back for the sequel.",1)
hss.dlgA(co,hss.U,"Heh... I think I'd like that!",1)
end
local sceneTable = {}
sceneTable["outro_sec_action_hero_1"] = outro_sec_action_hero_1
sceneTable["intro_sec_action_hero_2"] = intro_sec_action_hero_2
sceneTable["outro_sec_action_hero_2"] = outro_sec_action_hero_2
sceneTable["intro_sec_action_hero_3"] = intro_sec_action_hero_3
sceneTable["outro_sec_action_hero_3"] = outro_sec_action_hero_3
sceneTable["outro_sec_action_hero_4"] = outro_sec_action_hero_4
sceneTable["intro_sec_action_hero_5"] = intro_sec_action_hero_5
sceneTable["outro_sec_action_hero_5"] = outro_sec_action_hero_5
sceneTable["outro_sec_action_hero_6"] = outro_sec_action_hero_6
sceneTable["intro_sec_action_hero_7"] = intro_sec_action_hero_7
sceneTable["outro_sec_action_hero_7"] = outro_sec_action_hero_7
sceneTable["outro_sec_action_hero_8"] = outro_sec_action_hero_8
hss.runScene(sceneTable)
