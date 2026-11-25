function inter_preview(co)
hss.evt(co,"You're getting ready to go out on Friday night when you hear a knock at your door.", "")
hss.evt(co,"You pull open the door to see Victoria Swenson, a large suitcase on the floor beside her.", "")
hss.dlgA(co,hss.U,"Hey, Victoria... going somewhere?",4)
hss.dlg(co,"VICTORIA","I'm headed to Rio this weekend for the annual Sporting Chance Swimsuit Edition photoshoot.")
hss.dlg(co,hss.U,"You're only going for the weekend? What's with the massive suitcase?")
hss.dlgA(co,"VICTORIA","You can't imagine the amount of bikinis one goes through for a Swimsuit Edition photoshoot.",1)
hss.dlgA(co,hss.U,"Believe me, I'm imagining...",4)
hss.dlgA(co,"VICTORIA","Don't push your luck, {YOU}. I was just about to invite you to come with me... assuming you're up to the challenge?",1)
hss.dlgA(co,hss.U,"What kind of challenge are we talking about?",4)
hss.dlg(co,"VICTORIA","Rio isn't all postcard beaches and hang gliding... the nightlife can get pretty crazy. You'd better be able to keep up with me.")
hss.dlgA(co,"VICTORIA","So... are you in, or are you out?",1)
local choice = hss.showTextMenu(co, "What do you say?", "I'm in!|I'm out!");
if (choice == 0) then
hss.dlgA(co,"VICTORIA","Good answer.",1)
hss.markQuestScriptRequirementFinished();
else
hss.dlgA(co,"VICTORIA","I guess I'll have to entertain myself, then...",2)
end
end
function outro_date_0014_rio_1(co)
hss.evt(co,"Later, your plane swings low over the ocean and touches down in Rio de Janeiro.", "")
hss.evt(co,"A limo greets you at the baggage claim and whisks you away to Copacabana Beach.", "")
hss.dlg(co,"VICTORIA","Ready to see a Swimsuit Edition shoot up close and personal?")
hss.dlgA(co,hss.U,"Has anyone ~ever~ said no to that?",1)
hss.showQuestComplete(co)
hss.evt(co,"You step out of the limo onto a long ribbon of white sand wending along the coastline. Marquees set up by the Sporting Chance team flutter in the sea breeze.", "")
hss.dlg(co,"VICTORIA","I'm going to go slip into something more professional... care to join me?")
hss.dlgA(co,"VICTORIA","You did pack a swimsuit, right?",1)
hss.evt(co,"Victoria grabs you by the hand and pulls you into one of the white tents set up on the beach.", "")
end
function intro_date_0014_rio_2(co)
hss.evt(co,"You each step into changing rooms separated by sheer curtains, the shaded sand cool under your feet.", "")
hss.dlgA(co,"VICTORIA","No peeking...",1)
local choice = hss.showTextMenu(co, "What do you say?", "No promises.|No problem.");
if (choice == 0) then
hss.evt(co,"On the other side of the curtain, you hear Victoria laugh.", "")
hss.dlgA(co,"VICTORIA","Careful, {YOU}...",1)
else
hss.dlgA(co,"VICTORIA","How considerate. I'll try to return the favor...",1)
end
hss.evt(co,"After changing, you step out of the tent dressed for the beach. Victoria looks you up and down, one eyebrow cocked mischievously.", "")
hss.dlg(co,"VICTORIA","~Damn.~")
hss.dlgA(co,hss.U,"Likewise.",1)
hss.evt(co,"Just then, the Sporting Chance photographers wave Victoria over... and gesture for you to follow!", "")
hss.dlgA(co,hss.U,"Wait a minute... you guys want ~me~ in the shoot?",4)
end
function outro_date_0014_rio_2(co)
hss.dlg(co,"VICTORIA","What do you think? Ready to start your career as a swimsuit model?")
hss.dlgA(co,hss.U,"Uhhh...",4)
local choice = hss.showTextMenu(co, "What do you say?", "Hell yes!|I think I'll pass.");
if (choice == 0) then
hss.dlgA(co,hss.U,"Let's do this!",1)
hss.dlg(co,"VICTORIA","I have to say... I like this side of you.")
hss.dlgA(co,"VICTORIA","And it seems the photographers do too!",1)
hss.evt(co,"You both pose for the cameras, Victoria pulling you close and wrapping you in a tight embrace.", "")
hss.dlg(co,hss.U,"I hope this isn't just for the cameras...")
hss.dlgA(co,"VICTORIA","Haven't you ever heard of mixing business with pleasure?",1)
else
hss.dlgA(co,"VICTORIA","Suit yourself. Go stand with the photographers so you can get the ~best~ angle...",1)
hss.dlgA(co,hss.U,"Sounds good to me.",1)
hss.evt(co,"The Sporting Chance photographers make room for you to stand with them as the shoot begins.", "")
hss.dlg(co,"VICTORIA","I'll try to keep things interesting, {YOU}...")
hss.evt(co,"Victoria winks at you and poses for the cameras.", "")
end
hss.showQuestComplete(co)
hss.evt(co,"After the shoot, the Sporting Chance photographers clear the beach while you and Victoria change out of your swimwear.", "")
hss.evt(co,"The two of you leave Copacabana behind and wander the streets of Rio de Janeiro, enjoying the sights and sounds of the city.", "")
hss.dlgA(co,"VICTORIA","So. We've got the whole evening ahead of us. What are we doing tonight?",1)
hss.dlg(co,hss.U,"I've heard a lot about the cable car rides through the mountains... we could see the whole city from up there!")
hss.dlg(co,"VICTORIA","Hmm... I've already done that.")
hss.dlg(co,hss.U,"What about a live samba show? That'd be cool!")
hss.dlgA(co,hss.U,"Right?",2)
hss.dlgA(co,"VICTORIA","Actually... I've done that, too.",2)
hss.dlgA(co,hss.U,"Oh... um... sorry, I'm having trouble thinking of stuff...",2)
hss.dlg(co,"VICTORIA","No, I'm sorry. It's just that... this is my ~third~ shoot here in Rio. I've seen just about everything this city has to offer.")
hss.dlgA(co,"VICTORIA","Same with ~most~ cities, to be honest. This job takes me all over the world... but the more I see of it, the smaller it seems. I've done it all.",2)
hss.dlg(co,hss.U,"Come on. There must be ~something~ you haven't done. Something off the beaten path?")
hss.dlgA(co,"VICTORIA","Well, there is ~one~ thing...",4)
end
function intro_date_0014_rio_3(co)
hss.dlg(co,hss.U,"What's the one thing you haven't done? Whatever it is, I'm down.")
hss.dlgA(co,"VICTORIA","Are you sure?",1)
hss.dlg(co,hss.U,"I'm sure.")
hss.dlgA(co,"VICTORIA","Good... because I've got something a little more exciting than samba in mind...",1)
end
function outro_date_0014_rio_3(co)
hss.evt(co,"Victoria pulls you down a flight of stairs and onto a metro platform under the city. You follow her onto a train crowded with patrons of Rio's nightlife.", "")
hss.dlg(co,hss.U,"So, are you going to tell me where we're going?")
hss.dlgA(co,"VICTORIA","We're going to a bar.",1)
hss.dlgA(co,hss.U,"A bar? That's it?",4)
hss.dlg(co,"VICTORIA","Not just ~any~ bar... we're going to Bar Casmurro, home of the famous Cachaca Casmurro.")
hss.dlgA(co,hss.U,"I'm... still lost.",4)
hss.dlgA(co,"VICTORIA","It's the best rum you've ~never~ had. Bar Casmurro distills it in extremely limited quantities in-house, and the neighborhood isn't exactly tourist-friendly.",1)
hss.dlg(co,"VICTORIA","From what I've heard though, it's absolutely worth the trip. So... are you in or are you out?")
hss.dlgA(co,hss.U,"I'm in.",1)
hss.showQuestComplete(co)
hss.evt(co,"Your train glides to a stop at the end of the metro line, deep in the outskirts of the city.", "")
hss.dlgA(co,"VICTORIA","This is us.",1)
hss.dlgA(co,hss.U,"Bar Casmurro, here we come!",1)
end
function outro_date_0014_rio_4(co)
hss.evt(co,"You and Victoria climb the stairs out of the metro and find yourselves in a dense maze of crisscrossing alleys and brightly colored buildings.", "")
hss.dlgA(co,"VICTORIA","{YOU}... welcome to Bar Casmurro.",1)
hss.evt(co,"The entire block is dominated by a low building with smoked glass windows. A swinging sign hanging over the door reads 'Bar Casmurro.'", "")
hss.evt(co,"Out front, the street is clogged by a fleet of matte black motorcycles emblazoned with silver skulls.", "")
hss.dlgA(co,hss.U,"You didn't mention this was a biker bar!",4)
hss.dlgA(co,"VICTORIA","You're not scared, are you?",1)
hss.dlgA(co,hss.U,"Actually, a bunch of skull-covered motorcycles is ~exactly~ what I want to see when I go to a bar.",1)
hss.dlg(co,"VICTORIA","Good. Now let's get our hands on that rum!")
hss.showQuestComplete(co)
hss.evt(co,"You hold open the heavy oak door, and Victoria waltzes in and sidles up to the bar.", "")
hss.dlg(co,"VICTORIA","We'll have the Cachaca Casmurro. Just leave the bottle, thanks.")
hss.evt(co,"The bartender nods and sets two glasses on the bar, along with a dusty bottle of clear liquor with the words 'Cachaca Casmurro' carved into the glass.", "")
hss.evt(co,"Just as you're about to pour Victoria a drink, someone bumps into you!", "")
hss.dlgA(co,hss.U,"Oof!",4)
hss.evt(co,"You spin around to see a large man in a leather vest glaring at you. A small silver skull gleams on his breast pocket.", "")
hss.dlg(co,hss.U,"Hey, man...")
local choice = hss.showTextMenu(co, "What do you say?", "WATCH IT.|I'm so sorry!");
if (choice == 0) then
hss.dlgA(co,"VICTORIA","Yeah, you tell him!",1)
hss.evt(co,"The man growls at you and shoves you, hard!", "")
hss.dlgA(co,hss.U,"Hey!",3)
hss.evt(co,"You fall backward into a wiry man with a goatee, a patch depicting a coiled viper stitched onto his denim jacket.", "")
hss.evt(co,"He turns and locks eyes with the man in the leather vest... and cracks his knuckles menacingly.", "")
hss.dlgA(co,hss.U,"Uh oh...",2)
else
hss.dlg(co,hss.U,"That was totally my fault.")
hss.evt(co,"The man just glares at you.", "")
hss.dlgA(co,hss.U,"I should've been more aware of my surroundings?",2)
hss.evt(co,"The man growls and shoves you, hard!", "")
hss.dlgA(co,hss.U,"Hey!",4)
hss.evt(co,"You fall backward into a wiry man with a goatee, a patch depicting a coiled viper stitched onto his denim jacket.", "")
hss.evt(co,"He turns and locks eyes with the man in the leather vest... and cracks his knuckles menacingly.", "")
hss.dlgA(co,hss.U,"Uh oh...",2)
end
end
function inter_fight(co)
hss.evt(co,"The man with the viper patch pushes you aside and charges at the guy in the leather vest! They hit the floor in a whirl of swinging fists!", "")
hss.evt(co,"Outside, you hear the roar of motorcycles, and soon the bar is crowded with members of the two rival gangs!", "")
hss.dlgA(co,"VICTORIA","This just got a little ~too~ adventurous...",4)
hss.dlgA(co,hss.U,"You wanna get out of here?",1)
hss.dlgA(co,"VICTORIA","Yes please!",4)
hss.evt(co,"Just then, a wooden chair flies through the air toward Victoria!", "")
hss.dlgA(co,hss.U,"Victoria!",4)
local choice = hss.showTextMenu(co, "What do you do?", "Tackle Victoria to the floor!|Try to catch the chair in midair!", false, 3);
if (choice == 0) then
hss.dlgA(co,"VICTORIA","Whoa!",4)
hss.evt(co,"You tackle Victoria to the floor, and the chair sails over your heads and breaks against a biker's back!", "")
hss.dlgA(co,"VICTORIA","That was close!",4)
hss.dlgA(co,"VICTORIA","You're pretty useful to have around...",1)
hss.dlgA(co,hss.U,"You can thank me later. For now, let's get you somewhere safe!",1,hss.REWARD_COINS,10)
hss.dlgA(co,"VICTORIA","Lead on.",1)
else
hss.evt(co,"You leap in front of Victoria and try to intercept the chair!", "")
hss.evt(co,"You catch it by the seat, but the wooden legs punch against your ribs!", "")
hss.dlgA(co,hss.U,"Oooooww...",2)
hss.dlgA(co,"VICTORIA","Oh my god, are you okay?",4)
hss.dlgA(co,hss.U,"Not really.",2)
hss.dlg(co,"VICTORIA","Well, thanks. No one's ever taken a chair for me before.")
hss.dlgA(co,hss.U,"Ugh. Never again.",2)
end
hss.evt(co,"You grab Victoria's hand and pull her toward the exit, but suddenly you find your path blocked by the two bikers who started the fight!", "")
hss.evt(co,"Silver Skull takes a break from pummeling Viper Patch's face and points at you!", "")
hss.dlgA(co,"VICTORIA","Hey, that's the jerk that shoved you!",3)
hss.evt(co,"Silver Skull tosses the other guy aside and starts toward you!", "")
hss.evt(co,"You brace yourself and...", "")
local choice = hss.showTextMenu(co, "What do you do?", "Throw a punch!|Throw a glass of beer!");
if (choice == 0) then
hss.evt(co,"You intercept the biker's advance with a solid right cross!", "")
hss.evt(co,"The man lets out a roar of fury as his nose crunches under your fist! He falls to his knees!", "")
hss.dlgA(co,hss.U,"By the way, ~you~ bumped into ~me.~",3)
hss.dlgA(co,"VICTORIA","Holy crap, {YOU}, you just kicked that guy's ass!",4)
hss.dlgA(co,hss.U,"Yeah, let's not wait around for his buddies to notice!",4)
else
hss.evt(co,"You swipe a pint of beer off a nearby table and splash it into the guy's face!", "")
hss.dlgA(co,hss.U,"Back off, creep!",3)
hss.evt(co,"As the biker howls in fury and wipes foam out of his eyes, you grab Victoria's hand and pull her out the door!", "")
hss.dlgA(co,"VICTORIA","That was some quick thinking back there!",4)
hss.dlgA(co,hss.U,"Yeah, let's not wait around for him to recover!",4)
end
hss.evt(co,"The two of you rush out the door as the fight spills out onto the street!", "")
hss.dlgA(co,"VICTORIA","That guy did ~not~ look happy with us... and he's pointing us out to his friends!",2)
hss.dlgA(co,hss.U,"You mean we've got a whole gang after us? We need to get out of here, ~fast.~",2)
hss.evt(co,"Just then, you spot an idling motorcycle with the keys in the ignition...", "")
hss.dlgA(co,hss.U,"Are you thinking what I'm thinking?",1)
hss.dlgA(co,"VICTORIA","That depends... do you know how to drive one of these things?",4)
hss.dlgA(co,hss.U,"Let's find out!",1)
hss.markQuestScriptRequirementFinished()
end
function outro_date_0014_rio_5(co)
hss.evt(co,"You climb onto the motorcycle, and Victoria squeezes onto the seat behind you. You feel her arms encircle your waist.", "")
hss.evt(co,"Her breath is hot on your ear as she leans in to whisper over your shoulder.", "")
hss.dlgA(co,"VICTORIA","I'm trusting you. Just... get us out of here in one piece, okay?",4)
hss.dlgA(co,hss.U,"One piece. Got it.",1)
hss.evt(co,"You open the throttle, feeling the roar of the engine throb through your whole body as you take off down the street!", "")
hss.evt(co,"The bikers climb onto their motorcycles and give chase, the street echoing with the screech of tires on asphalt.", "")
hss.evt(co,"As you weave through the favelas, the roar of the pursuant bikers' motorcycles grows louder and louder...", "")
hss.dlgA(co,"VICTORIA","They're right on top of us!",4)
hss.showQuestComplete(co)
hss.evt(co,"Up ahead, two delivery trucks enter the intersection from opposite sides, the gap between them narrowing before your eyes!", "")
hss.dlgA(co,"VICTORIA","What are you doing? Slow down!",2)
hss.evt(co,"You hear the laughter of the bikers as they close in behind you! Ahead, the space between the trucks gets smaller and smaller with every passing microsecond...", "")
hss.evt(co,"You take a deep breath and...", "")
local choice = hss.showTextMenu(co, "What do you do?", "Gun it!|Brake!", false, 3);
if (choice == 0) then
hss.dlgA(co,hss.U,"Let's lose these guys!",3,hss.REWARD_COINS,10)
hss.evt(co,"You speed through the closing gap! Victoria grips you tightly as the trucks whoosh by right behind you!", "")
hss.evt(co,"Behind you, the squeal of tires amidst a cacophony of loud curses tells you that the bikers were forced to brake!", "")
hss.dlgA(co,"VICTORIA","Are... are we alive?",4)
hss.dlgA(co,hss.U,"We're alive. Don't you trust me?",1)
hss.dlgA(co,"VICTORIA","With my life.",1)
hss.evt(co,"Having lost the bikers in the favelas, you leave the city streets behind and head further into the hills...", "")
else
hss.dlgA(co,hss.U,"Too close!",2)
hss.evt(co,"You brake hard, nearly spinning out at the head of the street!", "")
hss.dlgA(co,"VICTORIA","Why didn't you brake sooner!",3)
hss.dlgA(co,hss.U,"I thought I could make it through in time!",2)
hss.dlgA(co,"VICTORIA","Well, you'd better come up with another plan fast!",2)
hss.evt(co,"Before the bikers can catch you, you rev the engine and flee down an alleyway!", "")
hss.dlgA(co,"VICTORIA","Is it even ~legal~ to drive a motorcycle here?!",4)
hss.dlgA(co,hss.U,"It is now!",4)
hss.evt(co,"Finally, you lose the bikers in the labyrinth of alleyways and head further into the hills...", "")
end
end
function intro_date_0014_rio_6(co)
hss.evt(co,"As the moon rises high over Rio de Janeiro, you come to a stop on a secluded hillside overlooking the city.", "")
hss.evt(co,"You slide off the motorcycle and step onto the dewy grass. You pull Victoria close and brush her windswept hair away from her face.", "")
hss.dlg(co,hss.U,"So... was that the kind of adventure you've been looking for?")
hss.evt(co,"Victoria lowers herself onto the grass, and you take a seat next to her.", "")
hss.dlgA(co,"VICTORIA","I might be having trouble keeping up with ~you.~ My heart's still going crazy!",1)
hss.dlgA(co,"VICTORIA","See?",1)
hss.evt(co,"Victoria takes your hand and places it over her heart.", "")
hss.dlgA(co,hss.U,"Wow. You weren't kidding. Your heart's beating really fast.",4)
hss.evt(co,"Victoria leans in close, her lips mere inches away from yours...", "")
end
function outro_date_0014_rio_6(co)
hss.evt(co,"Just then, Victoria covers her mouth, stifling a laugh!", "")
hss.dlgA(co,hss.U,"What's so funny?",4)
hss.dlgA(co,"VICTORIA","Oh, nothing... it's just that...",1)
hss.dlgA(co,"VICTORIA","Of all the things people have done to impress me, no one's ever started a bar fight before...",1)
hss.dlgA(co,hss.U,"It wasn't intentional!",4)
hss.dlgA(co,"VICTORIA","Or gotten me mixed up in a motorcycle chase...",1)
hss.dlgA(co,hss.U,"Again, something I would've loved to avoid!",4)
hss.dlgA(co,"VICTORIA","Relax. I'm just teasing you.",1)
hss.evt(co,"Victoria lies down in the grass and looks up at the sky. You lay down next to her, the stars sparkling overhead like the lights of Rio.", "")
hss.dlg(co,"VICTORIA","You know, I thought I'd seen and done everything... I've been to Paris and London and Tokyo, attended runway afterparties in just about every city...")
hss.dlg(co,"VICTORIA","But when I'm with you, I feel like I'm doing everything for the first time. Everything feels like... an adventure.")
hss.dlg(co,hss.U,"I feel the same way. If you ever need someone who'll keep you on your toes...")
if (hss.getCharacterGender("YOU") == hss.Gender.MALE) then
hss.dlgA(co,hss.U,"I'm your guy.",1)
else
hss.dlgA(co,hss.U,"I'm your girl.",1)
end
hss.showQuestComplete(co)
hss.evt(co,"Victoria kisses you, her lips pressing against yours with a furious passion!", "")
local kiss = hss.showTextMenu(co, "What do you do?", "Kiss her back!|End the kiss.");
if (kiss == 0) then
hss.evt(co,"You feel the grass prickling against your back as Victoria rolls on top of you, pushing you into the ground.", "")
else
hss.evt(co,"You pull away from Victoria. Her eyes flutter open.", "")
hss.dlgA(co,"VICTORIA","Too much?",4)
hss.dlg(co,hss.U,"Maybe just a bit.")
hss.dlgA(co,"VICTORIA","Sorry... I may have gotten carried away.",1)
end
hss.dlg(co,"VICTORIA","In case that wasn't clear... I feel the same way. This was a good night.")
hss.dlg(co,hss.U,"It was. I just wish you'd at least had time to ~try~ the Casmurro rum before we had to leave...")
hss.dlgA(co,"VICTORIA","Oh! I almost forgot!",1)
hss.evt(co,"Victoria reaches into her purse and pulls out the bottle of Casmurro rum!", "")
hss.dlgA(co,"VICTORIA","I swiped it once the fighting started... no way I'm missing out on the legendary Cachaca Casmurro!",1)
hss.dlgA(co,hss.U,"Nice! I don't suppose you got any glasses, though...",1)
hss.dlgA(co,"VICTORIA","We'll have to drink it straight from the bottle. Are you in?",1)
local choice = hss.showTextMenu(co, "What do you say?", "Of course!|That's all you.");
if (choice == 0) then
hss.dlgA(co,hss.U,"To us!",1)
hss.dlgA(co,"VICTORIA","To us!",1)
hss.evt(co,"You pass the bottle back and forth, savoring the smooth, sweet notes of the Casmurro rum.", "")
hss.dlgA(co,"VICTORIA","Bar Casmurro may cater to some rough crowds, but they have ~very~ refined taste when it comes to rum!",4)
hss.dlgA(co,hss.U,"Definitely worth it!",1)
hss.dlgA(co,"VICTORIA","Very much so.",1)
else
hss.dlgA(co,"VICTORIA","I'll just have a little, to make sure this was all worth it...",1)
hss.evt(co,"Victoria samples the Casmurro rum, and a smile breaks across her face.", "")
hss.dlgA(co,hss.U,"I assume it was worth it?",1)
hss.dlgA(co,"VICTORIA","Very much so.",1)
end
if (kiss == 0) then
hss.evt(co,"Victoria sets the bottle aside and leans in close.", "")
hss.dlg(co,"VICTORIA","Now... where were we? Oh, I remember...")
else
hss.evt(co,"Victoria sets the bottle aside and looks up at the night sky.", "")
hss.dlgA(co,"VICTORIA","This was fun, {YOU}. I'm glad you came with me.",1)
hss.dlgA(co,hss.U,"I'm glad, too.",1)
end
hss.evt(co,"Keep an eye on Amour for more opportunities to date Victoria! There are plenty of adventures left to be had...", "")
end
local sceneTable = {}
sceneTable["inter_preview"] = inter_preview
sceneTable["outro_date_0014_rio_1"] = outro_date_0014_rio_1
sceneTable["intro_date_0014_rio_2"] = intro_date_0014_rio_2
sceneTable["outro_date_0014_rio_2"] = outro_date_0014_rio_2
sceneTable["intro_date_0014_rio_3"] = intro_date_0014_rio_3
sceneTable["outro_date_0014_rio_3"] = outro_date_0014_rio_3
sceneTable["outro_date_0014_rio_4"] = outro_date_0014_rio_4
sceneTable["inter_fight"] = inter_fight
sceneTable["outro_date_0014_rio_5"] = outro_date_0014_rio_5
sceneTable["intro_date_0014_rio_6"] = intro_date_0014_rio_6
sceneTable["outro_date_0014_rio_6"] = outro_date_0014_rio_6
hss.runScene(sceneTable)
