--|     * button: "preview!"
function inter_preview(co)
if hss.tutorialIsQuestFinished("prim_0021_agent_6") then
hss.evt(co,"~In this quest, look back on the start of your friendship with Dean... and officially add him to your entourage!~", "")
else
hss.evt(co,"~In this quest, you'll get to know special effects master Dean Ericson and add him to your entourage!~", "")
end
if (hss.getCharacterType("YOU") == hss.CharacterType.MOVIE_STAR) then
hss.evt(co,"One Friday afternoon, you and Dean are putting the finishing touches to your latest action movie...", "")
hss.dlg(co,hss.U,"This is looking great, Dean. You always make me look good when I'm walking away from explosions in slo-mo.")
elseif (hss.getCharacterType("YOU") == hss.CharacterType.FASHIONISTA) then
hss.evt(co,"One Friday afternoon, you and Dean are putting the finishing touches to a runway video...", "")
hss.dlg(co,hss.U,"This is looking great, Dean. The fire effects are going to look awesome behind my latest collection.")
else
hss.evt(co,"One Friday afternoon, you and Dean are putting the finishing touches to your latest action movie...", "")
hss.dlg(co,hss.U,"This is looking great, Dean. You always make the explosions even better than I picture them in my mind.")
end
hss.dlg(co,"DEAN","All in a day's work.")
hss.dlgA(co,hss.U,"A good, productive day. I think we're all done here! Got any weekend plans?",1)
hss.dlg(co,"DEAN","Nothing yet. How about you?")
hss.dlgA(co,hss.U,"I'm planning to take my ~special someone~ out on an awesome date tomorrow.",1)
hss.dlg(co,hss.U,"It's been a while since our last one, so I want it to be the best day ever!")
hss.dlgA(co,"DEAN","What are you thinking? Skywriting? Lasers? ~Sky lasers?!~",4)
hss.dlgA(co,"DEAN","I don't even know what those are, but I bet they'd be mindblowing.",1)
hss.dlgA(co,hss.U,"That would all be super cool, but this kind of thing isn't exactly my forte.",4)
hss.dlg(co,"DEAN","Maybe I can help. I've got the special effects know-how to rig up your date with all sorts of flashy and exciting moments!")
hss.dlg(co,"DEAN","What do you say? Want some help planning an epic date?")
local choice = hss.showTextMenu(co, "What do you say?", "Yes, please!|Thanks, but no thanks...");
if (choice == 0) then
hss.dlgA(co,hss.U,"Work your magic, Dean! With you on my side, I bet tomorrow will blow my date's mind.",1)
hss.dlgA(co,"DEAN","I guarantee it.",1)
hss.markQuestScriptRequirementFinished()
else
hss.dlg(co,hss.U,"It's sweet of you to offer, Dean, but I'm not gonna make you waste your entire weekend planning a day for me.")
hss.dlgA(co,"DEAN","Oh, I wouldn't mind. I don't have anything else going on...",4)
hss.dlg(co,"DEAN","So just let me know if you change your mind.")
end
end
function outro_premium_0076_dean_1(co)
hss.dlg(co,"DEAN","Every epic date starts with an epic ask-out and ends with an equally epic grand finale, right?")
hss.dlg(co,hss.U,"Right. I was thinking of asking my date out with a poster of a bunch of pics from our past dates.")
hss.dlgA(co,"DEAN","Oh, that gives me an idea! Mind forwarding those pictures to me, {YOU}? I've got a plan that's sure to make your date ~light up...~",1)
hss.dlg(co,"DEAN","And send over your dinner reservation details, too. I have some ~hot~ ideas for dessert...")
hss.dlgA(co,"DEAN","And one more thing! Which of these things would you say best encapsulates your relationship with your date?",1)
hss.dlg(co,"DEAN","A heart, a rose, or... Dean's Super Epic Surprise?")
local premChoice = hss.showPremiumTextMenu(co, "What do you choose?", "A heart.|A rose.|[rings:25]Surprise me!")
if (premChoice == 0) then
hss.dlgA(co,hss.U,"My S.O. and I are all about love... nothing captures our relationship better than a classic heart!",9)
hss.setQuestProperty("finale", 0)
elseif (premChoice == 1) then
hss.dlgA(co,hss.U,"My S.O. sent me a ~huge~ bouquet of roses when we first started going out.  It was so romantic!",1)
hss.setQuestProperty("finale", 1)
else
hss.dlgA(co,hss.U,"If it's super ~and~ epic, it must be perfect for me and my date.",1)
hss.setQuestProperty("finale", 2)
end
hss.dlgA(co,"DEAN","Excellent choice. I can see everything coming together already...",1)
hss.dlg(co,hss.U,"Thanks so much, Dean. But I gotta know... why are you so excited to do this?")
hss.dlgA(co,"DEAN","I guess it ~is~ kinda weird for me to be so psyched about planning someone else's date...",4)
hss.dlg(co,"DEAN","Part of the reason is, well, you're just a cool person! I like helping you out.")
hss.dlgA(co,hss.U,"Awww, I'm flattered. What's the other part of the reason?",1)
hss.dlgA(co,"DEAN","Honestly, I'm just a huge romantic. Dates are one of the most exciting things ever, next to blowing up empty warehouses.",1)
hss.dlg(co,"DEAN","But lately, I've been too focused on my work to really go out with anyone, so I have all these unused date ideas.")
hss.dlgA(co,"DEAN","And I figure ~someone~ should benefit from them.",1)
hss.dlgA(co,hss.U,"Then I'm glad to be that someone! So... where do we start?",1)
hss.showQuestComplete(co)
hss.evt(co,"The next afternoon, you meet up with Dean near the campus library.", "")
hss.dlg(co,hss.U,"Okay, my date will be here in a few minutes.")
hss.dlgA(co,"DEAN","Perfect! Everything's in place for the big ask-out. Just take your date over to the west wall of the library, and...",1)
hss.evt(co,"Dean hands you a small earpiece that can easily be hidden from sight in your ear.", "")
hss.dlg(co,"DEAN","While you're wearing this, I'll be able to talk to you throughout the night and cue you when it's time to start your ask-out.")
hss.dlgA(co,hss.U,"I bet this is how ~spies~ date.",1)
hss.dlgA(co,"DEAN","Well, you'd better get in position, Agent {YOU}. Here comes your date!",4)
end
function intro_premium_0076_dean_2(co)
hss.evt(co,"Dean quickly ducks out of sight as {QUEST_CHAR_1_NAME} arrives, greeting you with a soft kiss on the cheek.", "")
hss.dlgA(co,hss.Q1,"Hey, {YOU}. What's up?",1)
hss.dlgA(co,hss.U,"I'm about to show you. C'mere for a sec...",1)
hss.evt(co,"You take {QUEST_CHAR_1_NAME}'s hand and head over to the west wall of the library.", "")
hss.evt(co,"Dean's voice crackles in your ear.", "")
hss.dlg(co,"DEAN","Okay, {YOU}, just a few more steps... stop right there, between the windows!")
hss.dlgA(co,"DEAN","Perfect. Get ready, {YOU}. Commence ask-out in three... two...",1)
end
function outro_premium_0076_dean_2(co)
hss.evt(co,"As you and {QUEST_CHAR_1_NAME} stand before a sheer white wall, hands intertwined, Dean counts down in your ear...", "")
hss.dlg(co,"DEAN","Three...")
local choice = hss.showTextMenu(co, "What do you do?", "Ask {QUEST_CHAR_1_NAME} out!|Wait!", true, 2);
if (choice == 0) then
hss.dlg(co,hss.U,"{QUEST_CHAR_1_NAME}, I--")
hss.evt(co,"Just then, a beam of light shoots out from the nearby trees, and a slideshow of pictures from your past dates begins playing on the wall!", "")
hss.dlgA(co,hss.U,"Whoa!",4)
hss.dlgA(co,"DEAN","You were a bit early, {YOU}, but commence ask-out now!",4)
hss.evt(co,"You quickly regain your composure and turn to {QUEST_CHAR_1_NAME} with a smile.", "")
hss.dlgA(co,hss.U,"{QUEST_CHAR_1_NAME}, we've made some amazing memories in the past...",1)
hss.dlgA(co,hss.U,"What do you say we make some more tonight?",1)
hss.dlgA(co,hss.Q1,"Let's do it. But we're gonna finish watching this light show first, right?",1)
hss.dlgA(co,hss.U,"Absolutely.",1)
hss.evt(co,"As you and {QUEST_CHAR_1_NAME} hold each other close, watching your favorite memories scroll by in bright colors, Dean says...", "")
hss.dlg(co,"DEAN","Nice recovery, {YOU}!")
else
hss.dlg(co,"DEAN","Two...")
local choice = hss.showTextMenu(co, "What do you do?", "Ask {QUEST_CHAR_1_NAME} out!|Wait!", true, 2);
if (choice == 0) then
hss.dlg(co,hss.U,"{QUEST_CHAR_1_NAME}, I--")
hss.evt(co,"Just then, a beam of light shoots out from the nearby trees, and a slideshow of pictures from your past dates begins playing on the wall!", "")
hss.dlgA(co,hss.U,"Whoa!",4)
hss.dlgA(co,"DEAN","You were a bit early, {YOU}, but commence ask-out now!",4)
hss.evt(co,"You quickly regain your composure and turn to {QUEST_CHAR_1_NAME} with a smile.", "")
hss.dlgA(co,hss.U,"{QUEST_CHAR_1_NAME}, we've made some amazing memories in the past...",1)
hss.dlgA(co,hss.U,"What do you say we make some more tonight?",1)
hss.dlgA(co,hss.Q1,"Let's do it. But we're gonna finish watching this light show first, right?",1)
hss.dlgA(co,hss.U,"Absolutely.",1)
hss.evt(co,"As you and {QUEST_CHAR_1_NAME} hold each other close, watching your favorite memories scroll by in bright colors, Dean says...", "")
hss.dlg(co,"DEAN","Nice recovery, {YOU}!")
else
hss.dlgA(co,"DEAN","~One!~ Now, {YOU}!",4)
hss.evt(co,"A beam of light shoots out from the nearby trees, and a slideshow of pictures from your past dates begins playing on the wall! You...", "")
local choice = hss.showTextMenu(co, "What do you do?", "Ask {QUEST_CHAR_1_NAME} out!|Miss your cue!", false, 3);
if (choice == 0) then
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward0") == nil then
hss.setQuestProperty("reward0",1)
hss.dlgA(co,hss.U,"{QUEST_CHAR_1_NAME}, we've made some amazing memories in the past...",1,hss.REWARD_COINS,50)
else
hss.dlgA(co,hss.U,"{QUEST_CHAR_1_NAME}, we've made some amazing memories in the past...",1)
end
hss.dlgA(co,hss.U,"What do you say we make some more tonight?",1)
hss.dlgA(co,hss.Q1,"Let's do it. But we're gonna finish watching this light show first, right?",1)
hss.dlgA(co,hss.U,"Absolutely.",1)
hss.evt(co,"As you and {QUEST_CHAR_1_NAME} hold each other close, watching your favorite memories scroll by in bright colors, Dean says...", "")
hss.dlg(co,"DEAN","Nicely done, {YOU}. That went off without a hitch!")
else
hss.dlgA(co,hss.U,"~Whoa.~ This is awesome!",4)
hss.dlgA(co,hss.Q1,"Agreed, but didn't ~you~ plan this? Why are you so surprised?",4)
hss.dlgA(co,hss.U,"Huh? Oh, right! I, um, just got distracted by our beautiful faces. But this was totally all part of my plan to ask you out...",4)
hss.dlg(co,hss.U,"We've made some amazing memories in the past, {QUEST_CHAR_1_NAME}... what do you say we make some more tonight?")
hss.dlgA(co,hss.Q1,"Let's do it. But we're gonna finish watching this light show first, right?",1)
hss.dlgA(co,hss.U,"Absolutely.",1)
hss.evt(co,"As you and {QUEST_CHAR_1_NAME} hold each other close, watching your favorite memories scroll by in bright colors, Dean says...", "")
hss.dlgA(co,"DEAN","Nice recovery, {YOU}!",4)
end
end
end
hss.dlg(co,hss.U,"Thanks.")
hss.dlgA(co,hss.Q1,"Did you say something?",4)
hss.dlgA(co,hss.U,"Uh, me? No! Not a thing. Wow, hey, look at this! Pics from our aquarium date. Remember that?",4)
hss.dlgA(co,hss.Q1,"Of course I do. We spent, like, fifty minutes petting manta rays...",1)
hss.showQuestComplete(co)
hss.evt(co,"You and {QUEST_CHAR_1_NAME} reminisce as the pictures scroll by, both startling at the explosive transitions between each photo...", "")
hss.dlg(co,hss.Q1,"This is the sweetest way I've ever been asked out, {YOU}.")
hss.dlgA(co,hss.Q1,"Though I have to say, some of these transitions are... interesting. Explosions? Laser sound effects?",4)
hss.dlgA(co,hss.U,"Uh, yeah. That's because...",4)
local choice = hss.showTextMenu(co, "What do you say?", "We're super exciting!|Actually, I have no idea.");
if (choice == 0) then
hss.dlgA(co,hss.U,"Explosions and 'pew pew' noises are perfect for us! Our relationship is like one never-ending action movie.",1)
hss.dlgA(co,hss.Q1,"Well, you ~do~ make my heart race every time I'm around you.",1)
hss.dlgA(co,hss.U,"Aww, {QUEST_CHAR_1_NAME}...",1)
hss.evt(co,"The speaker in your ear crackles as Dean begins to speak again.", "")
hss.dlgA(co,"DEAN","Ask-out, success. Next... dinner! You guys better get moving if you're going to make your reservations!",1)
else
hss.dlgA(co,hss.U,"Explosions and 'pew pew' noises are ~definitely not date material!~",4)
hss.dlg(co,hss.Q1,"Then... why did you put them in this slideshow?")
hss.dlg(co,hss.U,"I can honestly say I don't know what I was thinking.")
hss.evt(co,"The speaker in your ear crackles as Dean begins to speak again.", "")
hss.dlgA(co,"DEAN","Oops! Sorry, {YOU}. I guess I went overboard with the special effects on this one...",4)
hss.dlg(co,"DEAN","The surprise I've planned for you two at dinner will be ~much~ more romantic. Promise!")
end
hss.evt(co,"You take {QUEST_CHAR_1_NAME}'s hand again as the slideshow ends, and the two of you start toward your car.", "")
hss.evt(co,"On the way, you spot Dean hanging back at the library's entrance... and you flash him a discreet thumbs up.", "")
end
function intro_premium_0076_dean_3(co)
hss.evt(co,"Soon, you and {QUEST_CHAR_2_NAME} arrive at a five-star French restaurant on the top floor of a high-rise building downtown.", "")
hss.evt(co,"The host leads you both to a private table by the window with a sweeping view of the city...", "")
hss.dlg(co,hss.Q2,"Great food ~and~ a great view? This is incredible.")
hss.dlgA(co,hss.U,"Hey, the view's always good when I'm looking at you.",1)
hss.dlgA(co,hss.Q2,"I could say the same to you.",1)
hss.evt(co,"As your server drops by to recommend wine pairings for the night's menu, you hear Dean's voice again...", "")
hss.dlg(co,"DEAN","I hope you don't mind, {YOU}. I took the liberty of ordering the chef's menu for you two... the dessert choice is crucial.")
hss.evt(co,"You wait for the server to finish describing the menu, perfectly timing your response to address both her and Dean...", "")
hss.dlgA(co,hss.U,"Sounds good to me!",1)
end
function outro_premium_0076_dean_3(co)
hss.evt(co,"At dinner, you and {QUEST_CHAR_2_NAME} enjoy a fresh string bean salad, squash and apple soup, crab cakes, and beef bourguignon...", "")
hss.evt(co,"You and {QUEST_CHAR_2_NAME} fall into a comfortable silence as you enjoy your drinks... until suddenly, Dean's voice sounds in your ear.", "")
hss.dlgA(co,"DEAN","Uh-oh, I'm detecting a lull in the conversation...",4)
hss.dlg(co,"DEAN","But don't worry! I prepared for this. I googled 'optimal date conversation starters' after I talked to the chef about your special surprise...")
hss.dlg(co,"DEAN","Try asking which parent {QUEST_CHAR_2_NAME} looks up to the most!")
hss.dlgA(co,hss.U,"Uh...",4)
hss.dlg(co,hss.Q2,"You okay, {YOU}? You seem kinda distracted all of a sudden.")
hss.dlgA(co,hss.U,"Oh, yeah! Totally fine. Just enjoying this ~amazing~ Italian soda. Want a sip?",1)
hss.evt(co,"Through your earpiece, Dean hums thoughtfully...", "")
hss.dlg(co,"DEAN","No go on the parent question? Okay, how about this instead...")
hss.dlgA(co,"DEAN","'Do you like romantic movies, and what was the last one you saw?'",1)
hss.dlgA(co,hss.U,"I, um...",4)
hss.dlg(co,hss.Q2,"Okay, seriously, what's up?")
hss.dlgA(co,hss.U,"I'm just... blown away by how blindingly hot you are.",4)
hss.dlgA(co,"DEAN","Oh, that's a good one... you should also compliment {QUEST_CHAR_2_NAME}'s outfit. Say something like, 'Your accessories really bring out the color of your eyes.'",1)
hss.evt(co,"You...", "")
local choice = hss.showTextMenu(co, "What do you do?", "Tell Dean to be quiet.|Repeat what Dean said.|Say nothing.", true, 3);
if (choice == 0) then
hss.dlgA(co,hss.U,"Oh my god, please stop!",4)
hss.evt(co,"You cringe as {QUEST_CHAR_2_NAME} stares at you, obviously confused.", "")
hss.dlgA(co,hss.U,"Please stop... um... this awesome dinner, temporarily, while I go use the restroom real quick.",4)
hss.dlgA(co,hss.Q2,"Oh, uh, sure!",4)
hss.dlg(co,hss.Q2,"I'll hold down the fort.")
elseif (choice == 1) then
hss.dlgA(co,hss.U,"Your accessories really bring out the color of your eyes.",4)
hss.dlgA(co,hss.Q2,"Thank... you? I think?",4)
hss.evt(co,"You cringe as {QUEST_CHAR_2_NAME} stares at you, obviously confused. After an awkward pause, you clear your throat and stand from the dinner table.", "")
hss.dlg(co,hss.U,"Uh... excuse me, {QUEST_CHAR_2_NAME}. I have to use the restroom real quick.")
hss.dlg(co,hss.Q2,"Oh, sure! I'll hold down the fort.")
else
hss.evt(co,"You bite your tongue and say absolutely nothing for a long moment.", "")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward1") == nil then
hss.setQuestProperty("reward1",1)
hss.dlgA(co,hss.U,"...",4,hss.REWARD_COINS,50)
else
hss.dlgA(co,hss.U,"...",4)
end
hss.dlgA(co,"DEAN","What's wrong, {YOU}? Should I keep going through the list?",4)
hss.evt(co,"You clear your throat loudly and suddenly stand from the dinner table.", "")
hss.dlgA(co,hss.U,"Uh... excuse me, {QUEST_CHAR_2_NAME}. I have to use the restroom real quick.",4)
hss.dlg(co,hss.Q2,"Oh, sure! I'll hold down the fort.")
end
hss.evt(co,"After excusing yourself, you quickly rush out of earshot before whispering...", "")
hss.dlgA(co,hss.U,"Dean! Where are you?",3)
hss.dlgA(co,"DEAN","Back by the kitchens. What's up?",4)
hss.evt(co,"You make your way through the restaurant, finding Dean camped out with a surveillance laptop just outside the kitchens.", "")
hss.dlg(co,hss.U,"Dean...")
local choice = hss.showTextMenu(co, "What do you say?", "You're being TOO nice.|You're ruining everything!");
if (choice == 0) then
hss.dlg(co,hss.U,"I know you're just trying to help, but I can flirt with my own date.")
hss.dlgA(co,hss.U,"Having you in my ear all the time is super distracting.",2)
else
hss.dlgA(co,hss.U,"I know your intentions are good, but having you in my ear all the time is super distracting!",4)
hss.dlgA(co,hss.U,"And honestly, those are ~not~ good conversation starters. You might want to revisit your search results.",2)
hss.dlgA(co,"DEAN","Oh! I...",4)
end
hss.dlgA(co,"DEAN","I'm sorry, {YOU}. I wanted to help keep the conversation flowing, but I didn't realize how intrusive I was being...",2)
hss.dlg(co,hss.U,"I know, and I'm not mad or anything. But...")
hss.dlg(co,"DEAN","You want some privacy. I get it. You won't hear another peep out of me until dinner's over.")
hss.dlgA(co,"DEAN","Now hurry up! Dessert is being served!",4)
hss.showQuestComplete(co)
hss.evt(co,"You hurry back to your table and slip into your seat just as a chef approaches with a silver trolley.", "")
hss.evt(co,"She unveils a dish of cherries and ice cream, surrounded by an intricate arrangement of thin sticks.", "")
hss.dlgA(co,hss.Q2,"Ooh, cherries jubilee! I haven't had this dessert in ~ages.~",1)
hss.dlgA(co,hss.U,"This is the one where they set it on fire in front of you, right?",4)
hss.dlg(co,hss.Q2,"Yep! Though they don't usually come with these sticks... I wonder what they're for?")
hss.evt(co,"With a flourish, the chef produces a blowtorch and sets the cherries alight!", "")
hss.evt(co,"The sticks quickly catch fire, sending a spray of warm sparks through the air... spelling {QUEST_CHAR_2_NAME}'s name!", "")
hss.dlgA(co,hss.Q2,"Hold on... is that my ~name?~ In ~fire?~ Whoa...",4)
hss.dlgA(co,hss.Q2,"Quick, we have to get a picture before the sparks go out!",1)
hss.evt(co,"You lean into frame with {QUEST_CHAR_2_NAME} as the chef snaps a photo for you, capturing {QUEST_CHAR_2_NAME}'s name in fire right before your eyes.", "")
hss.dlgA(co,hss.Q2,"This is already the best dessert I've ever been served, and I haven't even tasted it yet.",1)
hss.dlgA(co,hss.U,"We'd better fix that. Dig in!",1)
hss.evt(co,"After demolishing the cherries jubilee, you and {QUEST_CHAR_2_NAME} head out of the restaurant, hand-in-hand. A familiar voice finally sounds in your ear again...", "")
hss.dlg(co,"DEAN","Hey, {YOU}. I hope this isn't a bad time... but could you and {QUEST_CHAR_2_NAME} head down to Lake Lorenn?")
hss.dlg(co,"DEAN","There's a surprise waiting for you by the dock...")
end
function intro_premium_0076_dean_4(co)
hss.evt(co,"After dinner, you and {QUEST_CHAR_1_NAME} drive out to Lake Lorenn for a stroll along the bank.", "")
hss.dlg(co,hss.Q1,"You really thought of everything, {YOU}. A walk is absolutely what I need after that meal.")
hss.dlgA(co,hss.U,"Well, I wanted this to be a date you'd remember.",1)
hss.dlg(co,hss.Q1,"Trust me, it is. I don't think I'll ever--")
hss.dlgA(co,hss.Q1,"Wait, what's ~that?~",4)
hss.evt(co,"{QUEST_CHAR_1_NAME} points at the dock, and you glance over to see a small boat decked out in hundreds of red and pink lights.", "")
hss.dlgA(co,hss.Q1,"Did you set this up for me?",1)
hss.dlgA(co,hss.U,"I... might have.",4)
hss.evt(co,"Dean's voice sounds in your ear...", "")
hss.dlg(co,"DEAN","Surprise! I hope you like it... I felt awful about intruding over and over again on your dinner earlier.")
hss.dlgA(co,"DEAN","So to make up for it, I set up this cruise around the lake as an extra surprise for you two.",1)
hss.dlg(co,"DEAN","Everything's automated, so just say the word... and you're off!")
hss.evt(co,"As {QUEST_CHAR_1_NAME} dashes down to the dock to marvel at the romantic glow of the boat, you lag back a few steps and whisper...", "")
hss.dlgA(co,hss.U,"Thank you, Dean. This is perfect.",1)
end
function outro_premium_0076_dean_4(co)
hss.evt(co,"You join {QUEST_CHAR_1_NAME} at the dock where a small boat decorated in red and pink fairy lights is waiting.", "")
hss.dlgA(co,hss.Q1,"You've seriously blown every other date I've ever had out of the water, {YOU}.",1)
hss.dlgA(co,hss.U,"I'm going to pretend you never made that pun. Hop in!",1)
hss.evt(co,"After untying the boat from the dock, you and {QUEST_CHAR_1_NAME} climb on board.", "")
hss.dlg(co,hss.Q1,"When did you learn to pilot a boat?")
hss.dlg(co,hss.U,"Oh, I didn't. But don't worry, everything is automated. Watch this...")
hss.dlgA(co,hss.U,"Go, boat!",1)
hss.evt(co,"The boat idles in the water, rocking gently... but not moving forward.", "")
hss.dlgA(co,hss.U,"Uh... ~go,~ boat! Or... activate?",4)
hss.evt(co,"Suddenly, the boat's engine roars to life! It jerks forward, gliding slowly across the lake. In your ear, Dean clears his throat.", "")
hss.dlgA(co,"DEAN","Sorry about that, {YOU}! Technical difficulties.",4)
hss.dlgA(co,"DEAN","I'll step back and give you guys some privacy now... happy sailing!",1)
hss.evt(co,"As the boat takes a leisurely loop around the calm waters of the lake, you and {QUEST_CHAR_1_NAME} explore the ship's main cabin...", "")
hss.dlgA(co,hss.Q1,"Chocolates and champagne? Now this is the ~life!~",1)
hss.dlgA(co,hss.U,"Here, try one of these...",1)
hss.evt(co,"You pick up a coconut-flaked chocolate and hold it up to {QUEST_CHAR_1_NAME}'s mouth... soft lips brush your fingertips as {QUEST_CHAR_1_NAME} ducks down to bite into the piece.", "")
hss.dlg(co,hss.Q1,"Mm... ~perfect.~")
hss.showQuestComplete(co)
hss.evt(co,"As the boat moves in slow, steady circles around the lake, drifting closer and closer to the center, you and {QUEST_CHAR_1_NAME} sip chilled drinks and share the box of chocolates...", "")
hss.dlg(co,hss.U,"Let's move out here. We'll sail around forever and live off chocolates.")
hss.dlgA(co,hss.Q1,"Sounds like a plan to me.",1)
hss.evt(co,"As {QUEST_CHAR_1_NAME} leans in to kiss you, cheeks lit by the soft lights strung throughout the cabin... the boat suddenly jerks to a halt!", "")
hss.evt(co,"You and {QUEST_CHAR_1_NAME} rush out onto the deck to find yourselves stopped in the middle of the lake, with the crescent moon overhead.", "")
hss.dlgA(co,hss.Q1,"Please tell me the boat didn't just break. I know how to change a tire... but this is completely different!",4)
hss.dlgA(co,hss.U,"It's fine. This is all part of the plan!",4)
hss.evt(co,"Under your breath, you whisper...", "")
hss.dlgA(co,hss.U,"I hope...",2)
end
function intro_premium_0076_dean_5(co)
hss.evt(co,"You and {QUEST_CHAR_2_NAME} lean against the rails on the deck of your stalled boat, glancing down at the side of the boat to see why you've stopped...", "")
hss.dlgA(co,"DEAN","No need to worry, {YOU}! This is the grande finale. Just sit back and relax on the deck... and keep your eyes on the sky!",4)
hss.evt(co,"You breathe a sigh of relief and take {QUEST_CHAR_2_NAME}'s hand.", "")
hss.dlgA(co,hss.U,"Okay, yep. This is definitely part of the plan. Come on, this way...",1)
hss.evt(co,"You lead {QUEST_CHAR_2_NAME} over to a wide chaise lounge on the deck, and the two of you cuddle together as you look up at the sky.", "")
hss.evt(co,"Suddenly, a bolt of light arcs through the sky high above your heads!", "")
hss.dlgA(co,hss.Q2,"~Whoa!~",4)
end
function outro_premium_0076_dean_5(co)
local finale = 0;
finale = hss.getGameProperty("premium_0076_dean_1", "finale")
hss.evt(co,"{QUEST_CHAR_2_NAME} wraps an arm around your shoulders as you watch a bright light streak through the sky...", "")
hss.evt(co,"It starbursts into a rainbow of fireworks, lighting up the night!", "")
hss.dlgA(co,hss.Q2,"This is perfect. I wish I could live in this moment forever...",1)
hss.dlgA(co,hss.U,"Me too... let's just move out here and live on this boat.",1)
hss.evt(co,"You and {QUEST_CHAR_2_NAME} laugh, cuddling as fireworks fill the sky in brilliant hues of red and blue...", "")
if (finale == 0) then
hss.evt(co,"After a short pause... a massive firework whistles through the sky, exploding into the shape of a bright red heart!", "")
hss.dlgA(co,hss.Q2,"Aww, {YOU}... I heart you, too.",1)
hss.dlgA(co,hss.U,"That's all I ever wanted to hear.",1)
elseif (finale == 1) then
hss.evt(co,"After a short pause... a massive firework whistles through the sky, exploding into the shape of a bouquet of roses!", "")
hss.dlgA(co,hss.Q2,"Oh! Just like the ones I got you back when we started dating...",1)
hss.dlgA(co,hss.U,"Exactly. Guess we're even now, huh?",1)
hss.dlg(co,hss.Q2,"No way! After tonight, I'd say I owe you one hell of a date...")
else
hss.evt(co,"After a short pause... a massive firework whistles through the sky, exploding into the shape of two heads bowed close together, lights mingling intimately.", "")
hss.dlgA(co,hss.Q2,"Is that... ~us?!~",4)
hss.evt(co,"A rapid-fire series of fireworks follow, creating the illusion of two figures! The images of you and {QUEST_CHAR_2_NAME} dance closer together, a shower of brilliant sparks in the darkness.", "")
hss.dlgA(co,hss.U,"Wow...",1)
hss.evt(co,"The two figures in the sky come together for a kiss, and even more fireworks burst all around them in a dazzling display.", "")
hss.evt(co,"{QUEST_CHAR_2_NAME} turns to you, taking your hand with a warm smile.", "")
hss.dlg(co,hss.Q2,"How did you know? Those fireworks... that's exactly how I feel when I'm around you.")
hss.dlgA(co,hss.U,"Because I feel the same way.",1)
end
hss.evt(co,"You pull {QUEST_CHAR_2_NAME} close and...", "")
local choice = hss.showTextMenu(co, "What do you do?", "Hug!|Kiss!")
if (choice == 0) then
hss.evt(co,"You wrap your arms around {QUEST_CHAR_2_NAME}, and the two of you hold each other close beneath the pale moonlight...", "")
else
hss.evt(co,"You tilt your head, leaning in toward {QUEST_CHAR_2_NAME}, and the two of you kiss sweetly beneath the pale moonlight...", "")
end
hss.dlgA(co,hss.Q2,"How did you even plan all this?",1)
hss.dlg(co,hss.U,"Well...")
local choice = hss.showTextMenu(co, "What do you say?", "I'm just that awesome.|I had some help.")
if (choice == 0) then
hss.dlgA(co,hss.U,"That's why you're dating me, right?",1)
hss.dlgA(co,hss.Q2,"Pretty much. Free chocolate, champagne, and desserts that spell my name in fire are the only reasons I'm with you.",1)
hss.dlgA(co,hss.U,"Oh, the ~only~ reasons, huh?",1)
hss.dlgA(co,hss.Q2,"Well... there's also your beautiful eyes... and your smile...",1)
hss.evt(co,"You relax, wholly content as you listen to {QUEST_CHAR_2_NAME}'s soothing voice. After a while, you hear Dean again...", "")
hss.dlg(co,"DEAN","Glad I could help with your night, {YOU}. Enjoy the rest of it.")
hss.dlgA(co,"DEAN","Over and out.",1)
else
hss.dlg(co,hss.U,"I had an amazing friend who helped me out with all this tonight. He pulled out all the stops.")
hss.dlgA(co,hss.Q2,"Yeah? I'd love to meet him.",1)
hss.dlgA(co,hss.U,"Oh, I don't think so. He's way too good at dating. He'd totally steal you from me.",1)
hss.dlgA(co,hss.Q2,"No chance. You're stuck with me.",1)
hss.dlgA(co,hss.U,"I like the sound of that...",1)
hss.evt(co,"As you and {QUEST_CHAR_2_NAME} relax in each other's arms, you hear Dean again...", "")
hss.dlgA(co,"DEAN","Thanks, {YOU}. You're a pretty amazing friend, too. Now, enjoy the rest of your night...",1)
hss.dlgA(co,"DEAN","Over and out.",1)
end
hss.showQuestComplete(co)
hss.evt(co,"After the fireworks show, you drive {QUEST_CHAR_2_NAME} back to the dorms.", "")
hss.dlg(co,hss.Q2,"When you asked me out by the library, I didn't know what to expect... but this whole night was one of the best dates I've ever been on.")
hss.dlg(co,hss.U,"Then I'll just have to top this next time!")
hss.dlgA(co,hss.Q2,"No way. It's ~my~ turn next, and I'm going to plan a date that'll blow you away.",1)
hss.dlgA(co,hss.U,"I'll take that as a promise.",1)
hss.evt(co,"You kiss {QUEST_CHAR_2_NAME} before saying goodbye. Afterwards, you head across campus to the special effects lab, where the lights are still on...", "")
hss.dlg(co,hss.U,"Dean?")
hss.dlgA(co,"DEAN","Hey! What are you doing here?",4)
hss.dlg(co,hss.U,"I just dropped {QUEST_CHAR_2_NAME} off. And I had to come find you...")
hss.dlgA(co,hss.U,"To tell you how ~epic~ you are!",1)
end
function outro_premium_0076_dean_6(co)
hss.evt(co,"You pull up a chair in the special effects lab, joining Dean at his desk.", "")
hss.dlg(co,hss.U,"Dean, you should seriously think about planning dates for a living. You put on one hell of a good date.")
hss.dlg(co,"DEAN","Thanks, {YOU}. But I know it wasn't perfect... I shouldn't have given you internet tips on dating while you were at dinner.")
hss.dlgA(co,"DEAN","And, in hindsight, all those explosions in the slideshow probably weren't the most romantic thing...",4)
hss.dlg(co,hss.U,"Maybe it wasn't super romantic, but it was super ~you.~")
hss.dlgA(co,hss.U,"And whenever you feel like dating seriously, you're going to make a great boyfriend.",1)
hss.dlgA(co,"DEAN","You think so?",4)
hss.dlg(co,"DEAN","It's... probably obvious by now that I don't have a lot of real world application in dating.")
hss.dlgA(co,"DEAN","When I said I've been too busy with work to date much lately, I kind of meant... I've been too busy with work to date much ~ever.~",2)
hss.dlg(co,"DEAN","I have all these date ideas, but sometimes I miss the mark in the execution.")
hss.dlg(co,hss.U,"Dean...")
local choice = hss.showTextMenu(co, "What do you say?", "That's a good thing!|You'll get better.")
if (choice == 0) then
hss.dlg(co,hss.U,"If every single date was totally perfect, they'd get boring after a while, don't you think?")
hss.dlgA(co,hss.U,"Goofy date moments are often the ~best~ date moments.",1)
else
hss.dlg(co,hss.U,"Nobody is born knowing how to be an awesome date! With some more practice, you'll be a total pro.")
end
hss.dlg(co,hss.U,"You'd better promise to tell me all your date stories, because I bet they'll be amazing.")
hss.dlgA(co,"DEAN","I'll have to find time to get back into the dating scene first... but, okay. It's a promise.",1)
hss.showQuestComplete(co)
hss.evt(co,"A few days later, you and Dean are hanging out at the campus coffee shop.", "")
hss.dlgA(co,hss.U,"I can't believe you ~still~ won't tell me how you spelled my date's name in fire! I know you used sparklers, but how'd you get the shape so perfect?",1)
hss.dlg(co,"DEAN","Trade secrets, {YOU}. You wouldn't have much use for me if I told you everything, would you?")
hss.dlg(co,hss.U,"I keep you around because you're a great friend, Dean.")
hss.dlgA(co,hss.U,"The fact that you're a special effects master is just a bonus.",1)
hss.evt(co,"Dean grins... until he spots something over your shoulder. He suddenly looks down at his coffee cup, silent.", "")
hss.evt(co,"You turn just in time to spot someone entering the cafe...", "")
if (hss.isCharacterAdmitted("SHAE")) then
hss.dlg(co,hss.U,"Shae! Wanna join us?")
hss.dlg(co,"SHAE","Sure, let me just grab a drink.")
hss.evt(co,"You turn back to Dean to see a bright blush reddening his cheeks.", "")
hss.dlgA(co,hss.U,"You okay, Dean?",4)
hss.dlgA(co,"DEAN","Oh, uh, yeah! Yeah, I'm totally okay that Shae is going to be coffee.",4)
hss.dlgA(co,"DEAN","Er. Having coffee. With us.",4)
hss.dlgA(co,hss.U,"Oh my god... Dean, are you into Shae?",1)
hss.dlgA(co,"DEAN","What? No! I just... I mean... I've seen her around, and she seems really, um...",4)
else
hss.dlg(co,"SHAE","...")
hss.evt(co,"You turn back to Dean to see a blush creeping up his cheeks.", "")
hss.dlgA(co,hss.U,"Oh my god, are you into Shae?",1)
hss.dlgA(co,"DEAN","What? Me? No! I just... I mean... I've seen her around, and she seems really, um...",4)
end
hss.dlgA(co,hss.U,"Epic?",1)
hss.dlg(co,"DEAN","~Super~ epic.")
hss.dlgA(co,hss.U,"Then it sounds to me like you two are the ~perfect~ fit...",1)
if hss.tutorialIsQuestFinished("prim_0021_agent_6") then
hss.evt(co,"~We hope you enjoyed this look back at the start of your friendship with Dean!~", "")
else
hss.evt(co,"~Congratulations on befriending Dean!~", "")
end
hss.evt(co,"~Now that Dean is in your entourage, you can party with him and send him on dates or quests!~", "")
hss.evt(co,"~Note: When sending Dean on quests, you may encounter situations where he talks to himself. Please let us know if this happens, and we'll get it fixed!~", "")
hss.evt(co,"~We hope you enjoy seeing Dean around your campus from now on!~", "")
hss.evt(co,"~Keep your eyes peeled for more recruitment quests in the future... you never know who you might befriend!~", "")
end
local sceneTable = {}
sceneTable["inter_preview"] = inter_preview
sceneTable["outro_premium_0076_dean_1"] = outro_premium_0076_dean_1
sceneTable["intro_premium_0076_dean_2"] = intro_premium_0076_dean_2
sceneTable["outro_premium_0076_dean_2"] = outro_premium_0076_dean_2
sceneTable["intro_premium_0076_dean_3"] = intro_premium_0076_dean_3
sceneTable["outro_premium_0076_dean_3"] = outro_premium_0076_dean_3
sceneTable["intro_premium_0076_dean_4"] = intro_premium_0076_dean_4
sceneTable["outro_premium_0076_dean_4"] = outro_premium_0076_dean_4
sceneTable["intro_premium_0076_dean_5"] = intro_premium_0076_dean_5
sceneTable["outro_premium_0076_dean_5"] = outro_premium_0076_dean_5
sceneTable["outro_premium_0076_dean_6"] = outro_premium_0076_dean_6
hss.runScene(sceneTable)
