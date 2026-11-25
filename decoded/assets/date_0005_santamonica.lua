require "hss"
function preview_date_0005_1(co)
hss.evt(co,"In the evening, Ethan sweeps into your dorm. He offers you a small bouquet of pinkish flowers.", "")
hss.dlg(co,hss.E,"{YOU}, are you ready for another big night out?")
hss.dlgA(co,hss.U,"~Another~ big night out? Last time, you ran yourself ragged...",4)
hss.dlgA(co,hss.E,"Yeah, well, two things...",1)
hss.dlgA(co,hss.E,"First, no way am I sleeping. I just pounded a Red Bull, a Blue Energy, and a White Chocolate Machiatto...",1)
hss.dlg(co,hss.E,"Sort of the Ethan Blake version of the Three Colors trilogy.")
hss.dlgA(co,hss.U,"Surprisingly cultured...",4)
hss.dlg(co,hss.E,"Second, tonight isn't going to be all Hollywood...")
hss.dlg(co,hss.E,"You've been in Los Angeles for a while now, and you still haven't had a chance to see all the sights...")
hss.dlgA(co,hss.U,"You want to do something... ~touristy?~",4)
hss.dlgA(co,hss.E,"Me? I've already been there, done that.",1)
hss.dlgA(co,hss.E,"But you won't be ~real~ Hollywood until you've Instagrammed no-filter selfies in front of L.A.'s most recognizable landmarks.",1)
hss.dlg(co,hss.U,"Okay then... where to?")
hss.dlgA(co,hss.E,"We're going to the Santa Monica Pier. They have a big amusement park with games, rides, and a Ferris wheel...",1)
hss.dlg(co,hss.E,"Everybody in Los Angeles has to go there on a date at least ~once~. It's a rite of passage.")
hss.markQuestScriptRequirementFinished()
end
function outro_date_0005_1(co)
hss.evt(co,"A short while later...", "")
hss.evt(co,"You've parked near the Third Street Promenade and crossed the bridge toward the pier.", "")
hss.dlgA(co,hss.U,"Ooh... pretty! The Ferris wheel is all lit up!",5)
hss.dlg(co,hss.E,"Yep, it's a sight all right. I haven't been here in ages, but I see it every time I touch down at LAX...")
hss.dlgA(co,hss.E,"Reminds me I'm coming home.",1)
hss.showQuestComplete(co)
hss.evt(co,"Ethan takes your hand, guiding you deeper into the amusement park.", "")
hss.dlg(co,hss.E,"The arcade is right here, further down are the carnival games, and all the way down at the other end of the midway are the rides.")
hss.dlgA(co,hss.U,"The ~carnival games~ sound like a fun place to start.",1)
hss.evt(co,"A sketchy carnival barker waves you both over to his station, promising to guess your weight.", "")
hss.dlgA(co,hss.E,"Okay, buddy, how about we make this more... interesting?",1)
hss.dlgA(co,hss.E,"I'm going to guess ~your~ weight.",1)
end
function outro_date_0005_2(co)
hss.evt(co,"Ethan slaps a five-spot in the barker's hand. Before the barker can speak, Ethan starts rattling off stats...", "")
hss.dlg(co,hss.E,"163 pounds. Five feet ten minus those work boots. 43, no 44 years old--")
hss.dlgA(co,hss.U,"You're saying this guy is just 44?",4)
hss.dlg(co,hss.E,"It's not the age. It's the mileage...")
hss.evt(co,"The barker shakes his head in disbelief and reaches for a small stuffed bear.", "")
hss.dlg(co,hss.E,"Hang on there, P.T. Barnum. I'm not done. You live with your mom, you own a pet ferret...")
hss.dlg(co,hss.E,"And you ate at the Crab Shack for lunch. I'd recognize the scent of those garlic-jalapeno poppers anywhere.")
hss.evt(co,"This time, the barker offers Ethan a large stuffed animal. In turn, Ethan gives it to you.", "")
hss.dlgA(co,hss.U,"That was crazy Sherlock, Ethan!",4)
hss.dlg(co,hss.E,"Not to compare myself to a carnival huckster...")
hss.dlg(co,hss.E,"But sizing people up is basically my job description.")
hss.showQuestComplete(co)
hss.dlg(co,hss.U,"Sizing people up, huh? People like me?")
hss.dlgA(co,hss.E,"Obviously... it's how I know we're perfect for each other.",1)
hss.dlgA(co,hss.U,"If you're so good, can you tell what I want to do next?",1)
hss.evt(co,"You slyly glance toward the Whac-A-Mole game.", "")
hss.dlgA(co,hss.E,"...play Whac-A-Mole?",1)
hss.dlgA(co,hss.U,"Yep!",1)
end
function intro_date_0005_3(co)
hss.evt(co,"You sidle up to the Whac-A-Mole table and heft the cartoonishly large mallet over your head.", "")
hss.dlg(co,hss.E,"Just a quick word of advice...")
hss.dlg(co,hss.E,"Despite the name, Whac-A-Mole is a delicate game, a game of finesse...")
hss.dlg(co,hss.E,"Be quick, but more importantly, be ~accurate.~")
hss.dlgA(co,hss.U,"Any other dispatches from the front lines, Commander Obvious?",1)
hss.dlgA(co,hss.E,"Heh, it's your game.",1)
end
function outro_date_0005_3(co)
hss.evt(co,"Ethan drops a token into the Whac-A-Mole machine. The lights begin to flash.", "")
hss.dlg(co,hss.E,"Like I said, just remember to--")
hss.dlgA(co,hss.U,"WHAAAACKKK!",1)
local whack = 0;
local miss = 0;
local strike = 0;
local randomtext = 0;
while whack == 0 do
local choice = hss.showTextMenu(co, "How do you whack?", "WHACK!|WHIFF!|WHIFF!|WHIFF!", true, 2);
if choice == 0 then
strike = strike + 1;
if strike < 8 then
whack = 0;
randomtext = math.random(3);
if randomtext == 1 then
hss.evt(co,"You whack a mole!", "",hss.REWARD_COINS,1)
elseif randomtext == 2 then
hss.evt(co,"Whack!", "",hss.REWARD_COINS,1)
else
hss.evt(co,"You deftly strike a mole!", "",hss.REWARD_COINS,1)
end
else
whack = 2;
end
else
miss = miss + 1;
if miss < 3 then
whack = 0;
randomtext = math.random(3);
if randomtext == 1 then
hss.evt(co,"You miss!", "")
elseif randomtext == 2 then
hss.evt(co,"You accidentally whack Ethan!", "")
hss.dlgA(co,hss.E,"Hey now!",4)
hss.dlgA(co,hss.U,"Sorry!",4)
else
hss.evt(co,"You whack your own knee!", "")
hss.dlgA(co,hss.U,"Ow!",4)
end
else
whack = 1;
end
end
end
if whack == 1 then
hss.evt(co,"You whack wildly, missing the mole every time!", "")
hss.dlgA(co,hss.E,"Amazing. If you were swinging randomly, you'd actually be doing better...",2)
hss.evt(co,"The timer ticks to zero, and the Whac-A-Mole machine spits out one ticket.", "")
hss.dlgA(co,hss.U,"Okay, so maybe I won't be trying out for the the professional Whac-A-Mole league anytime soon.",2)
hss.evt(co,"Ethan hands the ticket to you.", "")
hss.dlgA(co,hss.E,"At least you didn't leave empty-handed...",1)
hss.dlgA(co,hss.E,"That's why I always ask for a bottle of water when I take a meeting. Even if the deal falls through, at least I got hydrated.",1)
else
hss.evt(co,"You fall into a trance, whacking with impossible grace and precision! When the buzzer finally sounds, you're buried past your ankles in a pile of prize tickets.", "",hss.REWARD_COINS,1)
hss.dlgA(co,hss.U,"Whoa... how many tickets did I just earn?",4)
hss.dlgA(co,hss.E,"At least a couple thousand. That was some crazy King of Kong stuff you just pulled!",4)
if (hss.getCharacterType("YOU") == hss.CharacterType.MOVIE_STAR) then
hss.dlgA(co,hss.U,"No biggie. Talented actor, Whac-A-Mole superstar...",1)
elseif (hss.getCharacterType("YOU") == hss.CharacterType.DIRECTOR) then
hss.dlgA(co,hss.U,"No biggie. Talented director, Whac-A-Mole superstar...",1)
else
hss.dlgA(co,hss.U,"No biggie. Talented fashionista, Whac-A-Mole superstar...",1)
end
hss.dlgA(co,hss.U,"We both know I'm the whole package!",1)
end
hss.showQuestComplete(co)
if whack == 1 then
hss.evt(co,"You hand your single ticket to the attendant, and he pulls out a box of Nerds. He opens the box carefully, and then taps out exactly one Nerd into your palm.", "")
hss.dlgA(co,hss.U,"One Nerd? Is that even legal?",3)
hss.dlgA(co,hss.E,"...better than nothing? What next?",1)
else
hss.evt(co,"You shove your pile of tickets at the attendant, and he points to the shelves full of prizes behind him.", "")
hss.dlg(co,hss.U,"I'll take the...")
local choice = hss.showTextMenu(co, "Which prize do you choose?", "Pretty tiara!|Toy lightsaber!|Dothraki dictionary!");
if choice == 0 then
hss.evt(co,"You kneel, and Ethan places the tiara atop your head.", "")
hss.dlgA(co,hss.U,"How do I look?",1)
hss.dlg(co,hss.E,"Nothing short of breathtaking...")
hss.dlgA(co,hss.E,"And that tiara is kind of pretty too.",1)
elseif choice == 1 then
hss.evt(co,"You grip the fake lightsaber tightly, and it begins to glow!", "")
hss.dlgA(co,hss.E,"Most impressive, Padawan.",1)
hss.dlgA(co,hss.E,"The Force is strong with this one.",1)
else
hss.dlg(co,hss.E,"I mean it's cool, but do you think you'll ever actually use that thing?")
hss.dlg(co,hss.E,"Maybe you'd prefer a stuffed giraffe instead?")
hss.dlg(co,hss.U,"Vezh fin saja rhaesheseres vo zigereo adoroon ~giraffe!~")
hss.dlgA(co,hss.E,"Point taken.",4)
end
hss.dlgA(co,hss.E,"What next?",1)
end
hss.evt(co,"You notice a photo booth tucked away near the Ferris wheel.", "")
hss.dlg(co,hss.U,"You did mention photos?")
end
function outro_date_0005_4(co)
local tracker = 0;
if hss.hasGameProperty("FAME_TRACKER", "ZOE_DATING_CHANCE") then
tracker = hss.getGameProperty("FAME_TRACKER", "ZOE_DATING_CHANCE");
else
tracker = 3;
end
hss.evt(co,"As you and Ethan walk toward the photo booth, a whoop comes from high overhead. You crane your neck to look up.", "")
hss.dlgA(co,"ZOE","Yo! Cufflinks, is that you?",5)
if (tracker == 0) or (tracker == 1) then
hss.evt(co,"Zoe Rodriguez, wearing a climbing harness, waves down from the top of the Ferris wheel.", "")
else
hss.evt(co,"A gorgeous, athletic woman in a climbing harness waves down from the top of the Ferris wheel.", "")
end
hss.dlgA(co,"ZOE","Alley oop!",1)
hss.evt(co,"She leaps off. At the last second, her harness pulls taut, and she touches down gracefully between you and Ethan.", "")
if (tracker == 0) or (tracker == 1) then
hss.dlgA(co,"ZOE","Long time, no see, Cufflinks. {YOU}.",1)
else
hss.dlgA(co,"ZOE","Long time, no see, Cufflinks.",1)
end
hss.dlgA(co,hss.E,"~...Zoe?!~",4)
if (tracker == 3) then
hss.dlgA(co,hss.U,"~...Cufflinks?!~",4)
end
hss.showQuestComplete(co)
hss.dlgA(co,hss.E,"Zoe, uh... you're not supposed to be here!",4)
hss.dlgA(co,hss.E,"You're shooting ~The Climb~ in the Topanga Canyon tonight!",4)
hss.dlgA(co,"ZOE","I ~was.~ Then the cliff I was supposed to scale got blocked behind a freak mudslide...",1)
hss.dlgA(co,"ZOE","One hack rewrite later, and the climax is me climbing to the top of that Ferris wheel to rescue my deaf cousin from bio-terrorists.",1)
hss.evt(co,"Zoe points to the top of the Ferris wheel. An actor wearing a sinister-looking fake mustache waves back cheerily.", "")
hss.dlg(co,"ZOE","But enough about me... what brings Mr. Hollywood down to Tourist Town?")
end
function intro_date_0005_5(co)
local tracker = 0;
if hss.hasGameProperty("FAME_TRACKER", "ZOE_DATING_CHANCE") then
tracker = hss.getGameProperty("FAME_TRACKER", "ZOE_DATING_CHANCE");
else
tracker = 3;
end
if (tracker == 1) or (tracker == 0) then
hss.dlgA(co,hss.E,"I'm on a date, showing {YOU} around Los Angeles...",1)
hss.dlgA(co,"ZOE","That's adorable. I did that too when I was an up-and-comer...",1)
if (tracker == 1) then
hss.dlg(co,"ZOE","I even came here with Chance once...")
elseif (tracker == 0) then
hss.dlgA(co,"ZOE","I even came here with Chance once...",2)
end
hss.dlgA(co,"ZOE","Of course that was before I starred in a string of five #1 box office hits, won two fancy awards, and made my first million...",1)
hss.dlgA(co,"ZOE","So now I guess I'm just an ~up!~",1)
else
hss.dlgA(co,hss.E,"Actually... I'm on a date.",1)
hss.dlgA(co,hss.E,"{YOU}, this is Zoe Rodriguez. You might recognize her. She's a huge action star--",1)
hss.dlg(co,"ZOE","I bet {YOU} knows who I am.")
hss.dlgA(co,hss.U,"Oh, I do!",1)
hss.dlgA(co,hss.U,"I loved your work in Rogue NationZ. You were tough yet vulnerable in the face of a zombie apocalypse.",1)
if (hss.getCharacterType("YOU") == hss.CharacterType.MOVIE_STAR) then
hss.dlgA(co,hss.E,"And Zoe, this is {YOU}, an up-and-coming movie star!",1)
elseif (hss.getCharacterType("YOU") == hss.CharacterType.DIRECTOR) then
hss.dlgA(co,hss.E,"And Zoe, this is {YOU}, an up-and-coming director!",1)
else
hss.dlgA(co,hss.E,"And Zoe, this is {YOU}, an up-and-coming fashionista!",1)
end
hss.dlgA(co,"ZOE","An up-and-comer, huh? That's adorable. I remember when I was an up-and-comer...",1)
hss.dlgA(co,"ZOE","Of course that was before I starred in a string of five #1 box office hits, won two fancy awards, and made my first million...",1)
hss.dlgA(co,"ZOE","So now I guess I'm just an ~up!~",1)
end
local choice = hss.showTextMenu(co, "What do you say?", "Did you really say that?|More like up your own tailpipe!");
if choice == 0 then
hss.dlgA(co,hss.U,"If that was a humble brag, you forgot the humble part.",4)
hss.dlg(co,"ZOE","What humble part?")
else
hss.dlgA(co,"ZOE","So you think starring in hit movies ISN'T an accomplishment?",3)
hss.dlgA(co,hss.U,"Well, no... but I just meant--",2)
hss.dlgA(co,"ZOE","You think a woman shouldn't be proud of her success?",3)
hss.dlgA(co,hss.U,"What just happened?",4)
end
hss.dlgA(co,"ZOE","Anyway, enough about me. Ethan, Cufflinks, cuteness...",1)
hss.dlgA(co,"ZOE","I haven't heard from you in ages. Did you lose my number?",1)
hss.dlgA(co,hss.E,"...your number?",4)
end
function outro_date_0005_5(co)
hss.dlg(co,"ZOE","So did you lose my number or not, Ethan?")
hss.dlg(co,hss.E,"I don't lose phone numbers, Zoe. I don't lose period.")
hss.dlg(co,hss.E,"You never know when you'll need to reach back out to somebody.")
hss.dlgA(co,"ZOE","So very, very true...",1)
hss.dlg(co,hss.E,"But I asked to ~represent~ you, and you said no.")
hss.dlg(co,hss.E,"After that, I really didn't think there was much else left to talk about.")
hss.dlgA(co,"ZOE","But that was just ~business~, Cufflinks!",1)
hss.dlgA(co,"ZOE","In the meantime, we could still be friends...",1)
local tracker = 0;
if hss.hasGameProperty("FAME_TRACKER", "ZOE_DATING_CHANCE") then
tracker = hss.getGameProperty("FAME_TRACKER", "ZOE_DATING_CHANCE");
else
tracker = 3;
end
if (tracker == 0) then
hss.dlg(co,hss.E,"We ~are~ friends...")
hss.dlgA(co,"ZOE","But I mean ~very~ good friends.",9)
elseif (tracker == 1) then
hss.dlg(co,hss.E,"We ~are~ friends...")
hss.dlgA(co,"ZOE","But I mean ~very~ good friends.",9)
else
hss.dlgA(co,"ZOE","And I mean ~very~ good friends.",9)
end
hss.showQuestComplete(co)
hss.evt(co,"Zoe inches nearer to Ethan, blocking you out with her toned shoulders.", "")
hss.dlgA(co,"ZOE","Speaking of friends, some martial artist friends of ~mine~ are headed to Blitz after we wrap.",1)
hss.dlgA(co,"ZOE","And I've been told that the entire cast of ~The Walking Dead~ will be joining us for Top Pop karaoke.",1)
hss.dlgA(co,"ZOE","It'll be a very Hollywood night.",1)
hss.dlgA(co,hss.E,"The... ~entire~ cast...",4)
hss.dlgA(co,"ZOE","Seriously, you haven't lived till you've seen Daryl Dixon sing Colton Dixon.",1)
hss.dlgA(co,hss.E,"That's a...  very compelling offer, Zoe. Very, ~very~ compelling...",2)
hss.dlgA(co,hss.E,"And any other day, I would jump at the opportunity.",2)
hss.dlgA(co,hss.E,"Just jump-jump-jumpity-jump...",2)
hss.dlg(co,"ZOE","And then afterwards, we could maybe sing a duet...")
hss.dlgA(co,"ZOE","Maybe ~L.A. LOVE?~",9)
hss.evt(co,"Ethan sidesteps around Zoe to take your hand.", "")
if (tracker == 1) then
hss.dlgA(co,hss.E,"Zoe, I don't know what's going on between you and Chance...",3)
hss.dlg(co,hss.E,"But perhaps I wasn't clear enough before. When I said I was on a date...")
elseif (tracker == 0) then
hss.dlgA(co,hss.E,"Zoe, I'm sorry about what happened between you and Chance...",3)
hss.dlg(co,hss.E,"But perhaps I wasn't clear enough before. When I said I was on a date...")
else
hss.dlg(co,hss.E,"Perhaps I wasn't clear enough before. When I said I was on a date...")
end
hss.dlg(co,hss.E,"What I meant was... ~I'M ON A DATE.~")
if (tracker == 3) then
hss.evt(co,"Zoe turns back to look at you, truly acknowledging you for the first time.", "")
hss.dlg(co,"ZOE","I see. On a date. With your up-and-comer...")
else
hss.evt(co,"Zoe turns back to look at you, truly acknowledging your presence for the first time tonight.", "")
hss.dlg(co,"ZOE","But {YOU} isn't even famous!")
end
if hss.getCharacterGender("YOU") == hss.Gender.MALE then
hss.dlg(co,"ZOE","You do realize he's an up-and-comer, because he's ~not~ on our level.")
else
hss.dlg(co,"ZOE","You do realize she's an up-and-comer, because she's ~not~ on our level.")
end
hss.evt(co,"Ethan loops his arm around your waist and draws you away.", "")
hss.dlg(co,hss.E,"Zoe, I'd like to say it was a pleasure...")
hss.dlgA(co,hss.E,"But I think you need some alone time to cool off.",3)
hss.dlgA(co,"ZOE","You know where to find me if you change your mind, Cufflinks.",3)
end
function intro_date_0005_6(co)
hss.evt(co,"You and Ethan walk back the way you came.", "")
hss.dlg(co,hss.U,"So you wanted to represent Zoe?")
local tracker = 0;
if hss.hasGameProperty("FAME_TRACKER", "ZOE_DATING_CHANCE") then
tracker = hss.getGameProperty("FAME_TRACKER", "ZOE_DATING_CHANCE");
else
tracker = 3;
end
local choice = hss.showTextMenu(co, "What do you say?", "I can understand that!|She's a total psycho!");
if choice == 0 then
hss.dlgA(co,hss.E,"...you can?",4)
hss.dlg(co,hss.U,"She's famous. You're an agent. She's a star.")
hss.dlg(co,hss.U,"Representing her would've jumpstarted your career.")
hss.dlg(co,hss.E,"Yeah, I was still fresh in town when I asked her. Back then, I thought snagging a hot client was all that mattered.")
else
hss.dlg(co,hss.U,"She put the 'interrupted' after the 'girl...'")
hss.dlg(co,hss.U,"She flew ~into~ the Cuckoo's nest...")
hss.dlg(co,hss.U,"She put the 'shutter' in ~Shutter Isla--~")
hss.dlg(co,hss.E,"She's also an extremely ~famous~ female action star who can open a movie.")
hss.dlg(co,hss.E,"That makes her ~unicorn~ rare.")
hss.dlgA(co,hss.U,"Point taken. She's famous. You're an agent. She's a star.",2)
hss.dlg(co,hss.U,"Representing her would've jumpstarted your career.")
hss.dlg(co,hss.E,"Yeah, I was still fresh in town when I asked her. Back then, I thought snagging a hot client was all that mattered.")
end
hss.dlgA(co,hss.U,"...and now?",2)
hss.dlg(co,hss.E,"I talk a big game, but it's not just about ~business~ for me.")
hss.dlg(co,hss.E,"Taking on a client who already has a career, that's just cashing a check that someone else wrote.")
hss.dlg(co,hss.E,"The real satisfaction comes from finding that special person, that unknown client I believe in absolutely, with my ~everything...~")
hss.dlg(co,hss.E,"Someone like ~you.~")
hss.dlgA(co,"ZOE","There was a time people used to talk to me like that.",2)
hss.evt(co,"You and Ethan turn around to see Zoe walk up.", "")
hss.dlgA(co,hss.U,"~...Zoe?~",4)
end
function outro_date_0005_6(co)
hss.evt(co,"Zoe steps over to where you and Ethan are talking.", "")
hss.dlgA(co,hss.E,"Zoe, it's a little soon for a sequel to our last conversation.",3)
hss.dlgA(co,"ZOE","Actually, this is more like a ~reboot.~",2)
hss.dlgA(co,"ZOE","I want to apologize for earlier...",2)
local tracker = 0;
if hss.hasGameProperty("FAME_TRACKER", "ZOE_DATING_CHANCE") then
tracker = hss.getGameProperty("FAME_TRACKER", "ZOE_DATING_CHANCE");
else
tracker = 3;
end
if (tracker == 0) then
hss.dlgA(co,"ZOE","After Chance and I ended, things haven't been okay...",2)
hss.dlgA(co,"ZOE","{YOU}, I remembered how great a guy Ethan is.",2)
elseif (tracker == 1) then
hss.dlgA(co,"ZOE","The thing is, I love Chance very much, but we had a fight. A really bad one...",2)
hss.dlgA(co,"ZOE","{YOU}, I remembered how great a guy Ethan is.",2)
else
hss.dlgA(co,"ZOE","The thing is, I have a boyfriend who I love very much, but we had a fight. A really bad one...",2)
hss.dlgA(co,"ZOE","{YOU}, I remembered how great a guy Ethan is.",2)
end
hss.dlgA(co,"ZOE","And I just went after him. Going after things is what I do.",2)
hss.dlgA(co,"ZOE","Marathons. Black belts. Insane work-out schedules... ~romance.~",2)
hss.dlgA(co,"ZOE","That intensity is what makes me an amazing action star, and it's also what makes me an amazing jerk sometimes.",2)
hss.showQuestComplete(co)
hss.evt(co,"There's an announcement from set. Zoe turns sadly to walk away.", "")
local choice = hss.showTextMenu(co, "What do you say?", "Wait! Apology accepted!|Just keep walking!");
if (choice == 0) then
hss.dlg(co,hss.U,"Just don't ever let it happen again. Otherwise, we might have to throw down.")
hss.dlgA(co,"ZOE","You do know I've mastered 13 different martial arts?",1)
hss.dlg(co,hss.U,"Do I look scared?")
hss.dlg(co,"ZOE","You're a fighter. I can see why Ethan loves you.")
hss.dlgA(co,hss.E,"~...loves?~",4)
hss.dlg(co,"ZOE","Oh please, Ethan... it's written all over your face.")
hss.evt(co,"Zoe walks off, and Ethan turns to you. You reach down to take his hand.", "")
else
hss.evt(co,"Zoe glances back.", "")
hss.dlgA(co,"ZOE","It's okay... I deserve that...",2)
hss.dlg(co,"ZOE","You're tough-as-nails, {YOU}. I can see why Ethan loves you.")
hss.dlgA(co,hss.E,"~...loves?~",4)
hss.dlg(co,"ZOE","Oh please, Ethan... it's written all over your face.")
hss.evt(co,"Zoe walks off, and Ethan turns to you. You reach down to take his hand.", "")
end
hss.dlgA(co,hss.U,"Ethan, I just realized something. Zoe is a huge movie star, and you took my side...",1)
hss.dlgA(co,hss.E,"Hey! No need to make a big deal out of it...",1)
hss.dlgA(co,hss.E,"Tonight was supposed to be about getting away from all the drama of Hollywood.",2)
hss.evt(co,"Nearby, the lights on the carnival games begin to shut off.", "")
hss.dlgA(co,hss.E,"And now it's getting late...",2)
hss.dlgA(co,hss.E,"The Ferris wheel is off-limits for the shoot, and the roller coaster just went dark.",2)
hss.dlg(co,hss.U,"Actually, there might be time for one last touristy thing...")
hss.evt(co,"You direct your eyes toward the photo booth you'd looked at earlier.", "")
hss.dlg(co,hss.U,"What am I thinking?")
hss.dlgA(co,hss.E,"How about we go make some memories?",1)
end
function outro_date_0005_7(co)
hss.evt(co,"You and Ethan squeeze into the photo booth. The flash triggers!", "")
hss.evt(co,"In the first photo, you're both still getting situated. In the second, you both smile at the camera.", "")
hss.dlgA(co,hss.U,"...",1)
hss.dlgA(co,hss.E,"...",1)
hss.evt(co,"In the third, you're make funny faces...", "")
hss.evt(co,"But in the last photo, Ethan kisses you tenderly, sweetly...", "")
hss.dlgA(co,hss.U,"...",9)
hss.dlgA(co,hss.E,"...",9)
hss.evt(co,"It's a kiss you'll look back on fondly for the rest of your life.", "")
hss.showQuestComplete(co)
hss.evt(co,"That evening, you and Ethan return to your dorm. He massages your shoulders as you scan your photos and upload them to Instagram.", "")
hss.dlgA(co,hss.E,"So not too bad. You got a stuffed animal, I got accosted by an action star who wanted some ~action...~",1)
hss.dlgA(co,hss.E,"But not to worry. There are plenty more touristy things left to do in Hollywood!",1)
hss.dlg(co,hss.U,"Actually, after tonight, I wonder if a swanky Hollywood club might be safer!")
hss.dlgA(co,hss.E,"Either way, either way...",1)
hss.dlgA(co,hss.E,"I'll be happy as long as we're together.",1)
end
hss.checkEnvironment({"YOU"})
hss.runOpt()
