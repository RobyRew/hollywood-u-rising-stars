--|     * button: "preview!"
function inter_preview(co)
hss.evt(co,"You, Ethan, and Addison are hanging out in your dorm...", "")
hss.dlgA(co,"ARIA","OMG, ~there~ you guys are!",1)
hss.evt(co,"You look up to find Aria and Lisa standing in the doorway.", "")
hss.dlgA(co,hss.U,"Hey, Aria. What's up?",1)
hss.dlgA(co,"ARIA","Only the ~hottest~ party of the season!",1)
hss.dlg(co,hss.E,"I like the sound of that. We can always use a new networking opportunity.")
hss.dlgA(co,"LISA","Wait 'til you hear the deets! You wanna make connections, ~this~ party is the one to go to. Everyone will be there, and I mean, ~everyone.~",1)
hss.dlgA(co,hss.A,"Oooo, exciting! What kind of party is it?",1)
hss.dlgA(co,"ARIA","A luxury cruise! I already got some ~serious~ star-power to RSVP... Emilia Ruiz, Morgan the Magnificent, even Princess Ilyria herself!",1)
hss.dlg(co,"LISA","Plus that hot British chef Liam Archer, kick-ass super spy Suresh Khan... and that's just the beginning!")
hss.dlgA(co,"ARIA","{YOU}, you ~have~ to come! There'll be great food, awesome cruise ship activities, and a magic show that'll rival Vegas.",1)
hss.dlgA(co,hss.U,"That does sound awesome...",1)
hss.dlg(co,hss.E,"It's the perfect time to hang out with some of our friends that we haven't seen in a while.")
hss.dlgA(co,hss.A,"And you never know when love will strike on the high seas...",9)
hss.dlgA(co,"ARIA","Please say you'll come! Please, please, ~please!~",1)
hss.dlgA(co,hss.U,"Well...",1)
hss.evt(co,"~In this quest, the more A-Listers you have, the more diamonds you'll earn! Try to collect them all before you go on the cruise of a lifetime!~", "")
hss.evt(co,"~Each A-Lister will give you 25 Diamonds in this quest. That adds up to 300 Diamonds... in other words, this special quest could pay for itself!", "")
hss.evt(co,"~Plus, if you have the exclusive holiday A-Listers in your entourage, you'll get a bonus on top of that!~", "")
hss.markQuestScriptRequirementFinished()
end
function outro_premium_0078_cruise_1(co)
hss.evt(co,"Later, you, Ethan, and Addison arrive at the harbor. You gape at the huge cruise ship with Aria's smiling face painted on the side.", "")
hss.dlgA(co,hss.U,"I've never seen Aria so ~happy!~",1)
hss.dlgA(co,hss.A,"Being the face of Sheridan Cruises would make anyone smile from stern to bow!",1)
hss.dlgA(co,hss.U,"But seriously, how many people did Aria invite? This cruise ship is ~huge!~",1)
hss.dlg(co,hss.E,"There's one way to find out... all aboard!")
hss.showQuestComplete(co)
hss.evt(co,"You've just set foot on the deck of the ship...", "")
hss.dlgA(co,"ARIA","{YOU}! You made it!",5)
hss.dlgA(co,hss.U,"I wouldn't miss ~this~ for the world!",1)
hss.dlg(co,hss.A,"This cruise ship is seriously amazing, Aria.")
hss.dlgA(co,"ARIA","Thanks, Addison, but you haven't seen ~anything~ yet! Come on, I'll give you the grand tour.",1)
hss.evt(co,"Aria leads you up the stairs to the top deck, where you immediately run into some familiar faces...", "")
hss.dlgA(co,hss.U,"Oh, hey guys!",1)
end
function intro_premium_0078_cruise_2(co)
if (hss.getDatingPartnerReferenceName("SHAE") == "DEAN") then
hss.evt(co,"You spot Dean and Shae kissing on the top deck of the cruise ship...", "")
hss.dlgA(co,hss.U,"~A-hem!~",1)
hss.evt(co,"Dean springs back, startled. He starts to flush, but Shae keeps her arm around his waist as she grins at you.", "")
else
hss.evt(co,"You spot Dean and Shae standing shoulder to shoulder along the railing...", "")
hss.dlgA(co,hss.U,"Hey, guys.",1)
hss.dlgA(co,"DEAN","Oh! Hey, {YOU}.",4)
end
hss.dlgA(co,hss.U,"How's it going?",1)
hss.dlg(co,"SHAE","Great! Thanks again for inviting us, Aria.")
hss.dlgA(co,"ARIA","Sure thing. I'm just giving these guys a tour of the ship. Wanna join?",1)
hss.dlg(co,"DEAN","Absolutely!")
hss.evt(co,"Shae and Dean fall into step next to you, Ethan, and Addison as Aria resumes the tour.", "")
if (hss.isCharacterAdmitted("SHAE")) then
hss.evt(co,"Shae pulls you aside for a moment...", "")
hss.dlg(co,"SHAE","Hey, I just wanted to say... thanks again for your help with that charity art show. I know I haven't always been the nicest person to you, but I do appreciate it, and I... I'm glad to be your friend, or whatever.")
hss.dlgA(co,hss.U,"My pleasure, Shae.",1)
hss.dlg(co,"SHAE","I got you something, by the way.")
hss.evt(co,"Shae hands you a gift bag.", "")
hss.dlg(co,"SHAE","It's just some face cream and moisturizer and stuff... it should be perfect for your skin type.")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward0") == nil then
hss.setQuestProperty("reward0",1)
hss.dlgA(co,hss.U,"Thanks, Shae.",1,hss.REWARD_RINGS,5)
else
hss.dlgA(co,hss.U,"Thanks, Shae.",1)
end
hss.evt(co,"The two of you fall back into step with the others...", "")
end
hss.dlgA(co,"ARIA","And over there are the outdoor basketball courts, and up ahead are the giant corkscrew water slides... oh, and my personal favorite, the zip line!",1)
hss.dlg(co,"SHAE","Okay, tour over. We're zip lining right now.")
hss.evt(co,"Shae takes a few steps forward, then pauses to glance at Dean over her shoulder.", "")
hss.dlg(co,"SHAE","Are you coming or not?")
end
function outro_premium_0078_cruise_2(co)
hss.evt(co,"Before you know it, you're standing at the top of the zip line platform, harness and helmet on!", "")
hss.evt(co,"You watch as Dean and Shae jump off the platform, zooming down to one of the lower decks...", "")
hss.dlgA(co,"SHAE","~Woooooo!~",5)
hss.dlgA(co,"DEAN","~I didn't sign up for thiiiiiis!~",4)
hss.dlgA(co,"ARIA","All right, {YOU}, you're up next!",1)
hss.dlgA(co,"LANCE","Is this spot taken?",1)
hss.evt(co,"Lance steps up beside you, attaching his harness to the line next to yours.", "")
hss.dlgA(co,hss.U,"It's all yours. You ready?",1)
hss.dlgA(co,"LANCE","Not at all!",4)
hss.dlgA(co,hss.U,"Here... we... ~go!~",1)
hss.evt(co,"You jump off the platform, completely weightless for a moment before the zip line catches you and carries you through the cool twilight air...", "")
local choice = hss.showTextMenu(co, "What do you do?", "Shout for joy!|Freak out!", true, 3);
if (choice == 0) then
hss.dlgA(co,hss.U,"~Wooooohoooo!~",5)
else
hss.dlgA(co,hss.U,"~Aaaaaaaaaaaaah!~ This was a mistake!",4)
end
hss.dlgA(co,"LANCE","~I was not prepared for this!~",4)
hss.evt(co,"Finally, your feet touch down on the lower deck! A cruise worker helps you out of the harness.", "")
hss.dlgA(co,hss.U,"Whew! That was intense.",4)
hss.dlgA(co,"LANCE","Too intense! My hair's a mess!",4)
if (hss.isCharacterAdmitted("LANCE")) then
hss.evt(co,"You chuckle as Lance frantically tries to fix his hair. After a moment, Lance realizes it's not working and starts to laugh with you.", "")
hss.dlgA(co,"LANCE","I guess it's no use, huh?",1)
hss.dlg(co,hss.U,"Honestly? Your hair looks fine, Lance.")
hss.dlgA(co,"LANCE","Only fine?!",4)
hss.dlgA(co,hss.U,"I mean, ~fantastic.~ Even better than normal. You should zip line every day to get your hair just perfect.",1)
hss.dlg(co,"LANCE","Thanks, {YOU}. You always know how to make me feel better... even when you're full of it.")
hss.dlg(co,hss.U,"That's what friends are for, Lance.")
hss.dlg(co,"LANCE","Right. Oh, before I forget...")
hss.evt(co,"Lance reaches into his pocket and pulls out a gift certificate to a small fashion boutique on Rodeo Drive.", "")
hss.dlg(co,"LANCE","I picked out the perfect red carpet outfit for you. Just give 'em that and say Lance sent you. They'll hook you up.")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward1") == nil then
hss.setQuestProperty("reward1",1)
hss.dlgA(co,hss.U,"Thank you, Lance! That's so sweet.",1,hss.REWARD_RINGS,5)
else
hss.dlgA(co,hss.U,"Thank you, Lance! That's so sweet.",1)
end
hss.dlgA(co,"LANCE","Like you said, that's what friends are for, right?",1)
end
hss.evt(co,"Shae and Dean saunter over. Shae flips her hair over her shoulder.", "")
hss.dlg(co,"SHAE","Come on, Dean. Let's go again.")
hss.dlgA(co,"DEAN","Okay!",4)
if (hss.isCharacterAdmitted("DEAN")) then
hss.evt(co,"Dean starts to follow Shae back up the stairs, but he pauses.", "")
hss.dlg(co,"DEAN","Hey, {YOU}, I almost forgot. I got a little something for you.")
hss.evt(co,"Dean reaches into his pocket and pulls out a flash drive.", "")
hss.dlg(co,"DEAN","It's a supercut of some of your work... I don't know, I thought maybe you'd like to see how far you've come since you came to Hollywood...")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward2") == nil then
hss.setQuestProperty("reward2",1)
hss.dlgA(co,hss.U,"Thanks, Dean. That's so thoughtful.",1,hss.REWARD_RINGS,5)
else
hss.dlgA(co,hss.U,"Thanks, Dean. That's so thoughtful.",1)
end
hss.dlg(co,"SHAE","Dean... come on, slow poke!")
hss.dlg(co,"DEAN","Coming! Catch you later, {YOU}.")
end
hss.evt(co,"Shae and Dean disappear back up on the top deck just as Ethan and Addison zip line down to you...", "")
hss.dlgA(co,hss.E,"Woo!",1)
hss.dlgA(co,hss.A,"{YOU}! Check us out!",5)
hss.dlgA(co,hss.U,"Lookin' good, guys!",1)
hss.showQuestComplete(co)
hss.evt(co,"After you've had your fill of zip lining, you, Ethan, and Addison continue exploring the ship...", "")
hss.dlg(co,hss.A,"{YOU}, look!")
hss.evt(co,"Addison points to a poster advertising an exclusive film screening... starring Emilia Ruiz and Suresh Khan!", "")
hss.dlg(co,hss.E,"~'Opposites Attract: A love story of magnetic proportions.'~")
hss.dlgA(co,hss.U,"Okay, ~this~ I've gotta see.",1)
end
function outro_premium_0078_cruise_3(co)
hss.evt(co,"You and your friends file into the packed luxury theater...", "")
hss.dlgA(co,"ILYRIA","{YOU}! Come sit by me!",1)
hss.evt(co,"You spot Ilyria sitting in the middle of the theater, a few empty seats beside her. You make your way down her row.", "")
hss.dlgA(co,hss.U,"Hey, Ilyria. Are you ready to see if opposites attract? Spoiler alert, I'm pretty sure the answer is 'yes.'",1)
hss.dlgA(co,"ILYRIA","I'm absolutely ready! Emilia Ruiz is my favorite actress... I can't believe we get to see her newest film before it's released!",9)
hss.dlg(co,hss.E,"I heard Aria has an in with her from the 'Lisa Mermaid' days.")
if (hss.isCharacterAdmitted("ILYRIA")) then
hss.evt(co,"Before the film begins to play, Ilyria leans over and whispers...", "")
hss.dlgA(co,"ILYRIA","I got you a little something from Lahar, by the way...",1)
hss.evt(co,"Ilyria hands you a golden bracelet.", "")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward0") == nil then
hss.setQuestProperty("reward0",1)
hss.dlgA(co,hss.U,"Oh, wow. Thank you, Ilyria.",1,hss.REWARD_RINGS,25)
else
hss.dlgA(co,hss.U,"Oh, wow. Thank you, Ilyria.",1)
end
hss.dlgA(co,"ILYRIA","You're very welcome, {YOU}.",1)
end
hss.dlgA(co,hss.A,"Oh, the movie's starting!",1)
hss.evt(co,"The opening credits scroll across the screen. The movie starts with FBI agent Renata Sanchez, played by Emilia, getting her next assignment...", "")
hss.dlgA(co,"EMILIA","~'You have got to be kidding me! You want me to babysit that pretty boy, Sam Kapoor? How could he possibly be vital to national security?'~",3)
hss.evt(co,"Later, Emilia's character finds herself falling for her assignment...", "")
hss.dlgA(co,"EMILIA","~'Sam... we can't.'~",2)
hss.dlgA(co,"SURESH","~'But Renata--'~",2)
hss.dlgA(co,"EMILIA","~'If we get involved, I won't be able to do my job. I HAVE to protect you.'~",3)
hss.dlg(co,"SURESH","~'You don't have to be an agent all the time. It's okay to just be you every once in a while...'~")
hss.evt(co,"They lean into each other, about to kiss...", "")
hss.evt(co,"Suddenly, shots are fired! Emilia tackles Suresh to the ground, shielding him!", "")
hss.dlgA(co,"EMILIA","~'We've been betrayed! We have to get outta here, NOW!'~",4)
hss.evt(co,"Finally, Emilia and her team of FBI agents are able to capture the bad guys and save Suresh's life...", "")
hss.dlgA(co,"SURESH","~'So, I'm not your assignment anymore...'~",1)
hss.dlgA(co,"EMILIA","~'No... no, you're not...'~",1)
hss.evt(co,"Suresh leans down and captures Emilia in a passionate kiss! The audience cheers as the credits roll.", "")
hss.dlgA(co,"ILYRIA","Those two have such wonderful chemistry!",1)
hss.dlgA(co,hss.U,"Yeah. I can't believe they were able to portray characters who are basically their exact opposites.",1)
hss.evt(co,"Just then, Emilia and Suresh come out from behind the curtain! The crowd gives them a standing ovation.", "")
hss.dlgA(co,"ILYRIA","~Ohmygoodness,~ it's them!",4)
hss.dlgA(co,"EMILIA","Thank you, thank you. You're all too kind.",1)
hss.dlg(co,"SURESH","We hope you enjoyed watching our movie as much as we enjoyed making it...")
hss.dlgA(co,"ILYRIA","{YOU}, pinch me! I ~must~ be dreaming!",4)
hss.dlgA(co,hss.U,"You're wide awake, Ilyria. You should go talk to them!",1)
hss.evt(co,"As the crowd begins to disperse, Emilia and Suresh mingle with the audience...", "")
if (hss.isCharacterAdmitted("EMILIA")) then
hss.dlgA(co,"EMILIA","{YOU}! I was so hoping you'd be here tonight.",1)
hss.dlgA(co,hss.U,"Hey, Emilia. You were fantastic.",1)
hss.dlg(co,"EMILIA","Thanks, {YOU}. You're so sweet. Oh, that reminds me... I got you a gift as a thank you for all you've done.")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward1") == nil then
hss.setQuestProperty("reward1",1)
hss.dlgA(co,hss.U,"Emilia, you didn't have to.",1,hss.REWARD_RINGS,25)
else
hss.dlgA(co,hss.U,"Emilia, you didn't have to.",1)
end
hss.dlgA(co,"EMILIA","I know, darling, but I wanted to. Enjoy!",1)
hss.evt(co,"You wave as Emilia goes to greet an adoring fan.", "")
end
if (hss.isCharacterAdmitted("SURESH")) then
hss.dlg(co,"SURESH","{YOU}, it's good to see you again.")
hss.dlgA(co,hss.U,"Suresh! You looked good as a rom-com leading man. If I didn't know any better, I'd think you actually ~liked~ it!",1)
hss.dlg(co,"SURESH","A spy must always be able to blend into his surroundings... even when those surroundings are a romantic comedy.")
hss.dlg(co,"SURESH","But it wasn't the ~worst~ experience in the world. Definitely ranks higher than certain interrogations I've had.")
hss.dlgA(co,hss.U,"Such kind words coming from you.",1)
hss.dlg(co,"SURESH","Anyway, I've been meaning to give you something.")
hss.evt(co,"Suresh slips you a pair of sunglasses...", "")
hss.dlg(co,"SURESH","They double as nightvision goggles and heat sensors. You never know when they'll come in handy.")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward2") == nil then
hss.setQuestProperty("reward2",1)
hss.dlgA(co,hss.U,"Thanks!",1,hss.REWARD_RINGS,25)
else
hss.dlgA(co,hss.U,"Thanks!",1)
end
end
hss.showQuestComplete(co)
hss.evt(co,"As you file out of the theater, Ethan checks his watch.", "")
hss.dlg(co,hss.E,"We've got about an hour before Morgan's big show tonight. What do you guys wanna do?")
hss.evt(co,"You and Addison look at each other and grin.", "")
hss.dlgA(co,hss.U,"Check out the pool!",5)
end
function intro_premium_0078_cruise_4(co)
hss.evt(co,"After changing into bathing suits, you and your friends arrive at the cruise ship's indoor olympic pool with an attached jacuzzi. Didi, Song, and Hannelina are already relaxing and enjoying the bubbles...", "")
hss.dlgA(co,"DIDI","{YOU}! You're as stunning as an graceful wombat.",1)
if (hss.isCharacterAdmitted("DIDI")) then
hss.dlgA(co,"DIDI","You just need ~one~ little thing to complete your look!",1)
hss.evt(co,"Didi hands you an elegant sun hat that matches your swimsuit perfectly!", "")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward0") == nil then
hss.setQuestProperty("reward0",1)
hss.dlgA(co,hss.U,"Wow, thank you, Didi! How did you know this would work with my outfit so well?",1,hss.REWARD_RINGS,25)
else
hss.dlgA(co,hss.U,"Wow, thank you, Didi! How did you know this would work with my outfit so well?",1)
end
hss.dlgA(co,"DIDI","I just had a feeling...",1)
end
hss.dlgA(co,"SONG","Whatever ~that~ means...",3)
hss.dlgA(co,hss.A,"Uh, hey, Song.",4)
hss.dlg(co,hss.E,"Song. How're you?")
hss.dlgA(co,"SONG","Annoyed! Little Miss Sunshine over here is refusing to give me ~any~ juicy gossip about her photoshoots with the Anastasia's Secret Angels...",3)
hss.dlgA(co,"SONG","And I ~know~ there's good gossip.",3)
hss.evt(co,"Hannelina is sitting at the edge of the jacuzzi, ignoring the rest of the conversation as she looks around anxiously...", "")
hss.dlg(co,"DIDI","I don't ~like~ spreading rumors...")
hss.dlgA(co,"SONG","Why ~not?~ Don't you know the world runs on rumors?",3)
hss.dlg(co,hss.U,"I don't think you're gonna get Didi to cave, Song...")
hss.dlgA(co,"SONG","Just you wait... I have my ways.",3)
hss.dlgA(co,"DIDI","What do you--",4)
hss.dlgA(co,"HANNELINA","Enough!",3)
hss.evt(co,"Suddenly, Hannelina slams her hands down on the surface of the water, causing icicles to shoot out over the jacuzzi!", "")
hss.dlgA(co,hss.U,"Whoa!",4)
end
function outro_premium_0078_cruise_4(co)
hss.evt(co,"Hannelina's magic begins to chill the entire jaccuzi and attached pool! You and your friends quickly scramble out just as the water turns to solid ice...", "")
hss.evt(co,"But icy manacles shoot out from the frozen pool, attaching themselves to Song and Didi's wrists and binding them together!", "")
hss.dlgA(co,"SONG","Hey!",3)
hss.evt(co,"Hannelina sighs in relief.", "")
hss.dlgA(co,"HANNELINA","There, that's ~much~ better. There was definitely not enough winter on this ship. I simply couldn't focus in so much... heat.",1)
hss.dlgA(co,"DIDI","I'm thrilled you're feeling more like your magnificently icy self... but can you, uh, free us?",1)
hss.dlg(co,"HANNELINA","Not until you stop bickering... I use this method with my polar bears all the time.")
hss.dlgA(co,"SONG","But...",4)
hss.dlgA(co,"HANNELINA","I'll melt the shackles when you prove that you can get along.",1)
hss.evt(co,"Song gives Didi a panicked look, but Didi just grins at her.", "")
hss.dlgA(co,"DIDI","I supposed we're destined to be friends after all!",1)
hss.dlgA(co,"SONG","What have I gotten myself into?",3)
hss.dlg(co,"HANNELINA","In the meantime, {YOU}, Ethan, Addison, please enjoy the new and improved pool!")
hss.dlgA(co,hss.U,"You don't have to tell me twice!",1)
hss.evt(co,"Hannelina creates icy skates for your feet that let you glide smoothly along the surface without getting too cold! Soon, you're twirling around in your bathing suit!", "")
hss.dlgA(co,hss.U,"This is awesome!",5)
if (hss.isCharacterAdmitted("HANNELINA")) then
hss.dlgA(co,"HANNELINA","Oh, I'm not even done yet...",1)
hss.evt(co,"With a snap of her fingers, your swimming suit transforms into a fancy ice skating outfit, fluttering as you rush by.", "")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward1") == nil then
hss.setQuestProperty("reward1",1)
hss.dlgA(co,hss.U,"This is stunning! Thank you, Hannelina!",1,hss.REWARD_RINGS,10)
else
hss.dlgA(co,hss.U,"This is stunning! Thank you, Hannelina!",1)
end
hss.dlgA(co,"HANNELINA","You're quite welcome, {YOU}.",1)
end
hss.showQuestComplete(co)
hss.evt(co,"Later, Song calls out to get Hannelina's attention...", "")
hss.dlgA(co,"SONG","How's ~this~ for getting along?",3)
hss.evt(co,"Song and Didi, still attached at the wrist, skate along the top of the pool. Song lifts Didi in a perfect arabesque, gliding along the smooth surface like a professional figure skater...", "")
hss.dlgA(co,"DIDI","I feel like a penguin who just learned to fly!",1)
hss.evt(co,"Hannelina nods approvingly. She snaps her fingers, and the ice shackles around their wrists disappear!", "")
hss.dlgA(co,"HANNELINA","Well done.",1)
if (hss.isCharacterAdmitted("SONG")) then
hss.evt(co,"As soon as she's free, Song skates by you.", "")
hss.dlg(co,"SONG","Now that I've got my independence back... I'll show you how it's ~really~ done.")
hss.evt(co,"Song twirls into a triple loop, landing gracefully in front of you! Her skates carve through the ice, sending an arc of frost flying through the air around you.", "")
hss.dlg(co,"SONG","Enjoying the show? You're welcome.")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward2") == nil then
hss.setQuestProperty("reward2",1)
hss.dlgA(co,hss.U,"Wow! I didn't know you could skate like that!",4,hss.REWARD_RINGS,25)
else
hss.dlgA(co,hss.U,"Wow! I didn't know you could skate like that!",4)
end
hss.dlgA(co,"SONG","There's a lot you don't know about me.",1)
end
hss.dlgA(co,hss.A,"{YOU}, we'd better get going. Morgan's big show is about to start!",1)
hss.dlgA(co,hss.U,"I wonder what tricks she's got up her sleeve now...",1)
end
function intro_premium_0078_cruise_5(co)
hss.evt(co,"You, Ethan, and Addison arrive in the cruise ship's main auditorium a few minutes before the show is set to begin. You find your seats in the front row just as the curtains open...", "")
hss.dlgA(co,"HARRISON","Welcome, welcome. As many of you know, I'm Harrison Byrd, and a certain fabulous magician asked me to be her assistant tonight.",1)
hss.dlgA(co,"HARRISON","Naturally, I agreed. Rule #38, Never turn down a pretty face... or a talented magician who can literally curse the pants off of you!",7)
hss.evt(co,"On cue, Harrison's pants fly off and soar across the stage... revealing an identical pair underneath!", "")
hss.evt(co,"As the audience roars with laughter, you lean over and whisper to your friends...", "")
hss.dlgA(co,hss.U,"Wow, Harrison is on fire tonight.",1)
hss.dlg(co,hss.E,"He's gotta stay sharp for award season... it's never too early to start practicing a monologue.")
if (hss.isCharacterAdmitted("HARRISON")) then
hss.evt(co,"Harrison spots you in the crowd and winks at you.", "")
hss.dlgA(co,"HARRISON","You're all in for a treat... we have a celebrity in the crowd. Give it up for {YOU}!",1)
hss.evt(co,"The audience applauds as a spotlight shines on you!", "")
hss.dlgA(co,hss.U,"Oh! Hey, everyone.",4)
hss.evt(co,"You wave to the crowd.", "")
hss.dlgA(co,"HARRISON","{YOU} is good people, folks, which brings me to Rule #99, Surround yourself with good people. I added that one after meeting {YOU} specifically.",1)
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward0") == nil then
hss.setQuestProperty("reward0",1)
hss.dlgA(co,hss.U,"I feel so honored.",1,hss.REWARD_RINGS,25)
else
hss.dlgA(co,hss.U,"I feel so honored.",1)
end
hss.dlg(co,"HARRISON","You should. I don't make new rules for just ~anyone.~ At least, not flattering rules.")
hss.dlgA(co,"HARRISON","Speaking of which, you would not ~believe~ this guy I met the other day...",1)
end
hss.evt(co,"Harrison runs through a few more jokes before he finishes his speech and sweeps into a bow...", "")
hss.dlgA(co,"HARRISON","Now, without further ado, I present... ~Morgan the Magnificent!~",1)
end
function outro_premium_0078_cruise_5(co)
hss.evt(co,"You, Ethan, and Addison are on the edge of your seats as Harrison introduces Morgan... but she doesn't appear on stage!", "")
hss.dlgA(co,"HARRISON","I said... ~Morgan the Magnificent!~",4)
hss.evt(co,"Scattered applause sounds as everyone cranes their necks, looking for a glimpse of the magician.", "")
hss.dlgA(co,hss.A,"Where is she?",4)
hss.dlgA(co,"MORGAN","Right behind you!",1)
hss.dlgA(co,hss.U,"Oh!",4)
hss.evt(co,"You turn to see Morgan lounging in the seat behind you! She grins at you before jumping up on stage.", "")
hss.dlgA(co,"MORGAN","Thank you for the introduction, Harrison, but I see you decided to ignore my ~strict~ dress code...",1)
hss.dlgA(co,"HARRISON","What dress code?",4)
hss.evt(co,"Morgan whips a long sheet out of her pocket and throws it over a surprised Harrison!", "")
hss.dlgA(co,"HARRISON","Hey!",4)
hss.evt(co,"As Morgan pulls the sheet away, Harrison's gold ensemble turns into a bright blue tracksuit!", "")
hss.dlgA(co,hss.E,"His suit! His beautiful suit!",4)
hss.dlgA(co,"HARRISON","I did ~not~ sign up for this.",4)
hss.evt(co,"The audience cheers as Morgan continues her act, wowing you with one trick after another...", "")
hss.dlgA(co,"MORGAN","Now, for my final act, I'll perform an old classic... pulling a rabbit out of my hat!",1)
hss.dlgA(co,hss.U,"Really? That seems a little... standard for Morgan.",4)
hss.dlg(co,hss.A,"I wouldn't underestimate her, {YOU}.")
hss.evt(co,"Morgan holds her top hat in front of her, reaching into it with a flourish. After a moment's pause, you see a pair of bunny ears poke out!", "")
hss.dlgA(co,"EASTON","Hello!",1)
hss.evt(co,"You watch in awe as Morgan pulls Easton Buniman out of her hat, rabbit suit and all!", "")
hss.dlgA(co,"MORGAN","~Ta-da!~",1)
hss.evt(co,"You jump to your feet, cheering and clapping as Morgan, Harrison, and Easton take their bows.", "")
hss.showQuestComplete(co)
if (hss.isCharacterAdmitted("MORGAN")) then
hss.evt(co,"Morgan finds you after the show...", "")
hss.dlgA(co,"MORGAN","{YOU}! What'd you think of my newest trick?",1)
hss.dlgA(co,hss.U,"That was the most magnificent thing I've ever seen, Morgan.",1)
hss.dlgA(co,"MORGAN","Even more magnificent than... ~this?~",1)
hss.evt(co,"Morgan pulls a huge bouquet of flowers seemingly out of thin air and presents them to you with a grin!", "")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward1") == nil then
hss.setQuestProperty("reward1",1)
hss.dlgA(co,hss.U,"Wow! Thank you, Morgan.",1,hss.REWARD_RINGS,25)
else
hss.dlgA(co,hss.U,"Wow! Thank you, Morgan.",1)
end
hss.dlgA(co,"MORGAN","You're very welcome. And for my next trick... I'll disappear!",1)
hss.evt(co,"With a spin, Morgan vanishes, leaving only her top hat behind!", "")
hss.dlgA(co,hss.U,"Whoa. Where did she... what?",4)
hss.evt(co,"You walk away, shaking your head in awe.", "")
end
if (hss.isCharacterAdmitted("EASTON")) then
hss.evt(co,"Easton makes his way over to you through the crowd...", "")
hss.dlgA(co,"EASTON","{YOU}! Did you see me come out of that hat?",1)
hss.dlgA(co,hss.U,"I did! And you were ~awesome!~",1)
hss.dlgA(co,"EASTON","Thanks, {YOU}. You've always believed in me, even when I didn't believe in myself... that's why I wanted to give you a little something, as a token of my gratitude and whatnot.",1)
hss.evt(co,"Easton hands you a huge chocolate egg...", "")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward2") == nil then
hss.setQuestProperty("reward2",1)
hss.dlgA(co,hss.U,"Thanks, Easton! It looks delicious.",1,hss.REWARD_RINGS,10)
else
hss.dlgA(co,hss.U,"Thanks, Easton! It looks delicious.",1)
end
hss.dlgA(co,"EASTON","It's ~egg~-cellent. Just don't let it melt!",1)
hss.evt(co,"With a little hop and a wave, Easton heads backstage.", "")
end
hss.evt(co,"You, Ethan, and Addison follow the flow of the crowd to the after party...", "")
hss.dlgA(co,hss.U,"This night just keeps getting better and better... I don't know how anything could ever top that show.",1)
hss.dlg(co,hss.E,"The night is still young, {YOU}. ~Anything~ can happen.")
hss.dlg(co,hss.A,"Especially with a crowd like this... wait, is that who I ~think~ it is over by the bar?")
hss.dlgA(co,hss.U,"Let's go check it out!",1)
end
function intro_premium_0078_cruise_6(co)
hss.evt(co,"You, Ethan, and Addison make your way over to the bar, where Santa Claus and Cupid are ordering drinks from Liam Archer.", "")
hss.dlgA(co,"LIAM","{YOU}. It's nice to see a familiar, competent face.",3)
if (hss.isCharacterAdmitted("LIAM")) then
hss.evt(co,"Liam quickly mixes a drink and slides it over to you.", "")
hss.dlgA(co,hss.U,"Oh, thank you, but I didn't--",4)
hss.evt(co,"Liam waves away your concerns.", "")
hss.dlg(co,"LIAM","Consider it a gift for being you.")
hss.dlgA(co,hss.U,"Oh, in that case...",1)
hss.evt(co,"You take a long sip of the sweet drink...", "")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward0") == nil then
hss.setQuestProperty("reward0",1)
hss.dlgA(co,hss.U,"It's delicious!",1,hss.REWARD_RINGS,25)
else
hss.dlgA(co,hss.U,"It's delicious!",1)
end
end
hss.evt(co,"Just then, Santa lets out a loud ~buuuuuuurp!~ Liam cringes.", "")
hss.dlgA(co,"SANTA","Leon! Toss me another martini!",1)
hss.dlgA(co,"LIAM","It's ~Liam.~ Please don't make me cut you off. It would only embarrass both of us.",3)
hss.dlg(co,"CUPID","Hey, give my man a break. He's had a string of... let's call them 'unfortunate' relationships.")
hss.dlgA(co,"SANTA","But tonight... it all changes! Because of ~this~ guy.",1)
hss.evt(co,"Santa slings his arm over Cupid's shoulder, knocking into his quiver of arrows.", "")
hss.dlgA(co,"SANTA","He's got... connections. And he's gonna wingman me to get a date with... ~her.~",1)
hss.dlgA(co,hss.U,"Who?",4)
end
function outro_premium_0078_cruise_6(co)
hss.evt(co,"Santa points to a redheaded woman on the other side of the room...", "")
hss.dlg(co,"PETRA","...")
hss.dlgA(co,"SANTA","She's the one. You ~gotta~ help me, Cupid.",1)
hss.dlgA(co,"CUPID","Uh, you know, I think I left my arrows in my room...",4)
hss.evt(co,"You look at his quiver full of arrows and give Cupid a confused look. He winks at you.", "")
if (hss.isCharacterAdmitted("CUPID")) then
hss.evt(co,"Cupid slips you his arrows behind Santa's back. He whispers...", "")
hss.dlg(co,"CUPID","Look after these for me, okay?")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward1") == nil then
hss.setQuestProperty("reward1",1)
hss.dlgA(co,hss.U,"Will do!",0,hss.REWARD_RINGS,10)
else
hss.dlgA(co,hss.U,"Will do!",0)
end
end
hss.dlg(co,"CUPID","Why don't we try this the old-fashioned way? I'll back you up like a true wingman.")
hss.evt(co,"Santa considers for a moment, then nods.", "")
hss.dlgA(co,"SANTA","It's a deal!",1)
if (hss.isCharacterAdmitted("SANTA")) then
hss.evt(co,"Suddenly, Santa turns to you.", "")
hss.dlgA(co,"SANTA","{YOU}! I almost forgot...",1)
hss.evt(co,"Santa tosses you a perfectly wrapped present.", "")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward2") == nil then
hss.setQuestProperty("reward2",1)
hss.dlgA(co,hss.U,"Thanks!",4,hss.REWARD_RINGS,10)
else
hss.dlgA(co,hss.U,"Thanks!",4)
end
hss.dlgA(co,"SANTA","Stay on the nice list, {YOU}.",7)
hss.evt(co,"With that, Santa turns back around and continues across the room...", "")
end
hss.evt(co,"With that, Santa and Cupid saunter off...", "")
hss.dlgA(co,hss.A,"Should we... do something?",4)
hss.dlgA(co,"LIAM","That big baby seemed to have everything under control.",3)
hss.dlg(co,hss.U,"And somehow, I think that woman can take care of herself...")
hss.dlgA(co,"ROK","Barkeep, a pint of mead!",1)
hss.evt(co,"You turn to see Rok the Reaver plop down into the barstool next to you.", "")
hss.dlgA(co,hss.U,"Hey, Rok.",1)
hss.dlg(co,"ROK","{YOU}! A pleasure, as always.")
if (hss.isCharacterAdmitted("ROK")) then
hss.dlg(co,"ROK","I've been meaning to give you this gift...")
hss.evt(co,"Rok hands you a beautiful blue stone.", "")
hss.dlgA(co,"ROK","A sapphire nicked from the crown jewels of a neighboring kingdom. The queen shan't miss it.",1)
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward3") == nil then
hss.setQuestProperty("reward3",1)
hss.dlgA(co,hss.U,"Thank you, Rok. It's beautiful.",1,hss.REWARD_RINGS,25)
else
hss.dlgA(co,hss.U,"Thank you, Rok. It's beautiful.",1)
end
end
hss.evt(co,"Liam sighs as he pours a pint of mead for Rok. You can hear him muttering...", "")
hss.dlgA(co,"LIAM","I don't even know why I bother at these gatherings... mead, of all things...",3)
hss.evt(co,"Liam sets the glass in front of Rok, who downs it in one gulp!", "")
hss.dlgA(co,hss.U,"Whoa, slow down there...",4)
hss.evt(co,"Rok wipes his mouth and grins at you.", "")
hss.dlgA(co,"ROK","That was excellent! I'll have another!",1)
hss.evt(co,"With a sigh, Liam begins to pour another pint of mead...", "")
hss.showQuestComplete(co)
hss.evt(co,"You, Addison, and Ethan continue to nurse your own drinks.", "")
hss.dlg(co,hss.A,"I think I'm ready for some fresh air... you guys wanna head up to the top deck?")
hss.dlgA(co,hss.U,"Sure!",1)
hss.dlg(co,hss.E,"Right behind you.")
hss.evt(co,"You and your friends walk up the stairs to the upper deck... where you run right into someone!", "")
hss.dlgA(co,hss.U,"Oh, excuse me!",4)
end
function intro_premium_0078_cruise_7(co)
hss.evt(co,"You turn around and realize that you bumped into Jin!", "")
hss.dlgA(co,hss.U,"Hey, Jin. Sorry about that...",1)
hss.dlgA(co,"JIN","What do I always tell you, {YOU}? Gotta keep both eyes open... plus the ones in the back of your head, if you've got 'em.",1)
if (hss.isCharacterAdmitted("JIN")) then
hss.dlg(co,hss.U,"I don't know why you seem to think I have eyes in the back of my head...")
hss.dlg(co,"JIN","You never know where monsters lurk, {YOU}. Just some advice from me to you...")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward0") == nil then
hss.setQuestProperty("reward0",1)
hss.dlgA(co,hss.U,"Thanks, but I'm pretty sure they aren't on my head.",1,hss.REWARD_RINGS,10)
else
hss.dlgA(co,hss.U,"Thanks, but I'm pretty sure they aren't on my head.",1)
end
hss.evt(co,"Jin raises an eyebrow at you.", "")
end
hss.dlg(co,"AIDEN","{YOU}, there you are. I--")
hss.evt(co,"Aiden approaches you, then pauses when he sees Jin.", "")
hss.dlgA(co,"AIDEN","I apologize, I didn't realize you were... otherwise occupied.",3)
hss.dlgA(co,"JIN","Got a problem?",3)
hss.dlgA(co,"AIDEN","Not at all. {YOU}, come find me when you're done with him?",3)
if (hss.isCharacterAdmitted("AIDEN")) then
hss.dlgA(co,hss.U,"Are you sure? If it's important, we can talk now.",4)
hss.evt(co,"Aiden pauses and smiles at you. He produces a flower from behind his back and tucks it behind your ear.", "")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward1") == nil then
hss.setQuestProperty("reward1",1)
hss.dlgA(co,"AIDEN","I have all the time in the world for you. No rush.",0,hss.REWARD_RINGS,10)
else
hss.dlgA(co,"AIDEN","I have all the time in the world for you. No rush.",0)
end
end
hss.evt(co,"Aiden retreats back into the crowd, melting into the night. You turn back to Jin.", "")
hss.dlg(co,hss.U,"You really should be nicer to him, you know. The two of you have more in common than you think...")
hss.dlg(co,"JIN","Let's talk about something else. Anything else, please.")
hss.dlg(co,hss.U,"Fine... tell me about your latest adventure.")
hss.evt(co,"Jin is recounting his recent run-in with a mountain troll... when suddenly, a big swell causes the ship to pitch to one side!", "")
hss.dlgA(co,hss.U,"Whoa!",4)
hss.dlgA(co,"JIN","Careful there.",4)
hss.evt(co,"Jin catches you just before you hit the deck.", "")
hss.dlg(co,hss.U,"Whew! Thanks, Jin. I--")
hss.evt(co,"You're interrupted by loud shouts!", "")
hss.dlgA(co,"ARIA","OMG, man overboard!",4)
hss.evt(co,"You and Jin rush to the railing... and see Aiden struggling in the water!", "")
hss.dlgA(co,hss.U,"Aiden!",4)
end
function outro_premium_0078_cruise_7(co)
hss.evt(co,"Aiden is floundering in the ocean!", "")
hss.dlgA(co,"AIDEN","Can't... swim... ~help!~",4)
local choice = hss.showTextMenu(co, "What do you do?", "Throw him a lifesaver!|Scream your head off!", true, 3);
if (choice == 0) then
hss.evt(co,"You grab a nearby lifesaver and throw it as far as you can! It lands a few feet away from Aiden...", "")
hss.dlgA(co,hss.U,"Aiden! Grab the lifesaver!",4)
hss.dlgA(co,"AIDEN","Wha-- ~blerpb!~",4)
hss.evt(co,"A wave crashes over Aiden's head, and he disappears beneath the surface before he can grab the lifesaver!", "")
hss.dlgA(co,hss.U,"~Aiden!~",4)
else
hss.dlgA(co,hss.U,"~Help! Heeeeeeeelp!~",4)
hss.evt(co,"More people around the deck turn at your shouts.", "")
end
hss.dlgA(co,"PENELOPE","I'm on it!",4)
hss.evt(co,"You see Penelope fly out over the water, her ghostly light casting eerie shadows in the ocean. She tries to grab Aiden's arms... but her hands go right through him!", "")
hss.dlgA(co,"PENELOPE","I don't have enough strength to move corporeal objects right now...",2)
hss.evt(co,"Suddenly, Jin dives overboard!", "")
hss.dlgA(co,hss.U,"Jin!",4)
hss.evt(co,"You seem him pop up over the surface ten feet away, but quickly lose sight of him in the darkness.", "")
hss.dlgA(co,hss.U,"Help! We need help!",4)
hss.dlgA(co,"SCARLET","Scarlet Justice and Steel Dynamo to the rescue!",3)
hss.dlgA(co,hss.U,"Where did you guys-- you know what, nevermind.",4)
hss.evt(co,"Scarlet raises her arms and calls down a ring of fire! Your eyes are blinded for a moment, but the ocean is bright as day, and you can see Jin swimming deftly toward Aiden.", "")
hss.dlgA(co,"SCARLET","Steel, you're up!",3)
hss.dlgA(co,"STEEL","You got it!",3)
hss.evt(co,"Steel hops over the railing and runs along the top of the water!", "")
hss.dlgA(co,hss.U,"Whoa. I did ~not~ know he could do that.",4)
hss.evt(co,"Together, Jin and Steel manage to pull Aiden to safety...", "")
hss.dlgA(co,"AIDEN","I... thank you, everyone.",4)
hss.evt(co,"Aiden makes eye contact with Jin.", "")
hss.dlg(co,"AIDEN","I owe you one.")
hss.evt(co,"Jin nods.", "")
hss.dlg(co,"JIN","I'll hold you to it.")
if (hss.isCharacterAdmitted("PENELOPE")) then
hss.evt(co,"Suddenly, Penelope appears at your side!", "")
hss.dlgA(co,hss.U,"Oh! Hey, Penelope. Thanks for all your help back there.",4)
hss.dlgA(co,"PENELOPE","I don't know that I was much help...",2)
hss.dlg(co,hss.U,"Nonsense! Without you, Jin never would've reached Aiden in time. You kept him in sight.")
hss.dlg(co,"PENELOPE","I... I did, didn't I?")
hss.evt(co,"Penelope grins at you. A fierce look of concentration crosses her face, and she musters all her strength to give you a hug.", "")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward2") == nil then
hss.setQuestProperty("reward2",1)
hss.dlgA(co,"PENELOPE","Thanks, {YOU}.",0,hss.REWARD_RINGS,10)
else
hss.dlgA(co,"PENELOPE","Thanks, {YOU}.",0)
end
end
if (hss.isCharacterAdmitted("SCARLET")) then
hss.evt(co,"You find Scarlet in the aftermath...", "")
hss.dlg(co,hss.U,"Thanks for saving the day, Scarlet.")
hss.evt(co,"She gives you a little salute.", "")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward3") == nil then
hss.setQuestProperty("reward3",1)
hss.dlgA(co,"SCARLET","That's what I'm here for.",0,hss.REWARD_RINGS,25)
else
hss.dlgA(co,"SCARLET","That's what I'm here for.",0)
end
end
if (hss.isCharacterAdmitted("STEEL")) then
hss.evt(co,"Later, you bump into Steel...", "")
hss.dlg(co,hss.U,"Oh, there you are. I wanted to make sure I thanked you for saving Aiden!")
hss.dlgA(co,"STEEL","No problemo! I've never run on water before... it was fun!",1)
hss.dlg(co,"STEEL","I'm glad you found me. I've been meaning to give you this...")
hss.evt(co,"Steel hands you a set of grappling hooks.", "")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward4") == nil then
hss.setQuestProperty("reward4",1)
hss.dlgA(co,hss.U,"Wow, thanks! These are awesome!",4,hss.REWARD_RINGS,25)
else
hss.dlgA(co,hss.U,"Wow, thanks! These are awesome!",4)
end
hss.dlgA(co,"STEEL","Only the best for my crime-fighting partner!",1)
end
hss.showQuestComplete(co)
hss.evt(co,"After making sure that everyone is okay, Aria calls for the crowd's attention.", "")
hss.dlgA(co,"ARIA","I know that was super scary, but our guest is doing awesome, thanks to some quick thinking and bravery!",2)
hss.dlg(co,"ARIA","And now...")
hss.dlgA(co,"ARIA","It's time to party! Hit it, DJ!",5)
end
function outro_premium_0078_cruise_8(co)
local guys = 0;
local girls = 0;
hss.evt(co,"Multi-colored strobe lights pulse as the DJ starts spinning.", "")
hss.dlgA(co,"ARIA","Let's dance!",8)
hss.evt(co,"As you follow your friends out onto the dance floor, you spot the person you want to spend the rest of the night with the most...", "")
local choice = hss.showTextMenu(co, "Who do you want to dance with?", "A guy!|A girl!");
if (choice == 0) then
local guys = hss.showTextMenu(co, "Which guy do you pick?", "Ethan!|Crash!|Chris Winters!|Professor Hunt!");
if (guys == 0) then
hss.evt(co,"You pull Ethan into your arms and start dancing...", "")
hss.dlgA(co,hss.U,"I was hoping I'd get some alone time with you tonight...",1)
hss.dlg(co,hss.E,"All you had to do was ask.")
hss.evt(co,"The DJ transitions into a slow song, and Ethan pulls you closer. You rest your head on his shoulder...", "")
hss.dlg(co,hss.U,"You were one of the first people I met in Hollywood. I don't know what I'd do without you...")
hss.dlg(co,hss.E,"I do. You'd still be well on your way to being a star, {YOU}.")
hss.evt(co,"Ethan grins at you.", "")
hss.dlgA(co,hss.E,"Why do you think I wanted to be your agent so badly?",1)
hss.dlgA(co,hss.U,"And here I thought you wanted to get close to me...",1)
hss.dlgA(co,hss.E,"Hey, two birds, one stone.",7)
hss.evt(co,"You laugh, and Ethan joins you. You can't help but feel happy and safe in his arms. You lean closer and...", "")
elseif (guys == 1) then
hss.evt(co,"You pull Crash into your arms and start dancing...", "")
hss.dlgA(co,hss.U,"I was hoping I'd get some alone time with you. Where've you been all night?",1)
hss.dlgA(co,hss.CR,"The zip line, then the climbing wall, then water slides. Dude, this ship is ~sick.~",1)
hss.dlgA(co,hss.U,"I'm glad you had fun.",1)
hss.evt(co,"The DJ transitions into a slow song, and Crash pulls you a little closer.", "")
hss.dlgA(co,hss.CR,"I'm having ~more~ fun now.",1)
hss.dlgA(co,hss.U,"Crash... are you ~flirting~ with me?",1)
hss.dlgA(co,hss.CR,"What? I, uh...",4)
hss.dlgA(co,hss.U,"'Cause if you are, it's definitely working.",1)
hss.dlg(co,hss.CR,"Oh, thank goodness!")
hss.evt(co,"You laugh, and Crash joins you. You can't help but feel happy and safe in his arms. You lean closer and...", "")
elseif (guys == 2) then
hss.evt(co,"You pull Chris into your arms and start dancing...", "")
hss.dlgA(co,hss.U,"I was hoping I'd get some alone time with you tonight...",1)
if hss.tutorialIsQuestFinished("date_0034_wedding_6") then --married
hss.dlgA(co,hss.C,"All you had to do was ask. We ~are~ married now, you know.",1)
hss.dlgA(co,hss.U,"Oh, trust me, I know.",1)
else
hss.dlgA(co,hss.C,"All you had to do was ask.",1)
end
hss.evt(co,"The DJ transitions into a slow song, and Chris pulls you closer. You rest your head on his shoulder...", "")
hss.dlg(co,hss.U,"I wish every night ended with slow dancing in your arms.")
hss.dlgA(co,hss.C,"I can't guarantee ~every~ night, but I'll do my best.",1)
hss.evt(co,"You smile up at Chris, touched by his sweetness. You can't help but feel happy and safe in his arms. You lean closer and...", "")
else
hss.evt(co,"You pull Hunt into your arms and start dancing...", "")
hss.dlgA(co,hss.U,"I didn't expect ~you~ to be on Aria's cruise!",1)
hss.dlg(co,"THOMAS","Professors have to network just like everyone else in this town, {YOU}.")
hss.dlgA(co,hss.U,"Well, I'm glad you're here, 'cause that means I get some alone time with you.",1)
hss.dlg(co,"THOMAS","You ~would~ think that.")
hss.dlg(co,hss.U,"Hey, what's that supposed to mean?")
hss.dlg(co,"THOMAS","Just that when you want something, you have a rather single-minded approach until you get it.")
hss.dlgA(co,hss.U,"I'll take that as a compliment!",1)
hss.dlg(co,"THOMAS","You always do...")
hss.evt(co,"The DJ transitions into a slow song, and Hunt pulls you a little closer...", "")
hss.dlg(co,hss.U,"Well? Aren't ~you~ glad to get some alone time with me too?")
hss.dlg(co,"THOMAS","Despite my better judgement? I must admit... yes, I am.")
hss.dlgA(co,hss.U,"I knew it!",1)
hss.evt(co,"You grin up at Hunt, and the corner of his mouth curls into a half-smile. You can't help but feel happy and safe in his arms. You lean closer and...", "")
end
local kissGuy = hss.showTextMenu(co, "What do you do?", "Kiss him!|Hug him!");
if (kissGuy == 0) then
hss.evt(co,"You kiss him passionately, throwing your arms around his neck.", "")
hss.evt(co,"He holds you in his embrace, and you never want him to let go...", "")
else
hss.evt(co,"You wrap your arms around him, and he pulls you tighter into his embrace. You never want him to let go...", "")
end
else
local girls = hss.showTextMenu(co, "Which girl do you pick?", "Addison!|Aria!|Lisa!|Victoria!");
if (girls == 0) then
hss.evt(co,"You pull Addison into your arms and start dancing...", "")
hss.dlgA(co,hss.U,"I was hoping I'd get some alone time with you tonight...",1)
hss.dlgA(co,hss.A,"All you had to do was ask.",1)
hss.evt(co,"The DJ transitions into a slow song, and Addison holds you closer.", "")
hss.dlg(co,hss.U,"You know, you were the first person I met in Hollywood. I don't know what I'd do without you...")
hss.dlgA(co,hss.A,"I do. You'd still be well on your way to being a star, {YOU}.",1)
hss.evt(co,"Addison grins at you.", "")
hss.dlgA(co,hss.A,"You're amazing, {YOU}, and I'm so lucky I get to be a part of your life.",1)
hss.dlg(co,hss.U,"Not just ~a~ part, Addi. A very important part.")
hss.evt(co,"You smile at Addison, and you can't help but feel happy in her arms. You lean closer and...", "")
elseif (girls == 1) then
hss.evt(co,"You pull Aria into your arms and start dancing...", "")
hss.dlgA(co,hss.U,"I was hoping I'd get some alone time with you tonight...",1)
hss.dlgA(co,"ARIA","Then all you had to do was ask, silly!",1)
hss.dlg(co,"ARIA","But I gotta admit, I was hoping for some alone time with you too. That's like, one of the main reasons I invited you!")
hss.evt(co,"Aria winks at you, and you laugh. The DJ transitions into a slow song, and Aria holds you closer.", "")
hss.dlgA(co,"ARIA","I know I throw a-~mazing~ parties, but I have to say... being here with you, this is my favorite part of tonight.",1)
hss.dlgA(co,hss.U,"Me too...",1)
hss.evt(co,"You smile at Aria, and she smiles back. You can't help but feel happy in her arms. You lean closer and...", "")
elseif (girls == 2) then
hss.evt(co,"You pull Lisa into your arms and start dancing...", "")
hss.dlgA(co,hss.U,"I was hoping I'd get some alone time with you tonight...",1)
hss.dlg(co,"LISA","Then why didn't you just ask?")
hss.dlgA(co,hss.U,"I'm asking now.",1)
hss.evt(co,"The DJ transitions into a slow song, and Lisa holds you closer.", "")
hss.dlg(co,hss.U,"You know, you were the one of the first people I met in Hollywood. I don't know what I'd do without you...")
hss.dlg(co,"LISA","Are you gettin' all sappy on me now?")
hss.dlgA(co,hss.U,"I can't help it! Nights like this... they make you reflect, you know?",1)
hss.dlgA(co,"LISA","Yeah, I get it. And I don't know what I'd do without ~you.~ You helped me stand up to my mom, helped me be ~me.~",1)
hss.dlgA(co,"LISA","I can never thank you enough for that.",1)
hss.dlgA(co,hss.U,"You don't have to. It was my pleasure.",1)
hss.evt(co,"You smile at Lisa, and she grins back. You can't help but feel happy in her arms. You lean closer and...", "")
else
hss.evt(co,"You pull Victoria into your arms and start dancing...", "")
hss.dlgA(co,hss.U,"I was hoping I'd get some alone time with you tonight...",1)
hss.dlgA(co,"VICTORIA","Of course you were.",1)
hss.dlg(co,hss.U,"And...? Weren't you hoping to get some alone time with me too?")
hss.dlgA(co,"VICTORIA","Perhaps... but you know I'm not the type of woman who exposes my hand so easily.",1)
hss.dlgA(co,hss.U,"Fair enough.",1)
hss.evt(co,"The DJ transitions into a slow song, and you pull Victoria a little closer...", "")
hss.dlg(co,hss.U,"Did you manage to stave off the boredom tonight?")
hss.dlg(co,"VICTORIA","Barely. But things are looking up now.")
hss.dlgA(co,hss.U,"Oh, and why is that?",1)
hss.dlg(co,"VICTORIA","Are you going to make me say it?")
hss.dlgA(co,hss.U,"Absolutely.",1)
hss.dlg(co,"VICTORIA","Well, I happen to think this DJ is doing a very nice job and--")
hss.dlgA(co,hss.U,"Hey!",1)
hss.dlg(co,"VICTORIA","{YOU}, you know why. I find myself enjoying our time together... perhaps more than I should.")
hss.dlgA(co,hss.U,"Me too...",1)
hss.evt(co,"You smile at Victoria, and she smirks. You can't help but feel happy in her arms. You lean closer and...", "")
end
local kissGirl = hss.showTextMenu(co, "What do you do?", "Kiss her!|Hug her!");
if (kissGirl == 0) then
hss.evt(co,"You kiss her passionately, wrapping your arms around her waist.", "")
hss.evt(co,"She holds you in her embrace, and you never want her to let go...", "")
else
hss.evt(co,"You wrap your arms around her, and she pulls you tighter into her embrace. You never want her to let go...", "")
end
end
hss.showQuestComplete(co)
hss.evt(co,"You and your friends continue to dance together long into the night! Suddenly, you hear an explosion high above you!", "")
hss.dlgA(co,hss.U,"What was that?",4)
hss.dlgA(co,"ARIA","Fireworks!",5)
hss.evt(co,"Everyone stops to watch the bright lights shower down over the ocean...", "")
hss.dlgA(co,hss.U,"They're beautiful...",1)
hss.evt(co,"You make your way over to Aria, sidling up to her along the deck's railing.", "")
hss.dlgA(co,hss.U,"This cruise was ~amazing,~ Aria. You definitely outdid yourself this time.",1)
hss.dlgA(co,"ARIA","Thanks, {YOU}! I'm just glad that I got to spend time with all my besties!",1)
hss.dlgA(co,"ARIA","~Especially~ you.",1)
if (hss.isCharacterAdmitted("ARIA")) then
hss.dlgA(co,"ARIA","Oh, I almost forgot! Your party favor...",1)
hss.evt(co,"Aria hands you a gift bag.", "")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward0") == nil then
hss.setQuestProperty("reward0",1)
hss.dlgA(co,hss.U,"Aw, Aria! You're so sweet.",1,hss.REWARD_RINGS,25)
else
hss.dlgA(co,hss.U,"Aw, Aria! You're so sweet.",1)
end
hss.evt(co,"You pull Aria in for a hug.", "")
end
hss.evt(co,"~Thank you for playing this very special A-Lister quest! Keep your eye out for more scenes with your favorite characters!~", "")
end
local sceneTable = {}
sceneTable["inter_preview"] = inter_preview
sceneTable["outro_premium_0078_cruise_1"] = outro_premium_0078_cruise_1
sceneTable["intro_premium_0078_cruise_2"] = intro_premium_0078_cruise_2
sceneTable["outro_premium_0078_cruise_2"] = outro_premium_0078_cruise_2
sceneTable["outro_premium_0078_cruise_3"] = outro_premium_0078_cruise_3
sceneTable["intro_premium_0078_cruise_4"] = intro_premium_0078_cruise_4
sceneTable["outro_premium_0078_cruise_4"] = outro_premium_0078_cruise_4
sceneTable["intro_premium_0078_cruise_5"] = intro_premium_0078_cruise_5
sceneTable["outro_premium_0078_cruise_5"] = outro_premium_0078_cruise_5
sceneTable["intro_premium_0078_cruise_6"] = intro_premium_0078_cruise_6
sceneTable["outro_premium_0078_cruise_6"] = outro_premium_0078_cruise_6
sceneTable["intro_premium_0078_cruise_7"] = intro_premium_0078_cruise_7
sceneTable["outro_premium_0078_cruise_7"] = outro_premium_0078_cruise_7
sceneTable["outro_premium_0078_cruise_8"] = outro_premium_0078_cruise_8
hss.runScene(sceneTable)
