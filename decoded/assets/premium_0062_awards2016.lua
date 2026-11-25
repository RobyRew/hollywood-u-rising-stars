--|     * button: "preview!"
function inter_preview(co)
hss.evt(co,"~Did you catch this classic HWU quest last year?~", "")
hss.evt(co,"~Now's your chance to relive the glamorous Audrey Awards show, or experience it for the first time!~", "")
hss.evt(co,"You're walking across the quad with Addison when Ethan races over.", "")
hss.dlgA(co,hss.E,"{YOU}, what are you doing out here? Don't tell me that my biggest client forgot what day it is!",4)
hss.dlg(co,hss.E,"Harrison Byrd is about to announce the nominees for the Audrey Awards!")
hss.dlg(co,hss.E,"Don't you want to know if Chris Winters scored his first acting nomination?")
hss.evt(co,"You and Addison join Ethan in the dorm lounge, where your entire class is crowded around the huge flatscreen television.", "")
hss.evt(co,"As the program cuts back from commercial, you whisper to Ethan.", "")
hss.dlg(co,hss.U,"Okay, so maybe I missed an issue of ~Entertainment Weekly~ or something...")
hss.dlg(co,hss.U,"But what exactly are the Audrey Awards?")
hss.dlg(co,hss.E,"Only the single greatest awards show of the year, celebrating the biggest and brightest stars in all of Hollywood.")
hss.dlg(co,hss.E,"Everyone who's anyone wants to go... or better yet, win an Audrey!")
hss.dlgA(co,hss.A,"Shh! Quiet down, motormouth...",1)
hss.dlgA(co,hss.A,"They're about to announce the nominees for Best Supporting Actor!",1)
hss.evt(co,"On TV, Harrison Byrd stands at a podium and gamely reads the nominees off of a cue card.", "")
hss.dlg(co,"HARRISON","And the nominees for Best Supporting Actor are...")
hss.dlg(co,"HARRISON","Keegan Welch for his portrayal of eccentric German director Friedrich Wilhelm in ~Testament~...~")
hss.dlg(co,"HARRISON","Not gonna lie. That movie made me cry in an embarrassing way.")
hss.dlg(co,"HARRISON","Next up is Chris Winters for his portrayal of a wounded British Army Colonel in the WWII thriller ~Crocodile...~")
hss.dlg(co,"HARRISON","Seriously! Who knew that sweet hunk of delicious could deliver such a powerhouse performance?")
hss.dlgA(co,hss.A,"Squeee! Chris did it! I knew he'd get a nomination!",1)
hss.evt(co,"On screen, as the rest of the nominees are called out, your phone begins to buzz.", "")
hss.dlg(co,hss.U,"...uh, hello?")
hss.dlgA(co,hss.C,"{YOU}, are you watching TV?",1)
hss.dlgA(co,hss.U,"Chris! I am! And congratulations on being recognized for your performance!",1)
hss.dlgA(co,hss.C,"Yeah, it's pretty cool... and do you know what else would be pretty cool?",1)
hss.dlgA(co,hss.C,"If you came to the Audrey Awards with me as my plus-one.",1)
hss.dlgA(co,hss.U,"...go? With you?",4)
hss.dlg(co,hss.U,"Chris, it'd absolutely be an honor. But just to be clear...")
local choice = hss.showTextMenu(co, "What do you say?", "This is totally a date.|We'd be going as friends.");
if (choice == 0) then
hss.setQuestProperty("awardDate", 1)
hss.dlgA(co,hss.U,"I demand red roses, compliments, and more than just a kiss goodnight!",1)
hss.dlgA(co,hss.C,"It'd be my pleasure!",1)
else
hss.setQuestProperty("awardDate", 2)
hss.dlgA(co,hss.C,"Of course! We're friends. We like to hang out. It doesn't have to be a big thing.",1)
hss.dlgA(co,hss.U,"I know, but the Audrey Awards... this ~is~ a big thing!",1)
hss.dlgA(co,hss.C,"Tell you what, how about we make it even?",1)
hss.dlgA(co,hss.C,"If you come to the Audreys, I'll be your plus-one when you get your big award.",1)
hss.dlgA(co,hss.U,"Deal.",1)
end
hss.dlgA(co,hss.C,"I'll pick you up at 4PM on the day of.",1)
hss.evt(co,"Chris hangs up, and you turn back toward the lounge. Everybody is staring at you, mouths agape.", "")
hss.dlgA(co,hss.A,"Uh, I didn't mean to eavesdrop...",4)
hss.dlgA(co,hss.A,"But did Chris Winters just invite you to the Audrey Awards?",4)
if (choice == 0) then
hss.dlgA(co,hss.U,"Best. Ask out. Ever.",5)
else
hss.dlg(co,hss.U,"Yeah, but we're just going as friends.")
end
hss.dlgA(co,hss.E,"I ~absolutely~ did mean to eavesdrop, and {YOU}, as your official representative, I have to say...",1)
hss.dlgA(co,hss.E,"You've just been invited to THE most exclusive party of the entire year!",1)
hss.dlgA(co,hss.E,"Most people go their entire lives without stepping foot inside the Audrey Theater!",1)
hss.dlgA(co,hss.E,"Please please please say you'll go!",1)
hss.markQuestScriptRequirementFinished()
end
function outro_premium_0062_awards2016_1(co)
hss.dlgA(co,hss.U,"Okay, okay... I'm going to the Audrey Awards!",1)
hss.evt(co,"Everyone in the room cheers!", "")
hss.showQuestComplete(co)
hss.dlgA(co,hss.A,"Oh! I'm so happy for you, {YOU}! It's going to be amazing!",1)
hss.dlgA(co,hss.A,"You'll see so many beautiful people, wearing gorgeous outfits, with impeccable hair and makeup and--",1)
hss.dlgA(co,hss.A,"OMG! Speaking of makeup and hair... what are you going to wear?",4)
end
function outro_premium_0062_awards2016_2(co)
hss.evt(co,"On the day of the Audrey Awards...", "")
hss.evt(co,"You step out of your room, modeling your new outfit and new hairstyle for Addison and Ethan!", "")
hss.dlgA(co,hss.U,"So... how do I look?",1)
if hss.getCharacterGender("YOU") == hss.Gender.MALE then
hss.dlg(co,hss.E,"Handsome, sophisticated, a scholar and a gentleman...")
else
hss.dlg(co,hss.E,"Beautiful, elegant, sophisticated...")
end
hss.dlg(co,hss.A,"And lovely, just lovely. I think you're all ready for the red carpet!")
hss.evt(co,"Your phone buzzes with a text.", "")
hss.dlg(co,hss.U,"And it looks like not a moment too soon...")
hss.dlg(co,hss.U,"This text says that Chris is outside with a stretch limo!")
hss.showQuestComplete(co)
local awardDate = 0;
awardDate = hss.getGameProperty("premium_0062_awards2016_1", "awardDate")
if (awardDate == 1) then
hss.evt(co,"Chris stands by the curb in a trim Italian tuxedo. He holds a large bouquet of red roses.", "")
hss.dlgA(co,hss.U,"Roses. Check.",1)
hss.dlgA(co,hss.C,"For my beautiful date.",1)
hss.dlgA(co,hss.U,"Hmm. Compliment. Also check.",1)
hss.evt(co,"Chris politely holds the limo door open for you, as you get into the oversized rear compartment.", "")
else
hss.evt(co,"Chris stands by the curb in a trim Italian tuxedo.", "")
hss.evt(co,"He politely holds the limo door open for you, as you get into the oversized rear compartment.", "")
end
hss.dlgA(co,hss.C,"You ready for the big night?",1)
hss.dlgA(co,hss.U,"More like ~your~ big night! You're the one who got the nomination!",1)
hss.evt(co,"Chris climbs in next to you. He taps the glass divider separating you from the driver.", "")
hss.evt(co,"The limo driver nods in assent and guides the limo away from the curb.", "")
hss.dlgA(co,hss.U,"That's such a huge honor! You must be super excited!",1)
hss.dlgA(co,hss.C,"Yep, that's me... ~super excited...~",2)
hss.dlgA(co,hss.U,"Chris, is something wrong?",2)
end
function intro_premium_0062_awards2016_3(co)
hss.evt(co,"You turn to face Chris, probing his deep blue eyes for an answer to your question.", "")
hss.dlgA(co,hss.U,"Why did you say 'super excited' like that?",2)
hss.dlgA(co,hss.U,"This is your big moment. Aren't you happy about it?",2)
hss.evt(co,"Chris digs in the minibar for a bottle of champagne. He pours a glass.", "")
hss.dlgA(co,hss.C,"Of course, I'm happy. I'm ecstatic. Why wouldn't I be?",2)
hss.dlgA(co,hss.C,"It's absolutely an honor to be nominated for an Audrey. Champagne?",2)
hss.evt(co,"Chris offers you a champagne flute. He takes a big sip from his.", "")
hss.dlg(co,hss.U,"Chris, thank you... but I think maybe you're trying to change the subject. Just talk to me.")
hss.dlgA(co,hss.C,"Okay, but you have to understand...",2)
hss.dlgA(co,hss.C,"The nomination isn't about my performance in the movie ~Crocodile~ at all...",2)
hss.dlgA(co,hss.U,"So what ~is~ it about?",2)
end
function outro_premium_0062_awards2016_3(co)
hss.evt(co,"The limo ride continues, and Chris begins to explain himself.", "")
hss.dlg(co,hss.C,"I'm an action star. I make big, fun tentpole action movies...")
hss.dlg(co,hss.C,"And I'm blessed. I know that. I love what I do... but sometimes you want to mix it up.")
hss.dlg(co,hss.C,"That's how I feel about the movie ~Crocodile.~ I got to play a British Army Colonel in WWII.")
hss.dlg(co,hss.C,"They always tell me to stick to action, but I took a meaty role this time. And I was good... maybe even great!")
hss.dlgA(co,hss.U,"I'm trying, but I'm not really seeing the problem here...",4)
hss.dlg(co,hss.U,"You did the art movie you really wanted to make, and you got an acting nomination.")
hss.dlg(co,hss.C,"The problem is it's all just a sham.")
hss.dlg(co,hss.C,"I got a call from one of the producers, making sure I'd show up tonight.")
hss.dlg(co,hss.C,"He accidentally let it slip that they're expecting my presence to boost the TV ratings.")
hss.dlgA(co,hss.U,"...okay? And?",2)
hss.dlg(co,hss.C,"He just wanted me there for ratings. Not because of my performance.")
hss.dlg(co,hss.C,"I never even had a chance to win.")
hss.dlgA(co,hss.U,"Awww, Chris, I'm not going to lie, that sucks...",2)
hss.dlgA(co,hss.U,"But you don't know that for certain. You could still have a chance to--",2)
hss.evt(co,"The limo pauses in front of the Audrey Theater. The door opens, and the rear compartment is flooded with blinding light from popping flashbulbs--", "")
hss.dlgA(co,hss.U,"Whoa!",4)
hss.showQuestComplete(co)
hss.evt(co,"You and Chris get out of the limo and wave to the cameras.", "")
hss.dlgA(co,hss.U,"Chris, are you gonna be okay?",2)
hss.dlgA(co,hss.C,"Yeah, of course. Screw the politics.",1)
hss.dlgA(co,hss.C,"I'm still nominated for an Audrey. I'm going to enjoy the hell out of tonight!",1)
end
function outro_premium_0062_awards2016_4(co)
hss.evt(co,"As you stride down the red carpet, a reporter flags you over to ask a question.", "")
local awardDate = 0;
awardDate = hss.getGameProperty("premium_0062_awards2016_1", "awardDate")
if awardDate == 1 then
hss.dlg(co,"MAY","May Gordon, L.A. Biweekly. {YOU}, you're here with Chris Winters?")
hss.dlg(co,"MAY","Is there anything you want to say about your relationship?")
local choice = hss.showTextMenu(co, "What do you say?", "Keep it private!|Give Chris a kiss!");
if choice == 0 then
hss.dlg(co,hss.U,"Sorry, May, I'm not one to kiss and tell...")
hss.dlg(co,"MAY","...so there ~is~ kissing?")
hss.evt(co,"Chris steps over and takes your hand, drawing you away.", "")
hss.dlgA(co,hss.C,"I think that answers your question.",1)
else
hss.evt(co,"You cross over to Chris and draw him into a long, sensual kiss.", "")
hss.dlgA(co,hss.C,"...wow. Okay.",1)
hss.evt(co,"The crowd whoops and hollers! Flashbulbs pop!", "")
hss.dlg(co,hss.U,"Does that answer your question?")
end
else
hss.dlg(co,"MAY","May Gordon, L.A. Biweekly. {YOU}, you're here with Chris Winters?")
hss.dlg(co,"MAY","What do you think his chances are to win Best Supporting Actor?")
local choice = hss.showTextMenu(co, "What do you say?", "He's a lock to win!|The Academy is using Chris!");
if choice == 0 then
hss.dlgA(co,hss.U,"Did you see his movie, ~Crocodile?~",1)
hss.dlgA(co,hss.U,"Chris Winters is the hottest thing to hit this town since high-def!",1)
hss.dlgA(co,"MAY","But what about Keegan Welch? All the buzz has him winning!",1)
hss.dlgA(co,"MAY","They say his performance makes Daniel Day-Lewis look like a crazy shoe-maker!",1)
hss.dlgA(co,hss.U,"Right, well... I answered your question.",2)
else
hss.dlgA(co,"MAY","...I'm sorry? What?",4)
hss.dlg(co,hss.U,"He's popular! His fans watch TV! You do the math!")
hss.dlgA(co,"MAY","If... if that were true, that would be an explosive revelation.",4)
hss.dlg(co,hss.U,"So did I answer your question?")
end
end
hss.dlgA(co,"MAY","More than that. You just made the highlight reel!",1)
hss.showQuestComplete(co)
hss.evt(co,"You and Chris enter the theater together. As you make your way to your seats, mega-producer Anders Stone veers in front of you.", "")
hss.dlgA(co,"ANDERS","Chris, baby! Great to see you!",1)
hss.dlg(co,"ANDERS","I'm sorry to tell you this, but there's been a last minute seating adjustment.")
hss.dlg(co,hss.C,"Do you mean we're not sitting with the nominees?")
hss.dlg(co,"ANDERS","Of course ~you~ are. Chris, you're a celebrity. You're a ~name!~")
hss.dlg(co,"ANDERS","We want you right up front where everyone can see your million-dollar smile!")
hss.dlg(co,"ANDERS","But unfortunately, your companion ~isn't~ a celebrity.")
hss.dlg(co,"ANDERS","And the producers have decided it'll make for better TV if you're sitting next to someone more... notable...")
hss.dlgA(co,hss.U,"Hang on, Mr. Stone... who exactly are you giving my seat to?",3)
hss.evt(co,"Bianca shoves her way through the crowd!", "")
hss.dlgA(co,hss.B,"Chris Winters?! But daddy, you told me I could sit next to Keegan Welch!",3)
hss.dlgA(co,hss.U,"Bianca! How is she notable? Except for...",3)
local insult = false;
local slurtally = 0;
while insult == false do
local choice = hss.showTextMenu(co, "What do you do?", "Insult!|Let it go!");
if choice == 0 then
slurtally = 1;
hss.dlg(co,hss.U,"Her notably annoying voice!")
hss.dlgA(co,hss.B,"Hey!",3)
local choice = hss.showTextMenu(co, "What do you do?", "Insult!|Let it go!");
if choice == 0 then
slurtally = 2;
hss.dlg(co,hss.U,"And notably bad acting!")
hss.dlgA(co,hss.B,"HEY!",3)
local premChoice = hss.showPremiumTextMenu(co, "What do you do?", "[rings:5]Insult.|Let it go.")
if premChoice == 0 then
slurtally = 3;
insult = true;
hss.dlgA(co,hss.U,"And the notable way she parlays her daddy's success into whatever she wants!",3)
hss.dlgA(co,hss.B,"~HEEEY!~",3)
else
insult = true;
end
else
insult = true;
end
else
insult = true;
slurtally = 0;
end
end
if slurtally == 0 then
hss.dlgA(co,hss.U,"You know what? I'm bigger than name calling!",3)
hss.dlgA(co,"ANDERS","Too bad you're not bigger than my two assistants.",1)
hss.dlgA(co,hss.U,"Whu--",4)
else
hss.dlgA(co,hss.B,"Daddy, are you just going to stand there? Do something!",3)
hss.dlgA(co,"ANDERS","You know, {YOU}, you're right about my daughter's voice...",2)
hss.dlgA(co,"ANDERS","When I close my eyes, I can almost hear the banshee wail of her dear departed mother.",2)
hss.dlgA(co,hss.B,"Mom's in Florida!",3)
hss.dlgA(co,"ANDERS","And may God rest her soul.",3)
hss.dlgA(co,"ANDERS","But the fact remains... Bianca's my daughter!",3)
end
hss.evt(co,"Anders snaps his fingers. Before you can protest, two burly ushers haul you up the stairs and seat you in the balcony.", "")
hss.dlgA(co,hss.U,"Awesome... just awesome!",2)
hss.evt(co,"From your vantage, you can see Chris continue to protest with Anders Stone below.", "")
hss.dlgA(co,hss.C,"{YOU} should be sitting next to me, Anders!",3)
hss.dlgA(co,"ANDERS","Listen, Winters, this isn't about what I want or what you want!",3)
hss.dlgA(co,"ANDERS","This is about giving the people what ~they~ want!",3)
hss.dlgA(co,hss.B,"What about what ~I~ want? Guh, this is my Sweet 16 all over again!",3)
hss.evt(co,"Just then, the orchestra strikes up the opening bars of the introductory musical number!", "")
hss.evt(co,"Harrison Byrd highkicks onto stage wearing a top hat, surrounded by backup dancers.", "")
hss.dlgA(co,"HARRISON","~We've got action, romance, drama... movies chaste and tawdry!~",8)
hss.dlgA(co,"HARRISON","~We'll celebrate them all and more... tonight at the Audreys!~",8)
hss.evt(co,"As the opening musical act concludes, you look around...", "")
hss.evt(co,"You're seated next to has-beens and washed-up character actors from movies made more than a decade ago.", "")
hss.dlgA(co,hss.U,"Pauly Shore, Rob Schneider, Kevin Sorbo...",2)
hss.evt(co,"Pauly Shore glances at you with weary, sunken eyes and makes a cadaverous 'weasel' gesture.", "")
hss.dlgA(co,hss.U,"Not cool, Bianca. Very not cool.",3)
hss.evt(co,"You whip out your phone and shoot out a quick text.", "")
hss.dlg(co,hss.U,"'Ethan, this is an emergency! Help!'")
end
function intro_premium_0062_awards2016_5(co)
hss.evt(co,"From behind you comes the buzz of an incoming text!", "")
hss.evt(co,"You spin around to find Ethan sitting one row further up the balcony.", "")
hss.dlgA(co,hss.U,"Ethan... you're ~here~ at the Audreys?",4)
hss.dlgA(co,hss.E,"You think I'd miss the biggest night of the year in Hollywood?",1)
hss.dlgA(co,hss.E,"You know me. I'd beg, borrow, and steal my way to get here. In fact, I did.",1)
hss.dlg(co,hss.E,"So if anyone asks, I'm the one who taught Bradley Cooper how to use a sniper rifle.")
hss.dlgA(co,hss.U,"Uh--",4)
hss.dlg(co,hss.E,"My point is... what are you doing up here in the nosebleeds?")
hss.evt(co,"You quickly explain how Anders Stone offered up your seat to Bianca.", "")
hss.dlgA(co,hss.E,"No one treats ~my~ client that way! Come on! Get up...",3)
hss.dlgA(co,hss.E,"We're getting your seat back!",3)
end
function outro_premium_0062_awards2016_5(co)
hss.evt(co,"You and Ethan sneak down the stairs and over to the main theater doors.", "")
hss.dlgA(co,hss.U,"There's Bianca... and she's barely even paying attention to the ceremony!",3)
hss.dlgA(co,hss.U,"What's the next step in the plan?",3)
hss.dlgA(co,hss.E,"Be prepared to move when I give the signal.",3)
hss.evt(co,"Ethan strides down the aisle, over to where Bianca is seated.", "")
hss.dlgA(co,hss.E,"Bianca, what are you doing here?",4)
hss.dlgA(co,hss.B,"Sitting. Obviously. Not lurking in the aisle like a creepy creeper.",3)
hss.dlgA(co,hss.E,"I meant, why are you not backstage?",3)
hss.dlgA(co,hss.E,"You're supposed to be presenting the 'Best Tummy Tuck' award in like 60 seconds!",3)
hss.dlgA(co,hss.B,"...I am?",4)
hss.dlgA(co,hss.B,"I mean, ~I am!~ Out of my way, toadstool! Talent coming through!",3)
hss.evt(co,"Bianca blows past without seeing you, and Ethan flashes you the thumbs up.", "")
hss.dlgA(co,hss.E,"The seat's all yours, {YOU}!",1)
hss.showQuestComplete(co)
hss.evt(co,"You hear Bianca arguing with ushers as you hurry down the aisle to your seat.", "")
hss.dlgA(co,hss.B,"What do you mean there's no 'Best Tummy Tuck' award? How else would I be ~giving~ it? Duh!",3)
hss.evt(co,"You slide into the seat next to Chris.", "")
hss.dlg(co,hss.C,"In the nick of time, {YOU}...")
hss.dlg(co,hss.C,"They're about to announce Best Supporting Actor!")
end
function outro_premium_0062_awards2016_6(co)
hss.evt(co,"Harrison Byrd steps back up to the podium, ready to announce Best Supporting Actor.", "")
hss.dlgA(co,hss.U,"Chris, you're really okay with not winning the Audrey?",2)
hss.dlgA(co,hss.C,"Hey, no matter what, I tried.",1)
local awardDate = 0;
awardDate = hss.getGameProperty("premium_0062_awards2016_1", "awardDate")
if awardDate == 1 then
hss.evt(co,"Chris reaches down and takes your hand, intertwining his fingers with yours.", "")
end
hss.dlgA(co,hss.C,"And I'm here, sitting next to the person who inspired me to try.",1)
hss.dlg(co,"HARRISON","And the winner for Best Supporting Actor is...")
hss.dlgA(co,"HARRISON","Yeah, baby, we all knew this was coming! Keegan Welch! For ~Testament!~",5)
hss.evt(co,"Across the auditorium, Keegan rises to accept the award. Crowding next to him... is Bianca!", "")
hss.dlgA(co,hss.B,"Hee!",1)
hss.evt(co,"Chris lowers his head and sighs, his lips fixed in a grimace.", "")
hss.dlgA(co,hss.C,"...",2)
hss.dlgA(co,hss.U,"Awww, Chris...",2)
hss.showQuestComplete(co)
hss.evt(co,"Later that night, you and Chris hang at the official rooftop after party.", "")
hss.evt(co,"Champagne glasses clink and gorgeous men and women gush over the achievements of their fellow actors and filmmakers.", "")
hss.dlgA(co,hss.C,"How about this party, {YOU}?",1)
hss.dlgA(co,hss.C,"I think I just saw Benedict Cumberbatch making out near the avocado station.",1)
hss.dlgA(co,hss.U,"Chris, you can drop the act. I know this is killing you inside. Please just talk to me.",2)
hss.evt(co,"Chris pauses by the railing and looks out over the glittering Hollywood skyline.", "")
hss.dlg(co,hss.C,"{YOU}, it's not an act. I really am happy to be here, and at least, now I know...")
hss.dlg(co,hss.C,"Anders Stone and the other producers, they're never going to consider me in the same league as a powerhouse like Keegan Welch.")
hss.dlgA(co,hss.E,"Ugh... Chris, you really need to work on that acceptance speech!",1)
hss.evt(co,"Ethan walks over. He offers you and Chris each a gold Audrey statue.", "")
hss.dlgA(co,hss.U,"Wow, this thing is heavy! Is it for real?",4)
hss.dlgA(co,hss.C,"And why does mine say Best Animated Feature?",3)
hss.dlg(co,hss.E,"Okay, so yes, these are ~borrowed~. From someone unaware they were loaning them out, true...")
hss.dlgA(co,hss.E,"But I thought you should both hold an Audrey.",1)
hss.dlgA(co,hss.C,"Ethan, thanks for the gesture, but--",2)
hss.dlgA(co,hss.U,"No, Chris... Ethan is right.",3)
hss.dlgA(co,hss.E,"I am? I mean... obviously! Wait. What am I right about again?",4)
hss.dlg(co,hss.U,"Chris, if I've learned anything about Hollywood, it's that you can't give up on your dreams!")
hss.dlg(co,hss.U,"And seeing you holding an Audrey, it just feels ~right.~")
hss.dlgA(co,hss.C,"I don't know...",2)
if hss.getCharacterGender("YOU") == hss.Gender.MALE then
hss.dlgA(co,hss.E,"Chris, listen to {YOU}. He's on to something...",1)
hss.dlg(co,hss.E,"Did {YOU} just give up when Anders and Bianca tried to closet him away in that balcony?")
hss.dlgA(co,hss.E,"No, they wanted him gone and forgotten and ignored forever like Pauly Shore!",1)
else
hss.dlgA(co,hss.E,"Chris, listen to {YOU}. She's on to something...",1)
hss.dlg(co,hss.E,"Did {YOU} just give up when Anders and Bianca tried to closet her away in that balcony?")
hss.dlgA(co,hss.E,"No, they wanted her gone and forgotten and ignored forever like Pauly Shore!",1)
end
hss.dlg(co,hss.C,"Oddly specific...")
hss.dlg(co,hss.E,"But instead of just accepting what ~they~ wanted, {YOU} fought back...")
hss.dlg(co,hss.U,"Chris, if you want to win an Audrey, you need to just take it! And you need to never ever give it back!")
hss.dlgA(co,hss.E,"That's just a metaphor, right? Because I actually do need to return these...",4)
hss.dlgA(co,hss.E,"Preferably before John Lasseter calls for security.",4)
hss.evt(co,"A hyena-like laugh grabs your attention. Bianca exits the party, hand-in-hand with Keegan Welch. She mugs for the paparazzi.", "")
hss.dlgA(co,hss.B,"Are Keegan and I dating? Not yet. But I think Keegan looks smitten, don't you?",1)
hss.evt(co,"You turn back to Chris, eyes focused and determined.", "")
hss.dlg(co,hss.U,"We're going to do this, Chris. All of us.")
hss.dlg(co,hss.U,"We're going to help however we can, and we're going to win you an Audrey.")
hss.dlg(co,hss.U,"And next time we're standing here, you're going to be more than just Chris Winters, popular Action Star...")
hss.dlg(co,hss.U,"You're going to be Chris Winters, Audrey Award-winning, respected actor!")
hss.dlg(co,hss.C,"{YOU}... thanks. Thanks for believing in me.")
local awardDate = 0;
awardDate = hss.getGameProperty("premium_0062_awards2016_1", "awardDate")
if awardDate == 1 then
hss.evt(co,"Chris pulls you into a long, sensual kiss.", "")
hss.dlgA(co,hss.U,"Mmm, was that ~just~ a goodnight kiss, Chris? I believe I demanded ~more~ that that.",1)
hss.dlgA(co,hss.C,"Fair enough. How about we head back to my place?",1)
hss.dlgA(co,hss.U,"Check and ~check.~",1)
end
hss.evt(co,"Chris Winters, award-winning actor?", "")
hss.evt(co,"Keep playing for your next big Hollywood adventure!", "")
end
local sceneTable = {}
sceneTable["inter_preview"] = inter_preview
sceneTable["outro_premium_0062_awards2016_1"] = outro_premium_0062_awards2016_1
sceneTable["outro_premium_0062_awards2016_2"] = outro_premium_0062_awards2016_2
sceneTable["intro_premium_0062_awards2016_3"] = intro_premium_0062_awards2016_3
sceneTable["outro_premium_0062_awards2016_3"] = outro_premium_0062_awards2016_3
sceneTable["outro_premium_0062_awards2016_4"] = outro_premium_0062_awards2016_4
sceneTable["intro_premium_0062_awards2016_5"] = intro_premium_0062_awards2016_5
sceneTable["outro_premium_0062_awards2016_5"] = outro_premium_0062_awards2016_5
sceneTable["outro_premium_0062_awards2016_6"] = outro_premium_0062_awards2016_6
hss.runScene(sceneTable)
