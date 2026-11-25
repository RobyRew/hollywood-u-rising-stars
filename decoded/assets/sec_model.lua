require "hss"
-- HWU sec_model "Role Models"
function outro_sec_model_1(co)
hss.evt(co,"{CONNECTED_CHARACTER_NAME} glides over to you in class, looking as regal and glamorous as ever.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","I can't tell you how thrilled I am for the chance to collaborate with you, {YOU}.",1)
hss.dlg(co,"{CONNECTED_CHARACTER}","I've seen some of your past work, and... it's simply perfection!")
hss.dlgA(co,hss.U,"I wouldn't go that far... but thanks.",4)
hss.dlg(co,hss.U,"Fair warning though. I'm a ~little~ out of my depth for this part of class.")
if (hss.getCharacterType("YOU") == hss.CharacterType.FASHIONISTA) then
hss.dlg(co,hss.U,"I've worked with plenty of models, but haven't seen all that much of how the other half lives. So I might need some of your wisdom.")
else
hss.dlg(co,hss.U,"I haven't done too many modeling projects, so I might need some of your wisdom here.")
end
hss.dlgA(co,"{CONNECTED_CHARACTER}","Whatever you need from me, all you gotta do is ask! Your wish is my command!",1)
hss.showQuestComplete(co)
hss.evt(co,"Suddenly the lights go down in the theater, and Professor Hunt steps on stage.", "")
hss.dlg(co,"THOMAS","Modeling is adaptation.")
hss.dlg(co,"THOMAS","Whatever the product, whatever the campaign, a model changes themselves to fit the needs of their client... to make themselves, and the product they offer, ~irresistible.~")
hss.dlg(co,"THOMAS","You must do the same in every pitch meeting or audition you ever have.")
hss.dlg(co,"{CONNECTED_CHARACTER}","Isn't he just ~perfect~, {YOU}? Have you ever seen some of his old underwear modeling campaigns? Flawless.")
hss.dlgA(co,hss.U,"Professor Hunt used to model underwear? Great, now I can't get that image out of my head.",4)
hss.dlg(co,"THOMAS","For your first, no doubt pitiful attempt at Hollywood modeling, you'll be posing for a fragrance company.")
hss.dlgA(co,"THOMAS","But all the perfume in the world won't save you if your work stinks. Now go meet your photographers!",3)
end
function intro_sec_model_2(co)
hss.evt(co,"You and {CONNECTED_CHARACTER_NAME} arrive at Stellar Photo Studio in Santa Monica, where {QUEST_CHAR_1_NAME} and {QUEST_CHAR_2_NAME} are waiting for you...", "")
hss.dlgA(co,hss.Q1,"Looking hot, you two! As always, of course!",1)
hss.dlgA(co,hss.Q2,"Hey, {CONNECTED_CHARACTER_NAME}! Before we get into the fragrance spread, let's show {YOU} the ropes with a few test shots...",1)
hss.dlg(co,"{CONNECTED_CHARACTER}","Good idea! First, {YOU}, you'll need the most fundamental move in a model's playbook...")
if (hss.getCharacterGender("_MODEL_") == hss.Gender.MALE) then
hss.evt(co,"{CONNECTED_CHARACTER_NAME} gazes seductively at {QUEST_CHAR_1_NAME}'s camera, tilting his head at the most flattering angle.", "")
else
hss.evt(co,"{CONNECTED_CHARACTER_NAME} gazes seductively at {QUEST_CHAR_1_NAME}'s camera, tilting her head at the most flattering angle.", "")
end
hss.dlgA(co,hss.U,"Wow... you look so confident! But I can't even tell what you were doing!",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Just a little thing called ~smizing!~",1)
hss.dlgA(co,hss.U,"Is that like twerking?",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","It's short for 'smiling with your eyes.' It makes you look alluring and inviting... in short, pretty damn sexy! Your turn!",1)
hss.evt(co,"You step in front of the umbrella reflectors and pose. As {QUEST_CHAR_2_NAME} snaps a few shots, you smile with your...", "")
local choice = hss.showTextMenu(co, "What do you smile with?", "Eyes!|Mouth!|Nostrils!", true, 4);
if (choice == 0) then
hss.dlg(co,hss.U,"...")
hss.dlgA(co,"{CONNECTED_CHARACTER}","That's it! Perfect smize, {YOU}!",1,hss.REWARD_COINS,10)
elseif (choice == 1) then
hss.dlgA(co,hss.U,"...",1)
hss.dlgA(co,hss.U,"Whoops, I smiled normally!",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","No worries, {YOU}. You have a beautiful regular smile too!",1)
elseif (choice == 2) then
hss.evt(co,"You flare your nostrils!", "")
hss.dlgA(co,hss.U,"...",3)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Whoa! That was less a smize, more a... smostril?",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","But even that look could work for certain clients, {YOU}...",1)
else
hss.evt(co,"Freezing up, you blink as the flashbulbs go off! The image comes out with your eyes closed.", "")
hss.dlgA(co,hss.U,"That... wasn't my best look.",2)
hss.dlg(co,"{CONNECTED_CHARACTER}","Less smizing than snoozing. But even that look could work for certain clients, {YOU}...")
end
hss.dlg(co,"{CONNECTED_CHARACTER}","All that matters is picking the right look to use for each campaign!")
hss.dlg(co,"{CONNECTED_CHARACTER}","For instance, this shoot is for a fragrance company, so let's see what kind of scents we're modeling for...")
end
function outro_sec_model_2(co)
hss.dlg(co,hss.U,"So what exactly are we here to look good for, {QUEST_CHAR_1_NAME}?")
hss.dlg(co,hss.Q1,"You get your choice of three brand-new fragrances from Bagheera.")
hss.dlgA(co,hss.Q2,"There's ~Forbidden Love~... ~For Your Eyes Only~... and ~Maniac.~ Which one do you want to model for?",1)
hss.dlg(co,hss.U,"Hmm. Let's go with...")
local choice = hss.showTextMenu(co, "What fragrance do you pick?", "Forbidden Love!|For Your Eyes Only!|Maniac!");
if (choice == 0) then
hss.evt(co,"You and {CONNECTED_CHARACTER_NAME} step in front of the cameras as {QUEST_CHAR_2_NAME} spritzes you lightly with Forbidden Love!", "")
hss.dlgA(co,hss.U,"This smells pretty tempting! I feel like I'm doing something I shouldn't be... but it's so hot!",4)
elseif (choice == 1) then
hss.evt(co,"You and {CONNECTED_CHARACTER_NAME} step in front of the cameras as {QUEST_CHAR_2_NAME} spritzes you lightly with For Your Eyes Only!", "")
hss.dlgA(co,hss.U,"This smells so classy! Yet there's something dangerous about it... like I'm a secret agent!",4)
else
hss.evt(co,"You and {CONNECTED_CHARACTER_NAME} step in front of the cameras as {QUEST_CHAR_2_NAME} spritzes you lightly with Maniac!", "")
hss.dlgA(co,hss.U,"This fragrance is intense! It's so in-your-face!",4)
end
hss.dlg(co,"{CONNECTED_CHARACTER}","Just remember what I said, {YOU}. Adapt yourself to the campaign! Try it. I'll follow your lead.")
hss.evt(co,"As {QUEST_CHAR_1_NAME} and {QUEST_CHAR_2_NAME} start snapping, you try to look...", "")
local pose = hss.showTextMenu(co, "Which look do you pick?", "Seductive!|Daring!|Psychotic!", true);
if (pose == 0) then
hss.evt(co,"You gaze longingly at the camera, beckoning it with your eyes, as {CONNECTED_CHARACTER_NAME} pulls close, tugging at your collar...", "")
elseif (pose == 1) then
hss.evt(co,"You strike a brave, defiant pose while {CONNECTED_CHARACTER_NAME} takes on a classy, elegant look!", "")
else
hss.evt(co,"You muss your hair and stare wild-eyed into the camera while {CONNECTED_CHARACTER_NAME} snarls fiercely!", "")
end
if (pose == choice) then
hss.dlgA(co,hss.Q1,"Wow! Now ~that~ is crazy sexy!",1,hss.REWARD_COINS,10)
hss.dlgA(co,hss.Q2,"Too hot! You trying to melt my camera lens?",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","{YOU}! You were perfect! A natural!",1)
else
hss.dlgA(co,hss.Q1,"Uh... {QUEST_CHAR_2_NAME}? What are they doing?",2)
hss.dlgA(co,hss.Q2,"I... I don't know.",2)
hss.dlgA(co,"{CONNECTED_CHARACTER}","{YOU}, I'm not sure that look works for the fragrance we chose. We need to adapt to embody the product.",2)
hss.dlgA(co,hss.U,"Sorry...",2)
hss.dlgA(co,"{CONNECTED_CHARACTER}","No worries! I know you'll be perfect next time!",1)
end
hss.showQuestComplete(co)
hss.evt(co,"Back in class, Professor Hunt reviews everyone's photos. Soon, he comes to you, hardly looking at your pictures.", "")
hss.dlgA(co,"THOMAS","Step it up, {YOU}. I know Toddlers in Tiaras that model better than this.",3)
hss.dlgA(co,hss.U,"...",3)
hss.dlg(co,"THOMAS","But {CONNECTED_CHARACTER_NAME}... in these, you look practiced, refined, polished...")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Thank you, Professor--",1)
hss.dlgA(co,"THOMAS","And I've seen ~ten thousand~ models exactly like you. You'll have to do ~much~ better than this if you want to stand out.",3)
hss.dlg(co,"{CONNECTED_CHARACTER}","You're completely right, Professor. Thank you. I aspire to one day have your refined eye for aesthetics.")
hss.dlgA(co,"THOMAS","I... uh... I do have a refined eye, don't I...",4)
hss.dlg(co,"THOMAS","It seems, on second glance, your photos were acceptable.")
hss.dlgA(co,"THOMAS","Now where was I? Oh right, surrounded by incompetent newbies. Next, you'll be pitching yourselves to star in a luxury car brand's new TV campaign. Get on with it!",3)
hss.evt(co,"As the class hurries off to prepare, you whisper to {CONNECTED_CHARACTER_NAME}...", "")
choice = hss.showTextMenu(co, "What do you say?", "Just 'acceptable'? Wow, what a tool.|Are you always such a suck-up?");
if (choice == 0) then
hss.dlgA(co,hss.U,"Your shots were amazing. You shouldn't bow to him like that, {CONNECTED_CHARACTER_NAME}...",3)
hss.dlgA(co,"{CONNECTED_CHARACTER}","But didn't you see how he changed once I did?",1)
else
hss.dlg(co,"{CONNECTED_CHARACTER}","It's not sucking up, {YOU}. It's modeling.")
hss.dlgA(co,hss.U,"How exactly do you figure that?",3)
end
hss.dlgA(co,"{CONNECTED_CHARACTER}","Modeling's all about identifying what someone wants and then giving them exactly that, both on camera and off.",1)
hss.dlg(co,"{CONNECTED_CHARACTER}","And we'll need to do just that to land this commercial! You'll see...")
end
function intro_sec_model_3(co)
hss.evt(co,"You and {CONNECTED_CHARACTER_NAME} approach Portside Bistro in Century City, where Hunt has arranged a lunch meeting with several executives.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Just like the artistic side of modeling, the business side is all about presenting yourself the right way.",1)
hss.dlg(co,"{CONNECTED_CHARACTER}","You become whatever they want you to be. Your posture, your attitude... the interview is practically a gig itself!")
hss.dlgA(co,hss.U,"Okay, so what do I do? Should I smize?",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","A.B.S. Always Be Smizing.",1)
hss.evt(co,"As you walk up to the outdoor tables, you notice the line of gleaming luxury cars parked by the curb.", "")
hss.dlgA(co,hss.U,"Wow! These must be the cars we're modeling for, {CONNECTED_CHARACTER_NAME}!",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","They're simply perfection! They've got to be worth a half-million each!",1)
hss.dlg(co,"THOMAS","More.")
hss.evt(co,"You turn around to find Professor Hunt!", "")
hss.dlgA(co,"THOMAS","Follow me. The Board of Directors is waiting for you. ~Don't~ waste their time.",3)
end
function outro_sec_model_3(co)
hss.evt(co,"Hunt leads you and {CONNECTED_CHARACTER_NAME} through the outdoor seating area, crowded with L.A.'s elite ringing up thousand-dollar tabs...", "")
hss.evt(co,"At one table, the executives of Giorgetti Motorsport are enjoying a fine wine. They welcome you cordially as you take your seats.", "")
hss.dlg(co,"THOMAS","The board has explained that they want their cars to rank among the world's most luxurious brands.")
hss.dlg(co,"THOMAS","But where the competition trades on an image of posh elitism, they're looking for more of an ~accessible, effortless sophistication.~")
hss.evt(co,"A waiter materializes and begins taking lunch orders. At last, he comes to you.", "")
hss.dlg(co,hss.U,"I'll have the...")
local choice = hss.showTextMenu(co, "What do you say?", "Chili cheese nachos.|Pasta all'arrabbiata.|Kale-wrapped escargot.", true);
if (choice == 0) then
hss.evt(co,"Soon, your meal arrives, a nacho house of cards stacked high with chili, guac, and jalapenos.", "")
hss.dlgA(co,hss.U,"Om nom nom!",1)
hss.evt(co,"The executives raise their eyebrows as you dig into the monstrosity before you. {CONNECTED_CHARACTER_NAME} whispers...", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Um, {YOU}? I'm not sure bar food gives the image they're going for.",2)
hss.dlgA(co,hss.U,"No regrets.",1)
elseif (choice == 1) then
hss.evt(co,"Soon, your meal arrives, an understated, classy pasta dish, garnished tastefully. The executives nod thoughtfully as {CONNECTED_CHARACTER_NAME} whispers...", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Good call, {YOU}. That's definitely the balance of sophisticated and accessible they're going for!",1)
hss.dlgA(co,hss.U,"It also tastes delicious, so double good call on my part!",1,hss.REWARD_COINS,20)
else
hss.evt(co,"Soon, your meal arrives, a minuscule dish ostentatiously presented. The executives raise an eyebrow at your selection.", "")
hss.evt(co,"{CONNECTED_CHARACTER_NAME} whispers while politely cutting into their lemon vinaigrette asparagus...", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","You... you like eating snails?",2)
hss.dlgA(co,hss.U,"I wanted to look sophisticated!",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","To be honest, it just kinda makes you look pretentious.",2)
hss.evt(co,"You look down at the slimy snails in their shells... gulp... and take a bite.", "")
hss.dlgA(co,hss.U,"~Hngg...~ definitely not nailing the 'effortless' part either.",2)
end
hss.showQuestComplete(co)
hss.evt(co,"After lunch, you and {CONNECTED_CHARACTER_NAME} thank the executives and take your leave. A few moments later, Hunt follows you.", "")
hss.dlg(co,"THOMAS","Seems you two aren't eternally unemployable. You've got the job.")
hss.dlgA(co,hss.U,"Wait, we did?",4)
local reaction = hss.showTextMenu(co, "What do you say?", "Thank you for arranging this, Professor.|BOOM! In your face, Tommy Boy!");
if (reaction == 0) then
if (choice == 1) then
hss.dlg(co,"THOMAS","Thank ~you~ for not embarrassing me, {YOU}. I had expected you to flounder and fail, but you both knew your audience and presented the correct attitude.")
hss.dlg(co,"THOMAS","In any case, congratulations. Don't make me regret saying that.")
else
hss.dlgA(co,"THOMAS","You ~should~ be thanking your partner.",3)
hss.dlgA(co,"THOMAS","{CONNECTED_CHARACTER_NAME} presented the precise look the board wanted, while you... had them at a loss for words.",3)
hss.dlgA(co,hss.U,"In a good way?",2)
end
else
hss.dlgA(co,hss.U,"Who's the boss? I'm the boss!",8)
if (choice == 1) then
hss.dlgA(co,"THOMAS","Fortunately, you displayed more grace and dignity at lunch than you're usually capable of.",3)
hss.dlgA(co,"THOMAS","In any case, congratulations. Don't make me regret saying that.",3)
else
hss.dlgA(co,"THOMAS","No, ~you're~ the one who nearly cost their partner a high-profile gig.",3)
hss.dlgA(co,"THOMAS","{CONNECTED_CHARACTER_NAME} presented the precise look the board wanted, while you... had them at a loss for words.",3)
hss.dlgA(co,hss.U,"In a good way?",2)
end
end
hss.evt(co,"As Hunt heads back to the bistro...", "")
hss.dlg(co,hss.U,"Wow, {CONNECTED_CHARACTER_NAME}. you were totally right. Transformation is ~everything~ in the modeling world.")
hss.dlg(co,"{CONNECTED_CHARACTER}","Sure is... and we'll need more than just our attitude to transform for this commercial shoot!")
end
function intro_sec_model_4(co)
hss.evt(co,"At the TV commercial shoot, you and {CONNECTED_CHARACTER_NAME} sit for makeup with {QUEST_CHAR_1_NAME}...", "")
hss.dlgA(co,hss.U,"I have to say, {QUEST_CHAR_1_NAME}, you make us look ~good!~",1)
hss.dlgA(co,hss.Q1,"That's what I'm here for!",1)
hss.dlg(co,hss.Q1,"Now, {CONNECTED_CHARACTER_NAME}, looks like you already applied some concealer over this birthmark on your neck. Want me to add another layer?")
hss.evt(co,"{CONNECTED_CHARACTER_NAME} flushes red.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Um, huh? You... you can still see it? Then, um... yes, please.",4)
hss.evt(co,"Just then, {QUEST_CHAR_2_NAME} hurries into the makeup trailer.", "")
hss.dlg(co,hss.Q2,"All right, people, let's get this done quick, quick, quick!")
end
function outro_sec_model_4(co)
hss.dlgA(co,hss.Q2,"Everyone remember their lines? Of course you don't! I have to take care of everything!",3)
hss.dlg(co,hss.Q2,"{YOU} says, 'It's not luxury. It's freedom.' Then {CONNECTED_CHARACTER_NAME} goes, 'Giorgetti or nothing.' Got it? Got it.")
hss.dlgA(co,hss.Q2,"Now let's go, go, go!",4)
hss.evt(co,"On a closed-off L.A. street, you hop behind the wheel of a brand-new Giorgetti Firebrand, with {CONNECTED_CHARACTER_NAME} sitting shotgun.", "")
hss.dlgA(co,hss.U,"I have ~got~ to get me one of these!",1)
hss.dlgA(co,hss.Q2,"Action!",1)
hss.evt(co,"The engine purring, you cruise down the empty street, as the camera rig truck speeds along beside you.", "")
hss.evt(co,"You brake to a stop, smize into the lens, and say...", "")
local choice = hss.showTextMenu(co, "What do you say?", "Giorgetti... or nothing.|It's not luxury. It's freedom.", false, 4);
if (choice == 1) then
hss.dlg(co,hss.U,"It's not luxury. It's freedom.")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Giorgetti... or nothing.",0,hss.REWARD_COINS,20)
hss.dlgA(co,hss.Q2,"Done in one take! Now let my producers try to tell me I'm always over-budget!",1)
hss.dlgA(co,hss.U,"We nailed it! Think they'll let us keep the car, {CONNECTED_CHARACTER_NAME}?",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","No, but if you keep up the great work, soon you'll be able to afford one yourself!",1)
else
if (choice == 0) then
hss.dlg(co,hss.U,"Giorgetti... or nothing.")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Uh... also, Giorgetti or nothing?",4)
hss.dlgA(co,hss.Q2,"Cut, cut! {YOU}, quit stealing {CONNECTED_CHARACTER_NAME}'s line! From the top!",3)
else
hss.evt(co,"You panic, staring blankly into the camera.", "")
hss.dlgA(co,hss.U,"Um... line?",2)
hss.dlgA(co,hss.Q2,"Cut, cut! {YOU}, it's like five words! Come on! From the top!",3)
end
hss.evt(co,"After a few more takes, you finally get the line right.", "")
hss.dlgA(co,hss.U,"Well, that didn't go great. I'm guessing they're not going to let me keep the car, huh...",2)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Not likely, no.",2)
end
hss.showQuestComplete(co)
hss.evt(co,"Later, Professor Hunt gathers you outside a hair salon on Sunset Boulevard.", "")
hss.dlg(co,"THOMAS","You've modeled for print and video, but now you face the ultimate modeling test: the runway.")
hss.dlg(co,"THOMAS","You will be judged by the executives of Orion, the formal wear company, and the winner gets their major billboard campaign. Specifically, that one.")
hss.evt(co,"Hunt points to a mammoth billboard gleaming high above the boulevard, currently an ad for Chris Winters' upcoming ~'Fireman: Inferno'~.", "")
hss.dlg(co,"THOMAS","You'll want to look presentable. This is the best salon in Beverly Hills, so maybe, just maybe, you won't look quite as slovenly when they're done with you.")
hss.dlgA(co,"{CONNECTED_CHARACTER}","This could be our big break, {YOU}! We need to craft the ~perfect~ look for this campaign!",1)
hss.dlg(co,hss.U,"Okay, so what's Orion all about? What are they looking for?")
hss.dlg(co,"{CONNECTED_CHARACTER}","Their slogan is 'Be the life of the party,' so we'll need a hairstyle to match! Help me pick one out?")
end
function outro_sec_model_5(co)
hss.dlgA(co,"{CONNECTED_CHARACTER}","You look ravishing! I know you're a newcomer, but you look like you were born and raised in this town!",1)
hss.dlgA(co,hss.U,"Thanks, {CONNECTED_CHARACTER_NAME}. Do you like what I picked out for you?",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","What matters is, will Orion like it? I think the answer's yes!",1)
hss.evt(co,"Hunt walks back into the salon and surveys the class.", "")
hss.dlg(co,"THOMAS","Clearly, not even the best salon in L.A. could rescue the natural disaster that is your collective appearance... alas, this will have to do.")
hss.showQuestComplete(co)
hss.evt(co,"As your class gathers backstage in the dressing room, you peek out onto the runway, where most of the student body is taking their seats.", "")
hss.evt(co,"Front and center, Hunt sits with Orion's chief designers.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","{YOU}, what are you standing around for? The show's about to start, and you've got to get changed!",4)
end
function intro_sec_model_6(co)
hss.evt(co,"A fast, throbbing beat pulses over the speakers, and the first of your classmates start to walk the runway!", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","No need to be so nervous, {YOU}. You look perfect.",1)
if (hss.getCharacterType("YOU") == hss.CharacterType.MOVIE_STAR) then
hss.dlgA(co,hss.U,"It's just, this isn't exactly my strong suit. In my line of work, I get infinite do-overs.",2)
else
hss.dlgA(co,hss.U,"It's just, this isn't exactly my strong suit. I'm usually behind the scenes.",2)
end
hss.dlg(co,"{CONNECTED_CHARACTER}","The first pointer is to relax. It's all confidence and poise. Beyond that, just put one foot in front of the other!")
hss.evt(co,"Just then, the stage manager darts into the dressing room and barks your name!", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Looks like you're on!",4)
end
function outro_sec_model_6(co)
hss.evt(co,"As the stage manager pulls you toward the runway...", "")
hss.dlgA(co,hss.U,"Here I go, {CONNECTED_CHARACTER_NAME}. Any last words of wisdom?",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Just remember to pose at the end of the runway, oh, and don't forget to turn left!",1)
hss.dlgA(co,hss.U,"Wait, how should I pose?!",4)
hss.evt(co,"It's too late! The stage manager pushes you out into the spotlights of the runway! You immediately feel the weight of hundreds of eyes fixed on you!", "")
hss.dlgA(co,hss.U,"...",4)
hss.evt(co,"You summon your courage and walk forward with confidence, camera bulbs flashing from the darkness. From beside the Orion executives, Hunt studies you closely.", "")
hss.dlg(co,"THOMAS","...")
hss.dlg(co,hss.U,"(I'm the life of the party... I'm the life of the party...)")
hss.evt(co,"You reach the end of the runway and...", "")
choice = hss.showTextMenu(co, "How do you pose?", "Smize!|Twerk!|Wink at Hunt!|Glare at Hunt!");
if (choice == 0) then
hss.evt(co,"You smize at the crowd, your eyes alluring and enticing.", "")
hss.dlg(co,hss.U,"...")
hss.evt(co,"But right in front of you, the Orion execs don't seem particularly interested.", "")
hss.dlgA(co,hss.U,"(Not very 'life of the party.' I should've done something more noticeable...)",2)
elseif (choice == 1) then
hss.evt(co,"You turn around and shake your booty at the crowd!", "")
hss.dlgA(co,hss.U,"Aw yeah! Like a Polaroid picture!",8,hss.REWARD_COINS,15)
hss.evt(co,"The Orion execs gasp at first, then start laughing and applauding! Hunt looks at you quizzically.", "")
hss.dlgA(co,"THOMAS","What the...",4)
elseif (choice == 2) then
hss.evt(co,"You put your hands on your hips and shoot a sultry wink at Professor Hunt!", "")
if (hss.getCharacterGender("YOU") == hss.Gender.MALE) then
hss.dlgA(co,hss.U,"...",7,hss.REWARD_COINS,15)
else
hss.dlgA(co,hss.U,"...",9,hss.REWARD_COINS,15)
end
hss.dlgA(co,"THOMAS","I, uh...",4)
hss.evt(co,"The Orion execs smile at your confidence, jotting down a note on their scoresheets.", "")
else
hss.evt(co,"You put your hands on your hips and shoot a death glare at Professor Hunt!", "")
hss.dlgA(co,hss.U,"...",3)
hss.evt(co,"The Orion execs look at each other, confused, as Hunt just glares right back!", "")
hss.dlgA(co,"THOMAS","...",3)
hss.dlgA(co,hss.U,"(Okay, not very 'life of the party.' Probably should've done something more playful...)",2)
end
hss.dlg(co,hss.U,"(Now, just to make it backstage without falling on my face...)")
hss.evt(co,"You break your pose and turn...", "")
choice = hss.showTextMenu(co, "Which way do you turn?", "Left!|Right!", true, 3);
if (choice == 0) then
hss.evt(co,"You expertly spin to your left and strut back down the runway! The crowd sends you off with a rain of applause!", "")
hss.dlgA(co,hss.U,"(Not bad!)",1,hss.REWARD_COINS,15)
else
hss.evt(co,"You spin to your right... only to run straight into the model following you down the runway!", "")
hss.dlgA(co,hss.U,"Oof! Sorry! It was left. I see that now.",4)
hss.evt(co,"You regain your balance and march back down the runway. The crowd stays deathly quiet, embarrassed for you.", "")
hss.dlgA(co,hss.U,"(Well, that could have gone better.)",2)
end
hss.showQuestComplete(co)
hss.evt(co,"You head back into the dressing room...", "")
hss.dlg(co,hss.U,"{CONNECTED_CHARACTER_NAME}, were you watching? That was crazy! I...")
hss.evt(co,"You pause at the sight of {CONNECTED_CHARACTER_NAME} running around the dressing room, frantically searching drawers!", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","This can't be happening! It can't be!",4)
hss.dlgA(co,hss.U,"...{CONNECTED_CHARACTER_NAME}? What's wrong?",2)
end
function outro_sec_model_7(co)
hss.dlgA(co,hss.U,"What are you looking for?",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Makeup in my complexion! We're out!",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","I smudged it when I was putting on my outfit, and now you can see the huge birthmark on my neck!",2)
hss.dlg(co,hss.U,"So what? I actually kinda like it. It makes you look unique. It's who you are.")
hss.dlgA(co,"{CONNECTED_CHARACTER}","I don't want to be me, {YOU}! I need to be what the client wants! And who wants... ~this?!~",3)
hss.dlgA(co,hss.U,"{CONNECTED_CHARACTER_NAME}... I think maybe you're underestimating your clients. They might appreciate the authentic you.",2)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Easy for you to say, {YOU}. You're ~perfect.~ You have nothing to hide.",3)
hss.dlg(co,hss.U,"Actually...")
local choice = hss.showTextMenu(co, "What do you say?", "Everyone has things they feel insecure about.|You're right. I am perfect.");
if (choice == 0) then
hss.dlg(co,hss.U,"There's tons of stuff about me that people call 'imperfections...'")
hss.dlg(co,hss.U,"But they all add up to make me ~me~. Nobody's 'perfect.' Perfect is boring! You want to be real and memorable!")
else
hss.dlgA(co,"{CONNECTED_CHARACTER}","Exactly.",3)
hss.dlg(co,hss.U,"But that doesn't change the fact that the real you is more true and relatable than whatever fake facade you put up.")
end
hss.dlg(co,hss.U,"Remember when Professor Hunt said he's seen ten thousand models with the same perfect look as you? Well, nobody's ever seen a model who looks like the real you.")
hss.dlg(co,hss.U,"You want to win this campaign, don't you? The life of the party stands out. So be different!")
hss.evt(co,"{CONNECTED_CHARACTER_NAME} stares into the vanity mirror...", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Maybe... maybe you're right.",2)
hss.showQuestComplete(co)
hss.evt(co,"{CONNECTED_CHARACTER_NAME} takes a cloth and wipes off the rest of the makeup covering the birthmark.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","It... it really stands out.",2)
hss.dlg(co,hss.U,"No. ~You~ stand out.")
hss.evt(co,"Just then, the stage manager enters and waves {CONNECTED_CHARACTER_NAME} on.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","It's my turn already?!",4)
end
function intro_sec_model_8(co)
hss.evt(co,"{CONNECTED_CHARACTER_NAME} pauses at the start of the runway and takes a deep breath.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","I don't know if I can do this, {YOU}.",2)
hss.dlgA(co,hss.U,"It's all confidence and poise, remember? Just put one foot in front of the other.",1)
hss.evt(co,"{CONNECTED_CHARACTER_NAME} smiles, takes a deep breath... and steps out onto the runway!", "")
end
function outro_sec_model_8(co)
hss.evt(co,"{CONNECTED_CHARACTER_NAME} struts down the runway with practiced confidence. Hunt and the Orion execs perk up, intrigued by {CONNECTED_CHARACTER_NAME}'s natural appearance.", "")
hss.dlg(co,"{CONNECTED_CHARACTER}","...")
hss.evt(co,"{CONNECTED_CHARACTER_NAME} reaches the end of the runway and strikes a defiant pose! The crowd hoots and cheers!", "")
hss.evt(co,"Peeking from behind the curtains, you watch {CONNECTED_CHARACTER_NAME} parade back toward the dressing room, smiling broadly to the raucous applause.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","...",1)
hss.evt(co,"Backstage, {CONNECTED_CHARACTER_NAME} squeezes you in a tight hug.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Thank you ~so~ much, {YOU}! That felt incredible!",1)
hss.dlgA(co,hss.U,"That definitely wasn't smizing. You were smiling with your whole face!",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Sometimes, you just can't help it.",1)
hss.evt(co,"After the show, Professor Hunt gets on the runway to address the crowd.", "")
hss.evt(co,"Several Hollywood U students whistle and holler at him to model and pose, but he silences it with a glare.", "")
hss.dlgA(co,"THOMAS","That's quite enough, thanks. Orion's designers have a clear winner for the billboard campaign.",3)
hss.dlg(co,"THOMAS","{CONNECTED_CHARACTER_NAME}, get back up here.")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Me?!",4)
hss.dlgA(co,hss.U,"What are you waiting for? Go!",1)
hss.dlg(co,"THOMAS","{CONNECTED_CHARACTER_NAME}, your look was fearless and unique. It stood out, and that's what Orion wants for its fashion lines. Congratulations.")
hss.showQuestComplete(co)
hss.evt(co,"A week later, you're soaking up the sun on a campus lawn when {CONNECTED_CHARACTER_NAME} pulls up in a car.", "")
hss.dlg(co,"{CONNECTED_CHARACTER}","It's not a Giorgetti roadster, but do you fancy a ride?")
hss.evt(co,"{CONNECTED_CHARACTER_NAME} drives the two of you to Sunset Boulevard. Framed against the brilliant blue sky, a colossal billboard for Orion Formal Wear dominates the view.", "")
hss.dlgA(co,hss.U,"Whoa!",4)
hss.dlg(co,"{CONNECTED_CHARACTER}","So? What do you think of the photo, {YOU}? I didn't realize my birthmark was going to be, like, fifty feet wide!")
hss.dlgA(co,hss.U,"You stand out, {CONNECTED_CHARACTER_NAME}. I think this image will stay with people. They'll remember it for a long time.",1)
hss.dlg(co,"{CONNECTED_CHARACTER}","And I'm going to remember what you did for me. Thanks for being there.")
hss.dlgA(co,hss.U,"Of course. But honestly, all that really matters is, how do ~you~ think it looks?",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","...I think it's perfect.",1)
end
hss.checkEnvironment({"YOU"})
hss.runOpt()
