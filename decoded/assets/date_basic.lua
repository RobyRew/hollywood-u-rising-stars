function date_concertbackstage_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I just went backstage after a concert!")
hss.dlgA(co,hss.D2,"We rocked it all night! We met the band, listened to stories about being on the road, and then danced to awesome remixes until midnight.",8)
hss.dlgA(co,hss.D1,"We were swaying together and gazing into each other's eyes. It was such a romantic moment...",9)
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} and I both decided that was going to be ~our~ song!",1)
hss.dlgA(co,hss.D1,"I get weak just knowing that every time I hear that music, it'll remind me of {DATE_CHAR_2_NAME}...",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} partied backstage after a show! Are there romantic duets in their future?";
function date_farmersmarket_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} just took me to a farmers' market!")
hss.dlgA(co,hss.D2,"We sampled huge organic strawberries dipped in homemade dark chocolate and fed each other delicious kernels of air-popped caramel corn!",1)
hss.dlgA(co,hss.D1,"We even learned how to make blood orange mojitos!",1)
hss.dlgA(co,hss.D2,"Then we swapped minty fresh kisses as we walked home with bags and bags of fresh fruits and veggies.",1)
hss.dlgA(co,hss.D1,"Fresh produce? Fresh kisses? You could say my relationship with {DATE_CHAR_2_NAME} is 100% fresh!",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} just took {CHARACTER_1} to a farmers' market! Is their love as sweet as fresh berries?";
function date_skybar_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I just spent a night on top of the world! We partied at Skybar at the Mondrian.")
hss.dlg(co,hss.D2,"We dove into the infinity pool as soon as we arrived, then dried off with some delicious drinks!")
hss.dlgA(co,hss.D2,"And the view was just stunning...",1)
hss.dlgA(co,hss.D1,"Yeah! We cuddled on a candlelit ledge where we could see all of Los Angeles lit up beneath us.",1)
hss.dlgA(co,hss.D2,"I wasn't talking about the city...",1)
hss.dlgA(co,hss.D1,"Aww...flattery will get you anything. Specifically, another date with me!",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} went to a rooftop party! Is their love reaching new heights? Or should they keep their feet on the ground?";
function date_drawing_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} just spent hours drawing a portrait of me! It came out ~soooooo~ good!")
hss.dlgA(co,hss.D2,"What can I say? {DATE_CHAR_1_NAME} is an inspiration.",1)
hss.dlgA(co,hss.D1,"Just knowing {DATE_CHAR_2_NAME}'s eyes were all over me gives me goosebumps.",9)
hss.dlgA(co,hss.D2,"Looking at {DATE_CHAR_1_NAME}'s, uh, ~physique~ might have made me blush a little bit...",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} completed a beautiful painting of {CHARACTER_1}! Are they in love, or just drawn that way?";
function date_minigolf_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} took me mini-golfing... I was kinda thinking it was a little lame, but then...")
hss.dlgA(co,hss.D2,"...I might have sort of jumped into a pond to retrieve {DATE_CHAR_1_NAME}'s ball...",4)
hss.dlgA(co,hss.D1,"Seeing the lengths {DATE_CHAR_2_NAME} will go to keep me happy, it made the night worth it.",1)
hss.dlgA(co,hss.D1,"Plus, {DATE_CHAR_2_NAME} looked so cute all soaking wet like that, we couldn't ~not~ make-out on the other side of the windmill.",1)
hss.dlgA(co,hss.D2,"I'll never look at windmills the same again...",4)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} just took {CHARACTER_2} on a mini-golf date! Is {CHARACTER_1}'s game above par?";
function date_themepark_success(co)
hss.dlgA(co,hss.D1,"I took {DATE_CHAR_2_NAME} to Six Flags: Magic Mountain.",1)
hss.dlgA(co,hss.D2,"It's basically rollercoaster paradise.",1)
hss.dlgA(co,hss.D1,"We went on nearly every ride, and we made sure to go on all our favorites twice. {DATE_CHAR_2_NAME} seemed unfazed the whole time!",1)
hss.dlgA(co,hss.D2,"The rides definitely thrilled me, but being close to {DATE_CHAR_1_NAME}'s was the greatest thrill of all!",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} took {CHARACTER_2} to Magic Mountain! Is their relationship headed to dizzying heights?";
function date_premiere_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} took me to the premiere of the latest Chris Winters movie!",1)
hss.dlgA(co,hss.D2,"We walked the red carpet, but it's hard to say who was looking more fab.",1)
hss.dlgA(co,hss.D1,"~Definitely~ {DATE_CHAR_2_NAME}.",1)
hss.dlgA(co,hss.D2,"The movie was nice. {DATE_CHAR_1_NAME} was nicer.",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} went to a movie premiere together! Was this opening weekend success a sign of good things to come?";
function date_clippers_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} and I went to a Clippers game!",1)
hss.dlgA(co,hss.D2,"I'm not a big basketball fan... also, I was, like, Clippers? Come on. The team people think about in L.A. is the Lakers.",1)
hss.dlgA(co,hss.D1,"It's a new era. The Clippers are good. The Lakers are bad. And {DATE_CHAR_2_NAME}'s... well, you'll see.",1)
hss.dlgA(co,hss.D2,"LET'S! GO! CLIP-PERS! WOOOOOOOOO!",5)
hss.dlgA(co,hss.D1,"Turns out that blind, somewhat misguided adulation's a big turn-on.",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} took {CHARACTER_2} to a pro basketball game! #Sportsball";
function date_classyparty_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} somehow got invited to a classy party in Palos Verdes.",1)
hss.dlgA(co,hss.D2,"I know a guy.",1)
hss.dlgA(co,hss.D2,"Anyway, {DATE_CHAR_1_NAME} was just ~a little~ starstruck.",1)
hss.dlgA(co,hss.D1,"So many famous people! Taylor Swift, Chris Hemsworth, Tina Fey. Even the waiters were celebrities! I basically died!",4)
hss.dlgA(co,hss.D2,"I get the feeling {DATE_CHAR_1_NAME} had a good time... and is up for more.",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} invited {CHARACTER_1} to a classy party filled with celebs! Are {CHARACTER_1}'s thoughts filled with stars... or {CHARACTER_2}?";
function date_extras_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} hooked us up with a chance to appear in a movie as extras! So exciting!",5)
hss.dlgA(co,hss.D2,"We got cast as regular people walking in the background. The director had to yell cut because of us.",1)
hss.dlgA(co,hss.D1,"I couldn't stop looking at {DATE_CHAR_2_NAME}. I guess I seemed 'too attracted'.",1)
hss.dlgA(co,hss.D2,"That's all right by me.",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} got parts in a movie together! Is their love EXTRA real?";
function date_playboy_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} managed to get us into a party at the Playboy Mansion!",1)
hss.dlgA(co,hss.D2,"What {DATE_CHAR_1_NAME} wants, {DATE_CHAR_2_NAME} provides.",1)
hss.dlgA(co,hss.D1,"It was basically the best night of my life... that I can never talk about.",1)
hss.dlgA(co,hss.D2,"Well, the pool was nice.",1)
hss.dlgA(co,hss.D1,"Yeah. The pool was nice. The bunnies too. Er, I've said too much.",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} hung out at a very... 'unique' mansion in L.A. Apparently, the pool was nice.";
function date_karaoke_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} took me out on a karaoke date! I love singing!",1)
hss.dlg(co,hss.D2,"How can I sum up {DATE_CHAR_1_NAME}'s singing voice?")
hss.dlgA(co,hss.D2,"Blood-curdlingly awful? That feels accurate.",1)
hss.dlgA(co,hss.D1,"I had ~so~ much fun!",5)
hss.dlgA(co,hss.D2,"Who knew enthusiasm in the face of abysmal talent was so hot?! I can't wait to hear {DATE_CHAR_1_NAME} on our ~next~ date!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} took {CHARACTER_1} out for karaoke! Is their relationship pitch perfect?";
function date_hwu_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} introduced me to a new cell phone game right before our big date!",1)
hss.dlgA(co,hss.D2,"As soon as {DATE_CHAR_1_NAME} started playing, I knew I was witnessing something special.",1)
hss.dlgA(co,hss.D1,"I totally didn't care about the date anymore! I just wanted to play 'Hollywood U: College Story!'",1)
hss.dlgA(co,hss.D2,"What a great game! Whoever created it deserves, like, some fan art on Tumblr or something. Just saying...",9)
hss.dlgA(co,hss.D1,"I thought it was okay. I mean, why does everything cost diamonds?!",2)
hss.dlgA(co,hss.D1,"I guess as long as {DATE_CHAR_2_NAME}'s happy, I'm happy.",1)
hss.dlgA(co,hss.D1,"I'd give both the game and the date five stars! Woop woop!",5)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} played a fun mobile game together. Would you rate them 5-stars?";
function date_casino_success(co)
hss.dlgA(co,hss.D1,"I went with {DATE_CHAR_2_NAME} to a casino!",1)
hss.dlgA(co,hss.D2,"Hey, I figured if I was lucky enough to land {DATE_CHAR_1_NAME}, maybe I'd be lucky enough to win some money!",1)
hss.dlgA(co,hss.D1,"We won some, but unfortunately we lost even more...",2)
hss.dlgA(co,hss.D2,"Still... it's hard to feel like a loser when I left the tables with someone like {DATE_CHAR_1_NAME}.",9)
hss.dlgA(co,hss.D1,"Aww! Now I really like our odds of going out again!",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} gambled together on their date! Is their relationship a sure bet or a total crapshoot?";
function date_pudleys_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} took me to, uh, ~Pudley's~ for our date...")
hss.dlgA(co,hss.D2,"Yeah, yeah, haters are going to hate. Pudley's might be a chain restaurant, but it's not as bad as people say.",3)
hss.dlgA(co,hss.D1,"I... actually... had fun there?",4)
hss.dlgA(co,hss.D2,"See? Honestly, company's what really matters. And {DATE_CHAR_1_NAME}'s the ~best~ company.",1)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} said that? We're definitely going out again!",9)
hss.dlgA(co,hss.D1,"Just... maybe not to a place that sells 'cheesy greasy sweet potato poppers...'",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} ate at a chain restaurant on their date! Is their chemistry one-of-a-kind? Or just like every other couple's?";
function date_magic_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} and I caught a magic show for our date!",1)
hss.dlgA(co,hss.D2,"The magician turned a bedsheet into a bunch of white doves! How? HOW?!",4)
hss.dlgA(co,hss.D1,"We spent most of the night with our jaws on the floor.",1)
hss.dlgA(co,hss.D2,"Some of that was the magic show, some of it was {DATE_CHAR_1_NAME} looking amazing.",1)
hss.dlgA(co,hss.D1,"What can I say? I can be spellbinding.",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} were bedazzled by a magician for their date! Have they put spells on each other?";
function date_speakeasy_success(co)
hss.dlgA(co,hss.D1,"I met up with {DATE_CHAR_2_NAME} at an old-fashioned speakeasy.",1)
hss.dlgA(co,hss.D2,"You had to have a password just to get inside! And everything was decorated from the 1920's!",1)
hss.dlgA(co,hss.D1,"They had a drink on the menu called a Betty Boop.",1)
hss.dlgA(co,hss.D1,"Nothing could ~prohibit~ me from going out with {DATE_CHAR_2_NAME} again!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} had fancy drinks together at a speakeasy! Are they the cat's pajamas?";
function date_soulfood_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} insisted we go to this super famous place in L.A. that serves chicken and waffles.",1)
hss.dlgA(co,hss.D2,"It's basically the best.",1)
hss.dlgA(co,hss.D1,"I had my doubts. I mean... chicken? Waffles? Why not combine bananas and pickles while we're doing crazy things?",4)
hss.dlgA(co,hss.D2,"But?",1)
hss.dlgA(co,hss.D1,"But... it was like the greatest food I've ever had! I'll never doubt {DATE_CHAR_2_NAME} again!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} treated {CHARACTER_1} to chicken and waffles! Is there a better, odder combination of food?";
function date_lakers_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} and I went to a Lakers game. I was expecting to be bored by basketball.",1)
hss.dlgA(co,hss.D2,"I had to let {DATE_CHAR_1_NAME} know that a Lakers game isn't ~just~ about the game.",1)
hss.dlgA(co,hss.D1,"Hello! Jack Nicholson, Leonardo Dicaprio, Selena Gomez! ~Everyone~ was there!",1)
hss.dlgA(co,hss.D2,"Ask {DATE_CHAR_1_NAME} who won?",1)
hss.dlgA(co,hss.D1,"Who won?! I did! I saw ~so~ many celebrities, and I got to spend time with {DATE_CHAR_2_NAME}!",5)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} watched a basketball game! Was their attention on the game, the celebs, or each other?";
function date_hollywoodbowl_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} took me to Hollywood Bowl! It's an outdoor amphitheater that has orchestra music!",1)
hss.dlgA(co,hss.D2,"We ate popcorn and listened to them play famous songs from video games!",1)
hss.dlgA(co,hss.D1,"The best was this one about the first day in high school... I can't remember where I heard it before...",1)
hss.dlgA(co,hss.D2,"It's totally our song now.",1)
hss.dlgA(co,hss.D1,"Squee! It so is!",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} took {CHARACTER_1} out to Hollywood Bowl! Is their relationship off-key... or a concert masterpiece?";
function date_streetracing_success(co)
hss.dlgA(co,hss.D1,"So, {DATE_CHAR_2_NAME} and I were about to have a totally NORMAL date...",1)
hss.dlgA(co,hss.D1,"...when we pulled up to a red light, and these guys next to us started revving their engines!",4)
hss.dlg(co,hss.D1,"I thought for sure {DATE_CHAR_2_NAME} was just going to ignore them...")
hss.dlgA(co,hss.D2,"But I ~never~ back down from a challenge.",3)
hss.dlgA(co,hss.D1,"The light turned green, and suddenly we were in a street race!",4)
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} screamed a lot. I'm not sure if they were screams of approval or not.",2)
hss.dlgA(co,hss.D1,"I was definitely frightened... but on the other hand, speed totally turns me on! And this was ~hot!~",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} got into a street race! Was it too fast and too furious for {CHARACTER_1}? Or just the right amount of fast and the perfect amount of furious?";
function date_glamping_success(co)
hss.dlg(co,hss.D1,"You know what's better than camping? ~Everything.~")
hss.dlgA(co,hss.D1,"Which is why when {DATE_CHAR_2_NAME} asked me to go ~glamping,~ I was skeptical.",2)
hss.dlgA(co,hss.D2,"Glamping is like all the awesomeness of modern life combined with ~none~ of the horrible parts of camping.",1)
hss.dlgA(co,hss.D1,"It was craze-mazing! TV, a campfire, ~and~ a starry sky?! Take my money, Mother Nature!",5)
hss.dlgA(co,hss.D2,"We loved it. I can't wait to see ~s'more~ of {DATE_CHAR_1_NAME}!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} introduced {CHARACTER_1} to glamping! Did the best of two things bring them together?";
function date_boxing_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} decided to take me to, of all things, a boxing match...",2)
hss.dlgA(co,hss.D2,"I know it's not {DATE_CHAR_1_NAME}'s favorite thing, but I love boxing! It's so intense!",1)
hss.dlgA(co,hss.D1,"I could barely stand to see all that raw violence, but {DATE_CHAR_2_NAME} was having such a good time.",1)
hss.dlgA(co,hss.D2,"I guess the only thing sweeter than the sweet science is {DATE_CHAR_1_NAME}!",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} took {CHARACTER_1} to a boxing match! Which one of them is a pure knockout?";
function date_fairykingdom_success(co)
hss.dlgA(co,hss.D1,"I couldn't believe it! {DATE_CHAR_2_NAME} and I went to the Fairy Kingdom for our date!",4)
hss.dlgA(co,hss.D2,"Carl's Crocodile Jungle Float? The Fairy Castle? Dr. Frog's Haunted Mansion? I was ~so~ excited!",5)
hss.dlgA(co,hss.D1,"We went on every ride twice! Then we devoured a bunch of cotton candy!",1)
hss.dlgA(co,hss.D2,"It was just as special as my first time there. Every date with {DATE_CHAR_1_NAME} is just so magical!",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} had a magical time at the Fairy Kingdom! Will they live happily ever after?";
function date_headshots_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} asked me out on an unusual date... to get our headshots taken!",1)
hss.dlgA(co,hss.D2,"It ended up being kinda fun! We were both looking our best...",1)
hss.dlgA(co,hss.D1,"When {DATE_CHAR_2_NAME} flashed that superstar smile for the camera, I could feel myself going weak.",1)
hss.dlgA(co,hss.D2,"Not only did we have a good time, we've also got headshots for our future lives as stars!",1)
hss.dlgA(co,hss.D1,"Hopefully it'll be a future ~together...~",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} got their headshots taken together! Is their relationship photogenic? Or out of focus?";
function date_movieline_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} and I showed up really early for the sci-fi blockbuster movie of the millennium!",1)
hss.dlgA(co,hss.D2,"To prepare for the long wait in the line, we brought playing cards, snacks, blankets, you name it!",1)
hss.dlgA(co,hss.D1,"I loved it so much! If we can have a great time ~standing in line,~ then we're probably a good match.",1)
hss.dlgA(co,hss.D2,"We were having so much fun that we were actually a little disappointed when they let us into the movie...",1)
hss.dlgA(co,hss.D1,"I can't ~wait~ for our next date!",5)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2}... waited in line together? Are they next in line for love?";
function date_weirdrestaurant_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} took me out to a ~weird~ restaurant... our bread came in a cage.",4)
hss.dlgA(co,hss.D2,"That was just the start. Ugh. I felt so embarrassed.",2)
hss.dlgA(co,hss.D1,"I ordered a water and they gave me a glass of ~vapor.~ I didn't know if I was supposed to drink it or inhale it.",4)
hss.dlgA(co,hss.D2,"~So. Embarrassed.~",2)
hss.dlgA(co,hss.D1,"Weirdness aside, seeing {DATE_CHAR_2_NAME} apologize for the restaurant all night was adorable!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} took {CHARACTER_1} out to an embarrassingly weird restaurant. Was {CHARACTER_2}'s apologetic blushing a turn-on?";
function date_advancescreening_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} and I caught an advance screening of a romantic comedy.",1)
hss.dlgA(co,hss.D2,"The movie was only okay, but that's beside the point...",1)
hss.dlgA(co,hss.D1,"The ~best~ part is that now we get to tell people we saw it before they've even had the chance!",1)
hss.dlgA(co,hss.D2,"Is there a better way to connect with someone than by reveling in your mutual exclusivity?",1)
hss.dlgA(co,hss.D1,"Spoiler alert! There isn't!",5)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} went to an advance screening together! Spoiler alert: they like each other.";
function date_universalstudios_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} and I went to Universal Studios together!",1)
hss.dlgA(co,hss.D2,"In case you don't know, it's a movie-themed theme park!",1)
hss.dlgA(co,hss.D1,"It was straight up awesome! It felt great to stop studying movies and just enjoy going on rides ~based~ on them!",1)
hss.dlgA(co,hss.D2,"Will there be a sequel to '{DATE_CHAR_1_NAME} and {DATE_CHAR_2}: Awesome Date'? Hell yes!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} had a blast at a theme park! '{CHARACTER_1} and {CHARACTER_2} 2: Awesomer Date' coming soon!";
function date_audreymarathon_success(co)
hss.dlgA(co,hss.D1,"I love watching movies almost as much I love being a part of them! Especially the best of the best...",1)
hss.dlgA(co,hss.D2,"That's why I planned an Audrey-winning movie marathon for {DATE_CHAR_1_NAME}!",1)
hss.dlgA(co,hss.D1,"We watched four movies in ~one~ night, including one of my all-time faves, 'Doves of New England'!",1)
hss.dlgA(co,hss.D2,"Don't tell {DATE_CHAR_1_NAME}, but I fell asleep during that doves movie. So many random shots of birds!",2)
hss.dlgA(co,hss.D1,"I know {DATE_CHAR_2_NAME} fell asleep, but I don't care...",1)
hss.dlgA(co,hss.D1,"Planning this for me was so sweet, {DATE_CHAR_2_NAME} deserves an award!",1)
hss.dlgA(co,hss.D2,"Sexiest of All Time?",1)
hss.dlgA(co,hss.D1,"Hmmm... more like... Most Likely to Get Another Date.",1)
hss.dlgA(co,hss.D2,"I'll take it!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} watched award-winning movies on their date! What award does their relationship deserve?";
function date_sandiego_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} took me on a day trip to San Diego!",1)
hss.dlgA(co,hss.D2,"I love it down there! The weather's perfect, and everything just feels so relaxing!",1)
hss.dlgA(co,hss.D1,"We went to these cliffs overlooking a beach in La Jolla and just watched the sunset.",1)
hss.dlgA(co,hss.D2,"Then, with the sky lit up with reds and oranges and pinks, I kissed {DATE_CHAR_1_NAME}!",9)
hss.dlgA(co,hss.D1,"It wasn't my first kiss, but it was definitely my best kiss!",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} kissed {CHARACTER_1} while the sun set in San Diego! Will there be more to come? Or has the light left their relationship?";
function date_blockparty_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME}'s cousins were hosting a block party, and {DATE_CHAR_2_NAME} asked me to come along!",1)
hss.dlgA(co,hss.D2,"They host one every year. It's a big deal. They close off the streets and everything.",1)
hss.dlgA(co,hss.D1,"There were BBQ's and live music and a popcorn machine. Oh! And beer! So much beer!",1)
hss.dlgA(co,hss.D1,"I loved it! {DATE_CHAR_2_NAME} and I danced in the street together!",8)
hss.dlgA(co,hss.D2,"Thank you, cousins!",8)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} and {CHARACTER_1} went to a block party! Can't shut THEM down!";
function date_beermuseum_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} had this great idea to go to a museum dedicated to beer!",1)
hss.dlgA(co,hss.D2,"It was inside an enormous brewery with these giant steel beer vats!",1)
hss.dlgA(co,hss.D1,"There was some old-fashioned brewery equipment ~and~ a buggy, which was really cool, but that wasn't even the best part.",1)
hss.dlgA(co,hss.D2,"The best part was a ride that simulated the journey of a beer bottle!",1)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} and I survived the journey from 'empty bottle' to 'shipped and ready'.",1)
hss.dlgA(co,hss.D2,"I guess you could say the whole date was ~intoxicating.~",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} and {CHARACTER_1} checked out a beer museum! Are they now drunk with love?";
function date_villablanca_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} and I had a romantic dinner at Villa Blanca.",1)
hss.dlg(co,hss.D2,"It's an Italian restaurant owned by one of the stars of 'Real Housewives of Beverly Hills'.")
hss.dlgA(co,hss.D1,"I'll admit, I was feeling down because I was expecting more drama...",2)
hss.dlgA(co,hss.D2,"That's when I decided to spice things up!",1)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} started acting like one of the housewives. I couldn't stop laughing.",1)
hss.dlgA(co,hss.D1,"Anyone that committed to entertaining me definitely deserves another date!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} and {CHARACTER_1} had dinner at a celeb's restaurant! Would their relationship get a good review on Yelp?";
function date_cirque_success(co)
hss.dlgA(co,hss.D1,"I was so happy when {DATE_CHAR_2_NAME} surprised me with tickets to go see Cirque du Soleil downtown!",1)
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} got nervous when the performers balanced on that tightrope.",1)
hss.dlgA(co,hss.D1,"Come on! One guy was on the tightrope ~on a tricycle!~ On one leg! With a stack of bowls on his head!",4)
hss.dlgA(co,hss.D1,"Just balancing so high up is enough! I don't need them to make it ~harder!~",4)
hss.dlgA(co,hss.D2,"I never knew projected anxiety could be so adorable. We're totally going out again.",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} got circus tickets, and {CHARACTER_1} accepted on the spot! Is their relationship serious, or are they just clowning around?";
function date_bookpremiere_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} invited me to a book premiere! I didn't even know that was a thing!",1)
hss.dlgA(co,hss.D2,"It was the release of the latest in the 'Blood Treasure' series by Kenneth Molgrove.",1)
hss.dlgA(co,hss.D1,"Everyone was dressed up as their favorite characters from the books!",1)
hss.dlgA(co,hss.D2,"I took a risk and dressed up as Hobbert, the giant lovable troll.",1)
hss.dlgA(co,hss.D1,"It was definitely weird. When your date shows up wearing giant ears and wielding a club, it's usually a bad sign.",2)
hss.dlgA(co,hss.D1,"But {DATE_CHAR_2_NAME} was ~so~ cute. I couldn't help but love it!",1)
hss.dlgA(co,hss.D2,"We're going out again next week. Bonus: I got a signed copy!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} invited {CHARACTER_1} to a book premiere! Will their romance be a short story... or novel-length?";
function date_outlets_success(co)
hss.dlgA(co,hss.D1,"What's better than shopping?! Nothing... Well, nothing, except...",1)
hss.dlgA(co,hss.D1,"~Shopping at an outlet!~ And that's where {DATE_CHAR_2_NAME} and I went for our date!",8)
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} ~really~ loves shopping.",4)
hss.dlgA(co,hss.D1,"So many sales, so little time! Isn't {DATE_CHAR_2_NAME} the best?",1)
hss.dlgA(co,hss.D2,"I think I picked a good date.",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} went shopping for their date! Did you even read that?! SHOPPING. DATE.";
function date_wrestling_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} took me to a wrestling match. I was ~very~ skeptical.",2)
hss.dlgA(co,hss.D2,"Yes, it's fake! Yes, it's over-the-top! But also, it's a lot of fun!",1)
hss.dlg(co,hss.D1,"I can't believe I'm saying this, but...")
hss.dlgA(co,hss.D1,"...I actually ~enjoyed~ wrestling. I got to boo somebody. How often do you get to do that?",1)
hss.dlgA(co,hss.D2,"I can't believe I converted {DATE_CHAR_1_NAME} to wrestling... or... wait... unless {DATE_CHAR_1_NAME}'s faking?",4)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} watched a wrestling match! Are they climbing to the top rope? Or down for the count?";
function date_escaperoom_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} introduced me to this thing called an escape room.",1)
hss.dlgA(co,hss.D2,"It's really fun! You and some friends team up and have one hour to solve a bunch of riddles and escape from a room!",1)
hss.dlgA(co,hss.D1,"I helped out with a lot of the puzzles! And seeing {DATE_CHAR_2_NAME} in action was such a turn-on.",1)
hss.dlgA(co,hss.D1,"Who knew {DATE_CHAR_2_NAME} was so smart?!",9)
hss.dlgA(co,hss.D2,"We escaped with a minute to spare!",1)
hss.dlgA(co,hss.D1,"You can lock me in a room with {DATE_CHAR_2_NAME} anytime!",9)
hss.dlgA(co,hss.D2,"Am I blushing? I can feel myself blushing...",4)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} escaped from a room together! Nothing creepy about that!";
function date_bungeejumping_success(co)
hss.dlgA(co,hss.D1,"I was ~soooooo~ scared for my bungee-jumping date with {DATE_CHAR_2_NAME}!",4)
hss.dlgA(co,hss.D2,"Really? If {DATE_CHAR_1_NAME} was scared, I didn't notice.",4)
hss.dlgA(co,hss.D1,"When I fell, my whole life flashed before my eyes!",4)
hss.dlgA(co,hss.D2,"I wonder what {DATE_CHAR_1_NAME} saw...",1)
hss.dlgA(co,hss.D1,"Don't tell, but I saw a future with {DATE_CHAR_2_NAME}, and it was just as thrilling as my jump!",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} went bungee jumping! They've defied gravity and death... are they... immortal?";
function date_shakespeareinpark_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} and I went to see Shakespeare in the Park!",1)
hss.dlgA(co,hss.D2,"We got to see Romeo and Juliet! Their relationship is just like mine with {DATE_CHAR_1_NAME}!",1)
hss.dlgA(co,hss.D1,"Uh... I hope not ~exactly~ like Romeo and Juliet.",2)
hss.dlgA(co,hss.D2,"Okay, ~2nd Act~ Romeo and Juliet. Not 5th Act.",1)
hss.dlgA(co,hss.D1,"Phew. Then, yes. I feel the same way.",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} saw Shakespeare in the Park! A rose by any other name would still smell as sweet as {CHARACTER_1}.";
function date_studying_success(co)
hss.dlgA(co,hss.D1,"I decided to go on a study date with {DATE_CHAR_2_NAME}!",1)
hss.dlgA(co,hss.D2,"We tried really hard to focus on our textbooks.",1)
hss.dlgA(co,hss.D1,"But I spent most of the time looking at {DATE_CHAR_2_NAME}'s beautiful eyes.",1)
hss.dlgA(co,hss.D2,"This might sound bad... I couldn't stop looking at {DATE_CHAR_1_NAME}'s perfect legs.",1)
hss.dlgA(co,hss.D1,"We learned a lot, but mostly about how we look.",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} couldn't keep their eyes off each other on their study date. Were they just preparing for their Anatomy final?";
function date_skydiving_success(co)
hss.dlg(co,hss.D1,"So I talked {DATE_CHAR_2_NAME} into going skydiving with me, and it was amazingly, stupendously--")
hss.dlgA(co,hss.D2,"--terrifying! I can't believe how high up we were! And I definitely didn't want to jump out of that plane...",4)
hss.dlgA(co,hss.D2,"But I took one look at {DATE_CHAR_1_NAME}'s face, and I knew that everything would be okay. And when we jumped and looked at the view... it was stunning!",1)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} was so brave! We just might be falling for each other...",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} just went skydiving! Is it love at first flight?";
function date_pool_success(co)
hss.dlg(co,hss.D1,"It was starting to heat up, so {DATE_CHAR_2_NAME} and I went to the pool to cool down!")
hss.dlg(co,hss.D1,"I got us lounge chairs at the poolside cabana... the whole thing was so relaxing!")
hss.dlgA(co,hss.D2,"Yeah, fluffy towels, tropical drinks, and a sweet view of {DATE_CHAR_1_NAME} in that little swimsuit?",1)
hss.dlgA(co,hss.D2,"Can I get a lifeguard to save me from falling in love?",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} lounged around in the pool cabana together! Sun's out, fun's out!";
function date_botanicalgarden_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I headed over to the botanical gardens!")
hss.dlgA(co,hss.D2,"The trellises... the blooming violets... it was all so beautiful!",1)
hss.dlgA(co,hss.D1,"My favorite part was the rose-lined walkway. Strolling hand-in-hand with {DATE_CHAR_2_NAME}...",9)
hss.dlg(co,hss.D2,"The violets were blue, the roses were red, and fantasies of {DATE_CHAR_1_NAME} danced in my head.")
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} just wandered through the botanical gardens with {CHARACTER_2}! Think their love is blooming?";
function date_bakingtogether_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} invited me over, and we baked molten lava chocolate cake!")
hss.dlgA(co,hss.D2,"Things got a little messy in the kitchen, but the cake turned out perfect!",1)
hss.dlg(co,hss.D1,"After all, baking ~is~ all about chemistry!")
hss.dlgA(co,hss.D2,"Oh, we've got chemistry.",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} baked a molten lava chocolate cake together! Isn't that just sweet?";
function date_planetarium_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I went to the planetarium together!")
hss.dlg(co,hss.D2,"We learned all about the planets and the stars and got to see the movement of the night sky...")
hss.dlg(co,hss.D1,"Knowing how much space is out there, it's hard not to feel small.")
hss.dlgA(co,hss.D1,"Then again, there's no one else that makes me feel more significant than {DATE_CHAR_2_NAME}.",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} just visited the planetarium with {CHARACTER_2}! Is their love written in the stars?";
function date_skateboard_success(co)
hss.dlgA(co,hss.D1,"For our date, {DATE_CHAR_2_NAME} took me skateboarding!",1)
hss.dlgA(co,hss.D2,"I ~was~ wondering why {DATE_CHAR_1_NAME} told me to bring a helmet...",4)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} wiped out a couple times but always got back on the board!",4)
hss.dlg(co,hss.D2,"I was either going to become a skateboarding pro or thoroughly impress {DATE_CHAR_1_NAME}!")
hss.dlgA(co,hss.D1,"Oh, I was impressed. Skateboarding skill is hot, but determination is even hotter!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} had an extreme date at a skatepark! Sounds like their romance is ramping up!";
function date_coffee_success(co)
hss.dlg(co,hss.D2,"{DATE_CHAR_1_NAME} and I discovered this amazing little coffee shop!")
hss.dlgA(co,hss.D1,"We cuddled in the window seat, sipped some ~delicious~ French roast, and watched the world go by...",1)
hss.dlgA(co,hss.D2,"Just sitting next to {DATE_CHAR_1_NAME} was enough to get my heart racing!",1)
hss.dlgA(co,hss.D1,"Hopefully that wasn't just the caffeine...",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} went out for coffee! Does this mean they like each other a latte?";
function date_smallplane_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} and I just flew over L.A. in a plane built for two!",1)
hss.dlgA(co,hss.D2,"We flew past the Hollywood sign...",1)
hss.dlgA(co,hss.D1,"That's where I said that {DATE_CHAR_2_NAME} was destined for big things...",1)
hss.dlgA(co,hss.D2,"And from there we could see all of downtown L.A...",1)
hss.dlgA(co,hss.D1,"...where I said {DATE_CHAR_2_NAME} is one in a million. Well, 10 million if you're going by the latest census numbers.",1)
hss.dlgA(co,hss.D2,"Finally, we took the plane out over the ocean, just as the sun was setting...",1)
hss.dlgA(co,hss.D1,"...and that's where I said 'I love you' to {DATE_CHAR_2_NAME}.",9)
hss.dlgA(co,hss.D2,"It was so magical! After I said, 'I love you' back, I couldn't resist sharing a kiss with {DATE_CHAR_1_NAME} as we soared into the sunset...",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} enjoyed a date aboard a two-person plane! Destination: romance!";
function date_discorollerskating_success(co)
hss.dlgA(co,hss.D1,"I took {DATE_CHAR_2_NAME} to a disco roller rink!",1)
hss.dlg(co,hss.D2,"I was skeptical at first, but it turns out rollerskating and disco is the perfect combination.")
hss.dlgA(co,hss.D1,"When {DATE_CHAR_2_NAME} and I did a perfect rollerskating routine to 'Y.M.C.A.', I knew we had something special!",1)
hss.dlgA(co,hss.D2,"I'm thinking of buying my own pair of rollerskates... because I've got roller disco fever!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} went to a disco roller rink! Looks like their romance will be stayin' alive!";
function date_orchestra_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} and I went to see the Hollywood Symphony Orchestra perform!",1)
hss.dlg(co,hss.D2,"They did all the classics... Beethoven, Mozart, Bach...")
hss.dlgA(co,hss.D1,"Plus all the great film scores! The conductor went all in during the 'Imperial March' from 'Star Wars'!",1)
hss.dlgA(co,hss.D2,"On top of all that, there were a few romantic pieces, too...",9)
hss.dlgA(co,hss.D1,"It was the perfect soundtrack to us making out in the back row!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} just saw a live orchestra! Did they conduct themselves well or give in to their bass instincts?";
function date_lasertag_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} and I went to a laser tag arena!",1)
hss.dlgA(co,hss.D2,"I was nervous at first... the whole thing took place in a maze filled with fog! I couldn't even find {DATE_CHAR_1_NAME}!",4)
hss.dlgA(co,hss.D1,"Midway through the match, I snuck up on {DATE_CHAR_2_NAME} and lined up the perfect shot...",1)
hss.dlgA(co,hss.D2,"But I counter-attacked with a surprise kiss!",1)
hss.dlgA(co,hss.D1,"What can I say? {DATE_CHAR_2_NAME} fights dirty...",1)
hss.dlgA(co,hss.D1,"...but I can't say I mind!",9)
hss.dlgA(co,hss.D2,"We didn't get the high score, but I definitely felt like a winner!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} went to a laser tag arena! Did Cupid upgrade to a laser gun and shoot them in the heart?";
function date_ballet_success(co)
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} and I went to see a performance of Tchaikovsky's 'Swan Lake'!",1)
hss.dlgA(co,hss.D1,"I had no idea what I was in for... 'Black Swan' made ballet seem pretty scary!",4)
hss.dlgA(co,hss.D1,"But by the time the show was over, I didn't want it to end! I'll admit, there might've been a few tears...",1)
hss.dlgA(co,hss.D2,"There were ~definitely~ tears. It was so cute!",1)
hss.dlgA(co,hss.D1,"I can't wait to go again! They're doing Prokofiev's 'Romeo and Juliet' next... I hope {DATE_CHAR_2_NAME} invites me!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} just saw a ballet! Did their relationship go from first position to second?";
function date_walkoffame_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} took me on a stroll down the Walk of Fame this evening!",1)
hss.dlgA(co,hss.D2,"I mapped out where all of {DATE_CHAR_1_NAME}'s favorite celebrities had their stars... plus a couple of my favs too!",1)
hss.dlgA(co,hss.D1,"And then, at the very end, {DATE_CHAR_2_NAME} bought me a souvenir star with ~my~ name it! It was so sweet!",9)
hss.dlg(co,hss.D2,"I'd bet anything that {DATE_CHAR_1_NAME} has a real star on the Walk of Fame one day. Just a matter of time...")
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} toured Hollywood's Walk of Fame together! Does their date deserve a gold star?";
function date_starmaps_success(co)
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} and I grabbed a Star Map and went on a tour of A-listers' mega-mansions together!",1)
hss.dlgA(co,hss.D1,"I know they say, 'money isn't everything,' but today I learned ~money is kinda nice.~",4)
hss.dlgA(co,hss.D2,"I told {DATE_CHAR_1_NAME} I can't decide if I want Clooney's sprawling estate or Sandra Bullock's skyscraper penthouse!",4)
hss.dlgA(co,hss.D1,"And I said I don't care where {DATE_CHAR_2_NAME} lives as long as we're together...",1)
hss.dlgA(co,hss.D1,"...but if it came down to it: always go with Clooney.",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} went on a Star Maps tour of celebrity mansions! What's your dream home?";
function date_venicefridays_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} had never been to First Fridays on Abbott Kinney Boulevard before, so I knew we just had to go.",1)
hss.dlgA(co,hss.D2,"It was like all of Venice Beach turned out for the delicious food trucks and amazing indie art vendors!",5)
hss.dlgA(co,hss.D1,"After some Indian-Korean fusion street tacos, we capped off the night with the best local brews I've ever tasted.",1)
hss.dlgA(co,hss.D2,"I wish ~every~ Friday were First Friday!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} sampled local food, drinks, and art at First Friday in Venice Beach! Gotta get down on Friday.";
function date_tarpits_success(co)
hss.dlg(co,hss.D1,"I took {DATE_CHAR_2_NAME} on an afternoon date to the La Brea Tar Pits to check out fossils of prehistoric creatures!")
hss.dlgA(co,hss.D2,"Gah, I wish wooly mammoths and saber-toothed cats were still around! And I want my own direwolf buddy like in ~Game of Thrones!~",1)
hss.dlgA(co,hss.D1,"Seeing all that history makes you really appreciate the here and now...",1)
hss.dlgA(co,hss.D1,"And I'm so happy that I've got {DATE_CHAR_2_NAME}!",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} explored the La Brea Tar Pits together! Did they sink deeper in love?";
function date_lacma_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} and I went on a date to LACMA, L.A.'s best art museum. Yeah, we're classy like that.",1)
hss.dlgA(co,hss.D2,"That place was huge! There was so much to see, we got lost like fifteen times!",1)
hss.dlgA(co,hss.D1,"My favorites were the modern art installations, like this room of purple light that totally messes with your depth perception!",1)
hss.dlgA(co,hss.D2,"I held on tight to {DATE_CHAR_1_NAME}! Because I needed to, of course. For, uh, balance.",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} took {CHARACTER_2} on a date to an art museum! Was the date a masterpiece? Or amateurish at best?";
function date_pier_success(co)
hss.dlgA(co,hss.D2,"I took {DATE_CHAR_1_NAME} on a spontaneous date night to Santa Monica Pier.",1)
hss.dlgA(co,hss.D1,"We started with a bike ride, then won a ton of prizes at the arcade!",1)
hss.dlgA(co,hss.D2,"We capped off the evening with a sunset ride on the Ferris wheel.",1)
hss.dlgA(co,hss.D1,"It looked like the sky was on fire! Kinda like my heart...",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} took {CHARACTER_1} to Santa Monica Pier! Think they like long walks on the beach?";
function date_dodgers_success(co)
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} took me to a Dodgers game! There's nothing like baseball, sunshine, and greasy stadium food!",1)
hss.dlgA(co,hss.D1,"I almost caught a home run ball for {DATE_CHAR_2_NAME}! I was ~this~ close!",1)
hss.dlgA(co,hss.D2,"It's okay. I made {DATE_CHAR_1_NAME} forget all about that when we got on the kiss cam in the fifth inning.",1)
hss.dlgA(co,hss.D1,"I'd say my kissing performance will definitely be on SportsCenter's Top 10 Plays tonight!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} asked {CHARACTER_2} out to a baseball game! Did {CHARACTER_1} strike out? Or knock it out of the park?";
function date_vegas_success(co)
hss.dlgA(co,hss.D2,"I surprised {DATE_CHAR_1_NAME} with a trip to Las Vegas and a suite at the Venetian.",1)
hss.dlgA(co,hss.D1,"We started off with poolside cocktails and sunbathing, then got all dressed up and hit the casino floor!",1)
hss.dlgA(co,hss.D1,"After {DATE_CHAR_2_NAME} won big at blackjack, we went to Axwell's set at Tryst and danced all night long.",1)
hss.dlgA(co,hss.D2,"What happens in Vegas stays in Vegas... if only all our dates could happen there...",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} surprised {CHARACTER_1} with a date weekend in Vegas! Are they rolling the dice on love?";
function date_moviethemed_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} is as crazy about classic movies as I am, so I set up a daylong movie-themed date!",1)
hss.dlgA(co,hss.D1,"Starting with a visit to the hotel from ~Pretty Woman.~",1)
hss.dlgA(co,hss.D2,"Julia Roberts once stood in the same area where I stood...",4)
hss.dlgA(co,hss.D1,"Then we went to the house from ~Jerry Maguire.~",1)
hss.dlgA(co,hss.D2,"I might have said, 'You complete me' once or twice on the way there. Or a hundred times. Who's counting?",1)
hss.dlgA(co,hss.D1,"And we capped it off with a trip to the airport from the last scene of ~Casablanca!~ It was ~so~ romantic!",5)
hss.dlgA(co,hss.D2,"I think this is the beginning of a beautiful relationship!",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} took {CHARACTER_2} on a tour of famous movie locations in LA! Is their romance worthy of the big screen?";
function date_cocktails_success(co)
hss.dlgA(co,hss.D2,"Guess where I took {DATE_CHAR_1_NAME} tonight? That's right, a cocktail party. Black tie affair.",1)
hss.dlgA(co,hss.D1,"We got to try the most delicious drinks I've ever had. We started with mint juleps and negronis, then moved on to sidecars and sazeracs.",1)
hss.dlgA(co,hss.D2,"At the end of the night, {DATE_CHAR_1_NAME} got behind the bar and was mixing a signature drink. Everyone loved it!",1)
hss.dlgA(co,hss.D1,"But my favorite recipe involved the two of us and a slow dance. Nothing could be more intoxicating.",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} and {CHARACTER_1} were dressed to kill at a fancy cocktail party! Martini. Shaken, not stirred.";
function date_happyhour_success(co)
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} and I took off work early to check out this great happy hour downtown.",1)
hss.dlgA(co,hss.D1,"It's so fun to hang out with {DATE_CHAR_2_NAME} in a more casual setting... and the half-price appetizers and beers aren't a bad draw, either!",1)
hss.dlgA(co,hss.D2,"The crowd was super chill. {DATE_CHAR_1_NAME} has such a magnetic personality, we always end up meeting tons of new friends!",1)
hss.dlgA(co,hss.D1,"Every hour's a happy one when I'm around {DATE_CHAR_2_NAME}...",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} took {CHARACTER_1} out! Was it a happy hour? Was it the drinks and apps that made them happy... or each other's company?";
function date_brunch_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} and I woke up early this Sunday to grab brunch in Venice Beach. De-lic-ious.",1)
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} had me at 'bottomless mimosas.'",9)
hss.dlgA(co,hss.D1,"We shared French toast, which I 'accidentally' drenched with syrup. Yelp said it was the best brunch place in the city, and I'm gonna have to agree!",1)
hss.dlgA(co,hss.D2,"I would rate the brunch four stars... but the date gets a perfect rating!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} enjoyed a delicious Sunday brunch together. The mimosas were bottomless... what about their love?";
function date_winecountry_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} surprised me with a romantic day-trip to the vineyards of Temecula Valley!",1)
hss.dlgA(co,hss.D2,"After the limo ride out, we got to do a tasting outdoors with a professional wine connoisseur!",1)
hss.dlgA(co,hss.D1,"My favorite was the shiraz! It was almost as sweet as {DATE_CHAR_2_NAME}.",1)
hss.dlgA(co,hss.D2,"We took a stroll through the vineyard and ate some grapes. Later, we toured the vineyard's storeroom of vintage bottles.",1)
hss.dlgA(co,hss.D1,"I'd say our relationship's getting better with every passing day too.",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} and {CHARACTER_1} toured a vineyard in wine country! A toast... to love!";
function date_surfing_success(co)
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} brought me to Zuma Beach to learn how to surf! It was epic!",1)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} picks up everything fast and was standing up on the board in no time!",1)
hss.dlgA(co,hss.D2,"After a long day of surfing, we laid out on a towel to watch the sunset over the ocean.",1)
hss.dlgA(co,hss.D1,"I definitely did not mind seeing {DATE_CHAR_2_NAME} in a bathing suit all day long.",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} taught {CHARACTER_2} how to surf! No, not the internet.";
function date_sailboating_success(co)
hss.dlgA(co,hss.D2,"I thought it'd be romantic to take {DATE_CHAR_1_NAME} out on my sailboat at sunset.",1)
hss.dlgA(co,hss.D1,"Once we were out at sea, {DATE_CHAR_2_NAME} popped a bottle of champagne. The ocean breeze, the gentle waves... it was like a scene straight out of a movie!",9)
hss.dlgA(co,hss.D2,"A movie called, 'Guess Who's in Love with {DATE_CHAR_1_NAME}'!",1)
hss.dlgA(co,hss.D1,"Did {DATE_CHAR_2_NAME} really say that? That's so sweet!",9)
hss.dlgA(co,hss.D2,"And the night hadn't even started... {DATE_CHAR_1_NAME} had no idea we were about to see Catalina Island's fireworks show.",1)
hss.dlgA(co,hss.D1,"A romantic boat ride, a surprise fireworks show, and a confession of love?",1)
hss.dlgA(co,hss.D1,"I have a confession of my own: I love {DATE_CHAR_2_NAME} too!",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} took {CHARACTER_1} out on a sailboat to watch a fireworks show! Were fireworks happening on the boat too?";
function date_yacht_success(co)
hss.dlgA(co,hss.D1,"A friend of mine was throwing a birthday party on a yacht, so I invited {DATE_CHAR_2_NAME} as my plus-one.",1)
hss.dlgA(co,hss.D2,"We watched the city lights recede from our seats at the open bar... then we took over the dance floor up on the top deck!",9)
hss.dlgA(co,hss.D1,"Later, it started to get cold out on the open sea, but {DATE_CHAR_2_NAME} and I held each other until we were warm.",1)
hss.dlgA(co,hss.D2,"Let's just say things heated up even faster after that!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} was {CHARACTER_1}'s plus-one to a yacht party! Will their relationship have a titanic end?";
function date_aquarium_success(co)
hss.dlgA(co,hss.D2,"I had a great idea to ~deepen~ my relationship with {DATE_CHAR_1_NAME}... a trip to the Aquarium of the Pacific in Long Beach!",1)
hss.dlgA(co,hss.D1,"We got to see penguins, seahorses, and even dolphins!",9)
hss.dlgA(co,hss.D2,"Later, we checked out the touch tank exhibit, which had all sorts of starfish, sharks, and manta rays!",1)
hss.dlgA(co,hss.D1,"I was a little nervous at first, but {DATE_CHAR_2_NAME} held my hand. ~That~ was my favorite touch.",1)
hss.showDateComplete(co)
end
--dialog_success_text = "How was {CHARACTER_2} and {CHARACTER_1}'s romantic night at the aquarium? Guess we'll sea!";
function date_arcade_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} and I passed by this old-school arcade and knew we just had to go in!",1)
hss.dlgA(co,hss.D2,"We went head-to-head in everything from skeeball to air hockey!",1)
hss.dlgA(co,hss.D1,"I dominated the dancing game but, wow, I think the score would have been different if the machine actually ~saw~ {DATE_CHAR_2_NAME}.",1)
hss.dlgA(co,hss.D2,"That dumb game doesn't know jack. I've got moves.",1)
hss.dlgA(co,hss.D1,"So many moves... So. Many. Hot. Moves.",4)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} had a spontaneous date night at the local arcade! But are they playing games with each other's hearts?";
function date_veniceboardwalk_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} took me to the Venice Beach Boardwalk. One and a half miles of unique restaurants and quirky vendors right by the warm sand!",1)
hss.dlgA(co,hss.D2,"Our favorites were the street performers. I still think that one magician ~actually~ levitated.",1)
hss.dlgA(co,hss.D1,"After we walked the whole thing, we sat down for some lemon gelato and people-watched. We made up stories about everyone passing by!",1)
hss.dlgA(co,hss.D2,"I wonder if people were people-watching ~us!~ I hope their story for us was a good one...",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} and {CHARACTER_1} spent all day together at the Venice Beach Boardwalk! And it was anything but a bored walk!";
function date_skatepark_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} had never been skateboarding so I knew we had to rent some gear and visit Venice Skatepark! Sixteen thousand square feet of sun-soaked pipes, verts, and rails!",1)
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} is a great teacher. By the end, I even pulled off an Oliver! Or was it an Ollie?",1)
hss.dlgA(co,hss.D1,"I admit, I couldn't resist throwing in a few sick 540s to show off.",1)
hss.dlgA(co,hss.D2,"When it comes to impressing me, those tricks definitely worked... but they don't compare to the flips my heart does whenever I kiss {DATE_CHAR_1_NAME}!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} taught {CHARACTER_2} how to skateboard! Is their love legit... or fakie?";
function date_kings_success(co)
hss.dlgA(co,hss.D2,"I nabbed two tickets to the Kings' playoff game, so I obviously wanted {DATE_CHAR_1_NAME} to come with me to the hockey arena!",1)
hss.dlgA(co,hss.D1,"It was chilly inside, but {DATE_CHAR_2_NAME} kept me warm. Then I got really fired up when the players started fighting!",1)
hss.dlgA(co,hss.D2,"I'd never seen {DATE_CHAR_1_NAME} get so... ~passionate!~ It was an intense game... and it even went into overtime!",4)
hss.dlgA(co,hss.D1,"More time to spend with {DATE_CHAR_2_NAME}? Score!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} invited {CHARACTER_1} to a hockey game, but their night was far from ice cold!";
function date_rivalry_success(co)
hss.dlgA(co,hss.D2,"I know people who love USC, and {DATE_CHAR_1_NAME} knows a ton of people at UCLA... so we went to their rivalry football game together!",1)
hss.dlgA(co,hss.D1,"We wore different colors, rooting for different teams. So much fun trading barbs. {DATE_CHAR_2_NAME} can be pretty witty.",1)
hss.dlgA(co,hss.D2,"But by the end, we didn't even see who won. We were too busy making out to notice!",4)
hss.dlgA(co,hss.D1,"Some people didn't like seeing rivals kissing and booed us... but you couldn't keep us apart. It was ~so~ Romeo and Juliet!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} supported rival teams at a football game! Are they loyal to their teams... or each other?";
function date_zoo_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} just took me on the perfect date night to the L.A. Zoo.",1)
hss.dlgA(co,hss.D2,"Apparently, the fastest way to {DATE_CHAR_1_NAME}'s heart is with a bunch of cute animals!",1)
hss.dlgA(co,hss.D1,"We saw a baby panda! Oh my gosh! ~Soooo cute!~",9)
hss.dlgA(co,hss.D2,"Then we stopped by the chimpanzee enclosure and were snapping some photos... when they started posing for the camera! Hollywood, am I right?",1)
hss.dlgA(co,hss.D1,"Still, the cutest thing I saw all day was {DATE_CHAR_2_NAME}!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} went on a zoo date! Is their passion raw and animalistic?";
function date_drivein_success(co)
hss.dlgA(co,hss.D1,"For our date night, I took {DATE_CHAR_2_NAME} to the drive-in theater downtown. It's always packed, so we got there early to get the best view.",1)
hss.dlgA(co,hss.D2,"It was a double feature of ~Raiders~ and ~Princess Bride~, two of the best movies ever... plus a view of the gorgeous downtown skyline!",1)
hss.dlgA(co,hss.D1,"Best part, {DATE_CHAR_2_NAME} and I could laugh and joke through the whole thing in the car without disturbing anyone.",1)
hss.dlgA(co,hss.D1,"And there were some other, um, perks too.",1)
hss.dlgA(co,hss.D2,"I wished it had been a triple feature... I didn't want the night to end!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} spent an evening together at the drive-in theater! Classic movies, classic date, classic romance!";
function date_cemeterymovie_success(co)
hss.dlgA(co,hss.D2,"The Hollywood Forever Cemetery hosts outdoor movie screenings all the time, so I took {DATE_CHAR_1_NAME} out for a spooky date night!",1)
hss.dlgA(co,hss.D1,"I am addicted to horror movies, even though they always frighten me! Good thing {DATE_CHAR_2_NAME} was there to keep us safe!",1)
hss.dlgA(co,hss.D2,"No monsters are going to ruin ~my~ date!",1)
hss.dlgA(co,hss.D1,"To top it off, we laid out a blanket and had a picnic of drinks, sandwiches, and snacks!",1)
hss.dlgA(co,hss.D2,"Then we cuddled on the blanket and got scared out of our minds! It didn't end well for the characters, but ~our~ night went perfectly!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} and {CHARACTER_1} just cuddled through a scary movie... at a Hollywood cemetery! Aren't the cute couples always first to go in horror flicks?";
function date_artwalk_success(co)
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} is the classy type, so we decided to go to an Art Walk downtown!",1)
hss.dlgA(co,hss.D1,"We strolled through it hand in hand, sipping delicious red wine and contemplatively judging others' life's work!",9)
hss.dlgA(co,hss.D2,"We saw everything from bizarre spiraling sculptures of recycled materials, to hip screen prints of video game characters, to wild live shows where dancers painted a canvas with their bodies!",1)
hss.dlgA(co,hss.D1,"It's hard to focus on the art when {DATE_CHAR_2_NAME} is more gorgeous than any painting!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} and {CHARACTER_1} strolled through a downtown art walk. Was their date a masterpiece?";
function date_poetry_success(co)
hss.dlgA(co,hss.D2,"I took {DATE_CHAR_1_NAME} to check out a poetry slam on Fairfax Boulevard. Let's just say my choice of date night was a ~slam~ dunk!",1)
hss.dlgA(co,hss.D1,"The poets were so passionate and intense and moving... their words almost brought us both to tears!",1)
hss.dlgA(co,hss.D2,"Of course, pretty much everything {DATE_CHAR_1_NAME} says sounds like poetry to me!",1)
hss.dlgA(co,hss.D1,"There's no rhyme or reason to how crazy I am about {DATE_CHAR_2_NAME}!",9)
hss.showDateComplete(co)
end
--dialog_success_text = "How does {CHARACTER_1} love {CHARACTER_2}? Let them count the ways at a poetry reading!";
function date_salsalessons_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} surprised me with a night of salsa dancing lessons! I've always wanted to learn how to tear up the dance floor!",8)
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} took to it like a natural! Soon, we were doing spins, shoulder shimmies, rolls... and even lifts!",8)
hss.dlgA(co,hss.D1,"Basically, it was just an excuse for us to hold each other close all night...",8)
hss.dlgA(co,hss.D2,"It felt like we were in ~Dirty Dancing!~ 'Nobody puts {DATE_CHAR_1_NAME} in a corner!'",8)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} took {CHARACTER_1} salsa dancing! Que picante!";
function date_paintinglessons_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} and I went out for a night of painting lessons and wine!",1)
hss.dlgA(co,hss.D2,"I definitely think that the more wine I had, the better my paintings got.",1)
hss.dlgA(co,hss.D1,"Not true, but adorable all the same. I painted a portrait of {DATE_CHAR_2_NAME}!",1)
hss.dlgA(co,hss.D2,"And I painted a portrait of {DATE_CHAR_1_NAME}! We're always thinking of the other. That's why we're so perfect together.",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} and {CHARACTER_1} learned how to paint together! Will they be an everlasting couple? Or is their love more paint-by-numbers?";
function date_cookinglessons_success(co)
hss.dlgA(co,hss.D1,"The only thing {DATE_CHAR_2_NAME} and I love more than each other is great food, so I put cooking lessons on the date night menu.",1)
hss.dlgA(co,hss.D2,"This adorable husband-and-wife team led the class, walking us through the subtleties of Parisian cuisine...",1)
hss.dlgA(co,hss.D1,"I might've burned the chicken galatine... but {DATE_CHAR_2_NAME} didn't seem to mind at all!",1)
hss.dlgA(co,hss.D2,"I had a secret I was keeping from {DATE_CHAR_1_NAME}... I'd actually been taking lessons for months beforehand.",1)
hss.dlgA(co,hss.D1,"At the end of the class, {DATE_CHAR_2_NAME} cooked a full five-course meal for me!",1)
hss.dlgA(co,hss.D1,"Everything was delicious, but the poached pear tart was  ~exquisite.~",1)
hss.dlgA(co,hss.D2,"After, it was time to head home for my real dessert... {DATE_CHAR_1_NAME}! Mmm!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} shared a romantic evening of French food! Their love is sizzling!";
function date_oldbookstore_success(co)
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} and I were walking back from dinner when we stumbled across this cozy little hole-in-the-wall bookstore off Sunset! We just ~had~ to check it out!",1)
hss.dlgA(co,hss.D1,"Who knew bookstores were still a thing?!",4)
hss.dlgA(co,hss.D2,"We explored every aisle, every shelf, reading aloud from philosophy, mystery, and even, um... 'romantic guides'?",1)
hss.dlgA(co,hss.D1,"I spotted a super-rare signed copy of {DATE_CHAR_2_NAME}'s favorite book and totally snuck away to buy it! I'm saving it as a present for our next date!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} and {CHARACTER_1} just explored a vintage bookstore together! Are they entering a new chapter of their lives?";
function date_theater_success(co)
hss.dlgA(co,hss.D1,"I got {DATE_CHAR_2_NAME} tickets to see Les Miserables on stage at the Fox Center.",1)
hss.dlgA(co,hss.D2,"It was magical! {DATE_CHAR_1_NAME} got us seats right up close near the orchestra pit, and we could see every detail of the spectacle!",1)
hss.dlgA(co,hss.D1,"Not gonna lie, I might've teared up a little bit toward the end.",2)
hss.dlgA(co,hss.D2,"I dreamed a dream that {DATE_CHAR_1_NAME} was mine... oh wait, that's real life!",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} and {CHARACTER_1} spent a night at the theater for a classic stage production! Is their love a comedy or a tragedy?";
function date_standup_success(co)
hss.dlgA(co,hss.D1,"I was feeling down, so {DATE_CHAR_2_NAME} took me to the Laugh Factory!",1)
hss.dlgA(co,hss.D2,"I'd heard good things, but I had no idea... Louis C.K., Sarah Silverman, and Hannibal Buress each debuted new material!",1)
hss.dlgA(co,hss.D1,"We were sitting up front, so all the comics incorporated us into their sets!",1)
hss.dlgA(co,hss.D2,"It was the best time I've ever had getting insulted!",5)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} always knows how to cheer me up!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} cheered up {CHARACTER_1} with a date night at a comedy club! But will their romance fall flat?";
function date_opera_success(co)
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} got us great seats to see Mozart's ~Don Giovanni~ at the L.A. Opera downtown!",1)
hss.dlgA(co,hss.D1,"The soprano playing Donna Elvira had an ~incredible~ voice! She even hit a high C!",1)
hss.dlgA(co,hss.D2,"Don Giovanni was a total player... kinda like me until {DATE_CHAR_1_NAME} tamed this wild beast! That's totally how the story went, right?",1)
hss.dlgA(co,hss.D1,"I don't think {DATE_CHAR_2_NAME} knows how the opera ended, but that's my fault. We made out through the entire second act!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} went to the opera together! Will they be singing its praises?";
function date_privateshow_success(co)
hss.dlgA(co,hss.D2,"Bruno Mars was playing a small, intimate show one night only at Berkeley Street Studio. Only 20 people got in... and guess who scored tickets?",1)
hss.dlgA(co,hss.D1,"Oh my god, it was incredible! It was like he was singing just to us. He even did the song that was playing when {DATE_CHAR_2_NAME} and I first kissed!",4)
hss.dlgA(co,hss.D2,"Yeah. I'm betting that was the best date {DATE_CHAR_1_NAME}'s ever been on. No big deal.",1)
hss.dlgA(co,hss.D1,"It was. It so was. It's going to be tough to top.",1)
hss.dlgA(co,hss.D2,"Oh, I'll top it. We've been on a lot of dates, but this is still just the beginning.",1)
hss.dlgA(co,hss.D1,"That confidence is such a turn-on. I'm thinking I'll give {DATE_CHAR_2_NAME} a show of my own later tonight...",9)
hss.dlgA(co,hss.D2,"Yes. Yes, please.",4)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} and {CHARACTER_1} snagged tickets to an intimate private show by a world-famous singer! How'd they get on the list?!";
function date_golf_success(co)
hss.dlgA(co,hss.D2,"When I heard about our golf date, I totally thought {DATE_CHAR_1_NAME} meant ~miniature golf!~",1)
hss.dlgA(co,hss.D1,"Once we got that mixup sorted out, {DATE_CHAR_2_NAME} and I hit the links with some ice cold Arnold Palmers.",1)
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} was so sweet, helping me out with my swing. But I bet it was just an excuse to hold me close...",1)
hss.dlgA(co,hss.D1,"A perfect day, ending with a perfect lunch in the clubhouse. I'd say that's par for the course when it comes to {DATE_CHAR_2_NAME} and me!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} took {CHARACTER_2} on a golfing date! Was it a hole-in-one or did {CHARACTER_1} just whiff?";
function date_coachella_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} and I spent the weekend at Coachella Music Festival! Basically, fifty of our favorite musicians rocking out in the desert!",1)
hss.dlgA(co,hss.D2,"Tons of celebs attended too! We danced together all night long next to Kylie Jenner and Justin Bieber... well, before Biebs got thrown out by security...",1)
hss.dlgA(co,hss.D1,"There's nothing like going from belting out songs with Florence and the Machine to raging on the dance floor with Alesso!",1)
hss.dlgA(co,hss.D2,"You know, it gets pretty cold at night in the desert. Sure glad {DATE_CHAR_1_NAME} was in my tent to keep me warm!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} and {CHARACTER_1} went on a date weekend to Coachella! Is their love heating up? Or is that just the desert sun?";
function date_hiking_success(co)
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} and I had the day off, so we hiked all the way up Mount Baldy! You know, the snow-capped one behind all the photos of downtown L.A.?",1)
hss.dlgA(co,hss.D1,"Eleven miles... 10,000 feet up... the elliptical in my gym ain't got ~nothing~ on that!",4)
hss.dlgA(co,hss.D2,"We trekked up the Devil's Backbone, a really narrow path with steep drops on both sides. Total adrenaline rush!",1)
hss.dlgA(co,hss.D1,"It wasn't always easy, but in the end, the view from the top will always be worth the hard work... just like in our relationship.",1)
hss.showDateComplete(co)
end
--dialog_success_text = "Ain't no mountain high enough to keep {CHARACTER_1} and {CHARACTER_2} apart! Translation: they went hiking together.";
function date_showtaping_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} surprised me with tickets to an episode of ~The Big Bang Theory!~",4)
hss.dlgA(co,hss.D2,"It was so interesting to see the actors trying out different lines and cadences! I never knew how it worked before!",1)
hss.dlgA(co,hss.D1,"I'd like to think our energy in the audience really fed into Jim Parsons' performance...",1)
hss.dlgA(co,hss.D2,"We also ~might~ have laughed really weird on purpose...",1)
hss.dlgA(co,hss.D1,"If you hear laughter that sounds like a pterodactyl fighting a billy goat, that's us!",5)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} got {CHARACTER_1} tickets to a live sitcom taping! Applause, please!";
function date_hanggliding_success(co)
hss.dlgA(co,hss.D1,"I couldn't wait to take {DATE_CHAR_2_NAME} tandem hang gliding! Jumping off of a 3,500-foot mountain ridge and daring gravity to do its worst! What a thrill!",5)
hss.dlgA(co,hss.D2,"I was too shy to tell {DATE_CHAR_1_NAME} that I have a fear of heights... but once we were out there, ~not dying...~ it was actually ridiculously amazing!",4)
hss.dlgA(co,hss.D1,"Soaring with the birds... it was the only way I could show {DATE_CHAR_2_NAME} how I feel when we're together.",1)
hss.dlgA(co,hss.D2,"I love that {DATE_CHAR_1_NAME} makes me want to try new things!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} took {CHARACTER_2} tandem hang gliding! Sounds like their relationship is really taking flight!";
function date_grandcanyon_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} just took me on a helicopter ride over the Grand Canyon!")
hss.dlgA(co,hss.D2,"I know I should have been looking out the window, but I couldn't take my eyes off of {DATE_CHAR_1_NAME}!",9)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} held my hand the whole time. Afraid of flying, much?",1)
hss.dlgA(co,hss.D2,"Flying doesn't scare me in the slightest. I was just looking for an excuse to hold {DATE_CHAR_1_NAME}'s hand.",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} just shared a romantic helicopter tour over the Grand Canyon! Is their love just as deep?";
function date_cupcake_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} took me to a gourmet cupcake shop!")
hss.dlgA(co,hss.D2,"Don't you ~ever~ ask me to choose between {DATE_CHAR_1_NAME} and cupcakes. My head would explode.",1)
hss.dlgA(co,hss.D1,"We ordered Red Velvet, S'Mores, and Vanilla Bean! So delicious!",1)
hss.dlgA(co,hss.D2,"I'm thinking of calling {DATE_CHAR_1_NAME} 'cupcake' from now on. Is that weird?",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} just had a romantic moment at a gourmet cupcake shop! Let them eat cupcakes!";
function date_mexico_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} and I just got back from Mexico!",5)
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} had me at 'authentic Mexican food'.",1)
hss.dlgA(co,hss.D1,"We spent days on white-sand beaches with crystal clear water...",1)
hss.dlgA(co,hss.D2,"I did my very best not to be freaked out by all the iguanas.",1)
hss.dlgA(co,hss.D1,"We even got to see an ancient Mayan temple!",1)
hss.dlgA(co,hss.D2,"But the best part was cuddling up in a hammock near our hotel and watching the sunset.",9)
hss.dlgA(co,hss.D1,"No matter what country I'm in, I always have fun with {DATE_CHAR_2_NAME}!",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} just got back from a romantic trip to Mexico! Is amor in the air?";
function date_frat_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I hit up a killer frat party!")
hss.dlgA(co,hss.D2,"Everyone wanted to grind up on me on the dance floor, but I only had eyes for {DATE_CHAR_1_NAME}!",1)
hss.dlgA(co,hss.D1,"Around midnight, I walked {DATE_CHAR_2_NAME} home.",1)
hss.dlgA(co,hss.D2,"Parties are fun, but a romantic walk alone with {DATE_CHAR_1_NAME} is pure bliss.",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} danced all night at a frat party! Don't hate on them, bruh!";
function date_rodeodrive_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I went shopping on Rodeo Drive.")
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} looks ~amazing~ in designer clothes.",1)
hss.dlgA(co,hss.D1,"We couldn't afford to buy anything, but trying stuff on was still a lot of fun!",1)
hss.dlgA(co,hss.D2,"One day, when we're rich and famous, I'm going to buy {DATE_CHAR_1_NAME} a whole store here!",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} just finished shopping on Rodeo Drive! They're so fancy! But, you already know.";
function date_fashionshoot_success(co)
hss.dlg(co,hss.D1,"I just finished a fashion photo shoot with {DATE_CHAR_2_NAME}!")
hss.dlgA(co,hss.D2,"We both kept changing our outfits... but I couldn't keep my eyes off {DATE_CHAR_1_NAME}!",1)
hss.dlgA(co,hss.D1,"Yeah, I couldn't help thinking about how good {DATE_CHAR_2_NAME} would look with less clothes on!",1)
hss.dlgA(co,hss.D2,"Lucky me, I was wearing my hottest underwear!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} just finished a fashion photo shoot. Clothing optional.";
function date_dimsum_success(co)
hss.dlg(co,hss.D1,"I just got back from grabbing some dim sum with {DATE_CHAR_2_NAME}!")
hss.dlgA(co,hss.D2,"The best part was when we ordered ~everything~ off of the dessert cart!",1)
hss.dlgA(co,hss.D1,"Egg tarts, mango pudding, and sweet cream buns... everything was delicious.",1)
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} can take me to dim sum any time!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} just ate some delicious dim sum! You could say their date was ~a la heart.~";
function date_sunsetboulevard_success(co)
hss.dlg(co,hss.D1,"I just got back from hitting the clubs on Sunset Boulevard with {DATE_CHAR_2_NAME}!")
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} got us into the House of Blues, the Sky Bar, ~and~ the Rainbow Room!",1)
hss.dlgA(co,hss.D1,"Let's just say that slipping the bouncer fifty bucks goes a long way.",1)
hss.dlgA(co,hss.D2,"No place is off limits for me and {DATE_CHAR_1_NAME}!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} just hit the clubs on Sunset Boulevard! VIPs! Woop woop!";
function date_television_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I stayed in watching TV all weekend.")
hss.dlgA(co,hss.D2,"First, I picked 'House of Cards'. Then {DATE_CHAR_1_NAME} wanted to watch 'Kitchen Nightmares'.",1)
hss.dlgA(co,hss.D1,"Our tastes are pretty different... but we still had fun just cuddling up together.",1)
hss.dlgA(co,hss.D2,"Who cares what's on TV when I've got a hottie like {DATE_CHAR_1_NAME} sitting next to me?",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} spent the whole weekend cuddled up, watching TV! Are they on a marathon? Or do they need a commercial break?";
function date_knotts_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I just spent the day at Knott's Berry Farm!")
hss.dlgA(co,hss.D2,"We started out small with the Ferris wheel, but then {DATE_CHAR_1_NAME} wanted to amp it up!",1)
hss.dlgA(co,hss.D1,"The butterflies in my stomach from the thirty-story drop on Supreme Scream were ~nothing~ compared to the ones I get around {DATE_CHAR_2_NAME}.",1)
hss.dlgA(co,hss.D2,"In the end, you could say I enjoyed our date ~berry~ much!",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} went to Knott's Berry Farm! Was it a scream?";
function date_pinkberry_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} took me to the ~original~ Pinkberry frozen yogurt shop!")
hss.dlgA(co,hss.D2,"I thought {DATE_CHAR_1_NAME} could use a sweet treat to cool down after the hot weather we've been having.",1)
hss.dlgA(co,hss.D1,"We split a big cup of tart yogurt, topped with strawberries, mango, almonds, and honey.",1)
hss.dlgA(co,hss.D2,"I cleaned up the daub of yogurt on {DATE_CHAR_1_NAME}'s cheek...",1)
hss.dlgA(co,hss.D1,"With a sweet kiss!",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} enjoyed frozen yogurt together! Aren't they the sweetest couple?";
function date_yoga_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I just did morning yoga... on the beach!")
hss.dlg(co,hss.D2,"What better way to start the day than with Sun Salutations?")
hss.dlgA(co,hss.D1,"I didn't even know the human body could contort into some of those positions...",4)
hss.dlgA(co,hss.D1,"And I definitely didn't know {DATE_CHAR_2_NAME} was so ~flexible.~",1)
hss.dlgA(co,hss.D2,"Next time, we're doing partner poses.",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} and {CHARACTER_1} had an early morning yoga date! Would saying they're meant for each other be a stretch?";
function date_legoland_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I just spent the whole day exploring Legoland!")
hss.dlg(co,hss.D2,"We walked through Miniland, USA, and saw the tiny version of SoCal... made ~entirely~ out of Legos!")
hss.dlgA(co,hss.D1,"That was nothing compared to the Block of Fame! Forget getting a star on Hollywood Boulevard... I want to be memorialized in Legos!",1)
hss.dlgA(co,hss.D2,"I'll get started on that... if it means showing how much I care about {DATE_CHAR_1_NAME}, no project's too big!",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} just spent the day at Legoland! Their relationship is being built brick by brick.";
function date_spa_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I had a nice, relaxing day at the Ritz-Carlton Spa in the heart of L.A.")
hss.dlg(co,hss.D2,"They gave us the Red Carpet treatment, complete with facials, manicures, pedicures, and Shimmer body creme infused with ~real~ gold!")
hss.dlg(co,hss.D1,"I've never felt so valuable!")
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME}'s body? Priceless.",1)
hss.dlgA(co,hss.D2,"And I feel the same way about the rest of {DATE_CHAR_1_NAME} too...",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} had a relaxing day at the spa together. Has their relationship been rejuvenated?";
function date_hellskitchen_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} and I just had dinner at ~Hell's Kitchen!~",4)
hss.dlg(co,hss.D2,"And Gordon Ramsay was on fire tonight. He made ~three~ of the chefs cry during the course of the meal.")
hss.dlgA(co,hss.D1,"I think even ~I~ had tears in my eyes... from how delicious the risotto was!",1)
hss.dlgA(co,hss.D2,"It may be called 'Hell's Kitchen', but the food certainly was heavenly...",1)
hss.dlgA(co,hss.D2,"...and {DATE_CHAR_1_NAME} is my angel!",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} and {CHARACTER_1} just ate at Hell's Kitchen! Did they indulge in devil's food cake?";
function date_ballet2_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} just took me to the L.A. Ballet company... we saw a brand-new contemporary ballet!")
hss.dlg(co,hss.D2,"The performance was mesmerizing. Who knew a person could spin around on one leg ~so~ many times?")
hss.dlg(co,hss.D1,"I was beyond impressed by how the ballerinas were able to tell a story without using any words.")
hss.dlgA(co,hss.D2,"The dancers were definitely stunning... but not as stunning as {DATE_CHAR_1_NAME}.",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} and {CHARACTER_1} just went to the L.A. Ballet! Did they connect, or is that a leap?";
function date_streetperformers_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I were walking along Hollywood Boulevard when we came across some street performers!")
hss.dlg(co,hss.D2,"We dropped a tip in their bucket, and they sprang to life!")
hss.dlg(co,hss.D1,"My favorite was the robot woman. I was practically convinced she was ~actually~ a robot.")
hss.dlgA(co,hss.D2,"This one gold man did a spot-on impression of Michael Jackson! It was so ~thrilling.~",1)
hss.dlgA(co,hss.D1,"~Hee hee!~",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} and {CHARACTER_1} just checked out the street performers on Hollywood Boulevard! Nothing says romance quite like spontaneity!";
function date_fashionweek_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} just took me backstage at L.A. Fashion Week!")
hss.dlg(co,hss.D2,"We got to see the top designers and models strut their stuff.")
hss.dlgA(co,hss.D1,"We even managed to find Kendall Jenner and take selfies!",1)
hss.dlg(co,hss.D2,"Then we had front-row seats for the runway shows. We were so close, we could see the models' ~sweat!~")
hss.dlgA(co,hss.D1,"We spent the day surrounded by beautiful people... but {DATE_CHAR_2_NAME} was still the ~most~ beautiful.",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} and {CHARACTER_1} just went backstage at L.A. Fashion Week! Was their date worthy of the runway?";
function date_santabarbara_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I just took a day trip to Santa Barbara!")
hss.dlg(co,hss.D2,"After driving up the coast, we went straight to Stearns Wharf for ocean watching and souvenir shopping.")
hss.dlg(co,hss.D1,"And we took pics kissing in front of the dolphin fountain! You haven't been to Santa Barbara until you've hung out by the dolphin statue.")
hss.dlgA(co,hss.D2,"Then we walked hand-in-hand around Chase Palm Park. I've never seen such picturesque palm trees.",1)
hss.dlgA(co,hss.D1,"The weather was so perfect, we stopped to picnic in the park before going to our afternoon wine-tasting at Rusack Vineyards.",1)
hss.dlg(co,hss.D2,"Sipping pinot noir while overlooking a vineyard and spending time with {DATE_CHAR_1_NAME}... it was a ~perfect~ afternoon.")
hss.dlgA(co,hss.D1,"I didn't think it could get any better, but...",1)
hss.dlgA(co,hss.D2,"After that, we strolled around the Coronado Butterfly Preserve. There were clusters of butterflies hanging from every eucalyptus branch!",1)
hss.dlgA(co,hss.D1,"It was ~so~ romantic when {DATE_CHAR_2_NAME} kissed me among the butterflies...",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} and {CHARACTER_1} spent all day in Santa Barbara!";
function date_fireworks_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} took me to the Santa Monica Pier for our date. We brought blankets and watched the sun set over the ocean...")
hss.dlgA(co,hss.D2,"But that was just the beginning.",1)
hss.dlgA(co,hss.D1,"As soon as it was dark, the fireworks show began!",4)
hss.dlgA(co,hss.D2,"I ~loved~ it! Especially the ones that cascade down like weeping willows!",1)
hss.dlgA(co,hss.D2,"But that was nothing compared to the fireworks that happened when {DATE_CHAR_1_NAME} kissed me goodnight!",1)
hss.dlgA(co,hss.D1,"Of the two shows, that one was my favorite.",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} and {CHARACTER_1} just watched a fireworks show! Did they ooh and aah?";
function date_winetasting_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} just took me to a wine tasting!")
hss.dlgA(co,hss.D2,"It was perfect! A sunny afternoon. A patio table at a quaint winery. A rich, finely aged pinot noir...",1)
hss.dlgA(co,hss.D1,"When it came time to decide what to toast to, the choice was easy...",1)
hss.dlgA(co,hss.D2,"'To many more dates like this!'",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} just toasted over a glass of pinot noir! Hey, wine not?";
function date_coastdrive_success(co)
hss.dlg(co,hss.D1,"I just took {DATE_CHAR_2_NAME} for an afternoon drive along the coast!")
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} showed up to my place in a pretty little convertible! I didn't even know {DATE_CHAR_1_NAME} ~owned~ a convertible!",1)
hss.dlgA(co,hss.D1,"It was a rental, but we don't have to go into those details...",1)
hss.dlgA(co,hss.D2,"We cruised up the 101 to Santa Barbara with the top down and the wind in our hair. It was a perfect afternoon!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} just took {CHARACTER_2} for a romantic drive down the coast! 'West coast' or 'BEST coast'?";
function date_bar_success(co)
hss.dlg(co,hss.D1,"I just took {DATE_CHAR_2_NAME} for drinks at my favorite bar on Hollywood Boulevard.")
hss.dlg(co,hss.D2,"It was a really trendy place! They say the head bartender used to be Jay-Z's personal mixologist.")
hss.dlgA(co,hss.D1,"For {DATE_CHAR_2_NAME}, I ordered a Summer Blockbuster on the rocks. For me? The usual. A Hemsworth Brother, make it a double.",1)
hss.dlgA(co,hss.D2,"At the hottest spot in town, with the hottest date on my arm... I could get ~used~ to this!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} went out for drinks together! Bottoms up!";
function date_observatory_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I drove up to the Griffith Observatory tonight!")
hss.dlgA(co,hss.D2,"I came to Hollywood to see 'stars', but this is better than I could've hoped for!",1)
hss.dlgA(co,hss.D1,"We had the lights from the night sky above us, the lights from the city...",1)
hss.dlgA(co,hss.D2,"...but {DATE_CHAR_1_NAME} was still the most stunning view in sight!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} went stargazing together at the Griffith Observatory! Think they're starry-eyed for each other?";
function date_beach_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I just spent the day at the beach!")
hss.dlgA(co,hss.D2,"I have to admit... it got a little flirty when {DATE_CHAR_1_NAME} offered to put lotion on my back.",1)
hss.dlgA(co,hss.D1,"What can I say? When it comes to protecting {DATE_CHAR_2_NAME}'s gorgeous body from sunburn, I can be very thorough.",1)
hss.dlgA(co,hss.D2,"...hey, no complaints here!",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} just helped rub sunblock onto {CHARACTER_2}'s back... is it getting hot in here?";
function date_club_success(co)
hss.dlg(co,hss.D1,"Where'd {DATE_CHAR_2_NAME} and I go on our date? Well, Hollywood's hottest club is ~Streak.~")
hss.dlgA(co,hss.D2,"This club has everything. Ice sculptures, Roombas, Laser-Groots...",8)
hss.dlgA(co,hss.D1,"What's a Laser-Groot? It's that thing where a really tall raver wears nothing but tree leaves and glowsticks...",4)
hss.dlgA(co,hss.D2,"It was simultaneously the best and the ~weirdest~ date I've had in a long time!",8)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} just experienced Hollywood's hottest, and possibly weirdest, club. Stefon would be proud.";
function date_tattoo_success(co)
hss.dlg(co,hss.D1,"I totally surprised {DATE_CHAR_2_NAME} on our date when I pulled up to High Voltage Tattoo in West Hollywood!")
hss.dlgA(co,hss.D2,"Kat Von D's tattoo parlor is famous! I used to watch ~L.A. Ink~ all the time!",1)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} insisted on holding my hand while I got an old school heart tattooed on my arm!",1)
hss.dlgA(co,hss.D2,"I want to get one on our next date! Should we get each other's names? Or maybe matching skulls? The possibilities are endless!",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} just went to a world famous tattoo parlor! Here's hoping their love never fades!";
function date_bartending_success(co)
hss.dlg(co,hss.D1,"I never thought a bartending class would make for a great date... but it was amazing!")
hss.dlgA(co,hss.D2,"My new signature cocktail? One part {DATE_CHAR_1_NAME}, one part me, one part unforgettable memories!",1)
hss.dlg(co,hss.D2,"...and also one part spiced rum.")
hss.dlgA(co,hss.D1,"A winning recipe if you ask me!",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} just went to a bartending class on their date! Think these two are a good mix?";
function date_koreanbbq_success(co)
hss.dlg(co,hss.D1,"You can't say you've done Los Angeles until you've had barbecue in Koreatown, grilled right at your table!")
hss.dlgA(co,hss.D2,"It was delicious! But the best part was seeing how excited {DATE_CHAR_1_NAME} was to show me the ropes!",1)
hss.dlg(co,hss.D1,"Not to brag, but I think {DATE_CHAR_2_NAME} was impressed with my grilling skills.")
hss.dlgA(co,hss.D1,"The end result was just the right amount of sweet and spicy...",1)
hss.dlgA(co,hss.D2,"...just like {DATE_CHAR_1_NAME}!",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} just introduced {CHARACTER_2} to Korean BBQ! Things are really heating up between the two of them!";
function date_hotdog_success(co)
hss.dlg(co,hss.D1,"When {DATE_CHAR_2_NAME} said we were going to visit a 'Hollywood legend', I wasn't expecting it to be a hot dog place...")
hss.dlgA(co,hss.D2,"Pink's ~is~ a Hollywood legend! Since 1939! It says so on the sign!",1)
hss.dlg(co,hss.D1,"When I saw the line stretching down the block, I knew this had to be something special.")
hss.dlgA(co,hss.D2,"The ~Brando Dog~ was an offer I couldn't refuse! And {DATE_CHAR_1_NAME}'s ~Lord of the Rings Dog~ definitely ruled them all!",1)
hss.dlgA(co,hss.D1,"It was epic! I can't wait to explore more Hollywood legends with {DATE_CHAR_2_NAME}! Especially if they taste this good!",5)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} just took {CHARACTER_1} out for hot dogs... bold move for a date!";
function date_weddingcrash_success(co)
hss.dlg(co,hss.D1,"I was so excited to be {DATE_CHAR_2_NAME}'s date to a celebrity's wedding... I just ~assumed~ we were invited!")
hss.dlgA(co,hss.D2,"Hey! What's two more guests among two thousand? These heiress-turned-reality-stars always have hors d'oeuvres to spare!",1)
hss.dlgA(co,hss.D1,"It was amazing! Gourmet catering, a world-famous DJ spinning, and so, ~so~ many ice sculptures!",1)
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} and I danced the night away! And we got to dance with one of the Afflecks!",8)
hss.dlgA(co,hss.D2,"At least... I ~think~ it was one of the Afflecks...",4)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_2} and {CHARACTER_1} are a couple of wedding crashers! Think they forever held their peace?";
function date_houseparty_success(co)
hss.dlg(co,hss.D1,"A house party may seem like an ordinary date... unless the house is owned by one of the judges of ~The Voice!~")
hss.dlgA(co,hss.D2,"Let's just say there's 'famous', and then there's 'famous enough to pull off a feather boa'... and the guests at this party were definitely ~feather boa~ famous.",1)
hss.dlgA(co,hss.D1,"It was the wildest party I've ever seen! I didn't know they made champagne or parrots in those colors!",4)
hss.dlgA(co,hss.D2,"By the end of the night, {DATE_CHAR_1_NAME} and I had jumped into a pool fully clothed, sang karaoke with an ~American Idol~ winner, and made out in a celebrity's closet.",1)
hss.dlgA(co,hss.D1,"It was just ~that~ kinda night!",8)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} just blew the roof off a house party! ...not literally, of course.";
function date_billiards_success(co)
hss.dlg(co,hss.D1,"I just took {DATE_CHAR_2_NAME} to Q's, my favorite pool hall in Hollywood.")
hss.dlgA(co,hss.D1,"I figured it was the perfect chance to demonstrate proper billiards form... with my arms wrapped around {DATE_CHAR_2_NAME}, of course.",1)
hss.dlgA(co,hss.D2,"I let {DATE_CHAR_1_NAME} 'teach' me some techniques... and then suggested we make the game more interesting. Should I have mentioned I've been playing pool for years?",1)
hss.dlgA(co,hss.D1,"I lost! And now I owe {DATE_CHAR_2_NAME} a back rub! I think I just got hustled.",4)
hss.dlgA(co,hss.D1,"And I think I'm okay with it!",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2}'s date just took them to a pool hall... is someone getting hustled?";
function date_juicebar_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} couldn't believe it when I said I'd never been to a juice bar. Apparently it's all the rage right now?")
hss.dlgA(co,hss.D2,"Juice bars are the new tart yogurt! And tart yogurt was the new smoothie, which was the new artisanal coffee. You gotta stay up on these trends!",1)
hss.dlg(co,hss.D1,"Apparently you just put salad ingredients in a blender and quadruple their price. But it tastes surprisingly good!")
hss.dlgA(co,hss.D1,"Really, the best part was seeing how excited {DATE_CHAR_2_NAME} was. I'd drink a salad for {DATE_CHAR_2_NAME} any day.",9)
hss.dlgA(co,hss.D2,"Maybe {DATE_CHAR_1_NAME} and I can go on a juice cleanse together!",5)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} just went to a Hollywood juice bar together! Are they each other's main squeeze?";
function date_beergarden_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} offered to take me to the hottest 'beer garden' in Hollywood. Which, from the name, sounded like an outdoor patio where they serve beer.")
hss.dlgA(co,hss.D2,"Get this... it's an ~outdoor patio~ that ~serves beer!~ Isn't that awesome?",1)
hss.dlgA(co,hss.D1,"It was actually really impressive! Upscale decor, great drink selection... and the romantic lighting from the fancy fire pit didn't hurt either!",9)
hss.dlgA(co,hss.D2,"What more could I ask for than a crisp, fine Belgian ale and a night out with {DATE_CHAR_1_NAME}?",1)
hss.showDateComplete(co)
end
--dialog_success_text = "How does your garden grow? {CHARACTER_1} and {CHARACTER_2} just toasted over fine ale at a Hollywood beer garden!";
function date_horseback_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I just went horseback riding along the beach!")
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} looked like a movie star, riding up on a stallion, hair blowing in the wind...",9)
hss.dlgA(co,hss.D1,"We raced along the coast, just the two of us... it was like a scene lifted straight out of a Hollywood romance!",1)
hss.dlgA(co,hss.D2,"We ~literally~ rode off together into the sunset! I mean, come on!",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} just rode off together into the sunset! How's that for romantic?";
function date_japanesegarden_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I just went on a date to L.A.'s Japanese Garden! It was stunning!")
hss.dlg(co,hss.D2,"We walked along log bridges overlooking serene lakes, saw beautiful Japanese Black Pine Trees and trickling waterfalls...")
hss.dlgA(co,hss.D1,"It was so serene... can I say it was 'zen'? Anyway, it was amazing!",1)
hss.dlgA(co,hss.D2,"I just had to take a picture with {DATE_CHAR_1_NAME} by the tea house! I wanted to capture the moment forever!",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} just had a blissfully serene moment together at the Japanese Garden!";
function date_50sdiner_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I went out for dinner at this great '50s-themed diner in Los Angeles!")
hss.dlg(co,hss.D2,"It had an amazing retro feel to it. Booths made of classic cars, servers in roller skates and poodle skirts, the whole nine!")
hss.dlgA(co,hss.D1,"I mentioned that it felt like the famous dance scene from Pulp Fiction... and that's when {DATE_CHAR_2_NAME} put a quarter in the jukebox!",1)
hss.dlgA(co,hss.D2,"And the two of us had a dance-off right there, like no one was watching! {DATE_CHAR_1_NAME} just gets me, you know?",8)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} just had a Pulp Fiction-style dance off in a '50s-themed diner! Think you can ketchup?";
function date_rosegarden_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} took me to a rose garden!")
hss.dlg(co,hss.D1,"There were red roses and pink roses... but my absolute favorite were the ~white~ roses!")
hss.dlg(co,hss.D2,"Red roses stand for love, pink roses stand for gratitude...")
hss.dlgA(co,hss.D2,"Wait... don't white roses mean marriage?!",1)
hss.dlgA(co,hss.D1,"Maybeeeee?",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} went on a date to a rose garden! Love is in bloom!";
function date_murdermystery_success(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} took me to a murder mystery dinner!")
hss.dlg(co,hss.D1,"There were conspiracies, betrayals, ~affairs...~ and in the end we had to guess who committed the crime!")
hss.dlg(co,hss.D2,"Hashtag humblebrag, I knew it was that creepster pharmacist the whole time.")
hss.dlg(co,hss.D2,"In fact, the only mystery I ~can't~ solve is how {DATE_CHAR_1_NAME} is so impossibly perfect...")
hss.dlgA(co,hss.D2,"But I plan to keep trying!",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} went on a date to a murder mystery dinner! Talk about a killer time!";
function date_fancysushi_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} took me to get dinner at Sugarshrimp, AKA the most spendy sushi spot in all of Hollywood! I'm talking four dollar signs on Yelp!",1)
hss.dlgA(co,hss.D2,"So worth it. We started with toro bacon sushi, kobe beef, and a bottle of imported sake!",1)
hss.dlgA(co,hss.D2,"And for dessert we had sesame ice cream garnished with flakes of actual 24-carat gold!",1)
hss.dlgA(co,hss.D1,"I didn't even know you could eat gold, but we literally ~ate gold!~ With our mouths!",4)
hss.dlgA(co,hss.D1,"As you can imagine, I was a little worried when the check arrived.",2)
hss.dlgA(co,hss.D2,"I was happy to pay for the meal. Sure, dinner was expensive...",1)
hss.dlgA(co,hss.D2,"But I'd pay anything to spend time with {DATE_CHAR_1_NAME}!",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} went on a date to a fancy sushi restaurant! Kanpai!";
function date_soulcycle_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} took me to a motivational workout at Solar Cycle.",1)
hss.dlgA(co,hss.D2,"We cycled for six hours straight, while also etching positive emotions into sandstone!",1)
hss.dlgA(co,hss.D2,"I had no idea {DATE_CHAR_1_NAME} would push so hard! Or get so alluringly sweaty!",1)
hss.dlgA(co,hss.D1,"After class, we cooled off with blueberry-kale smoothies and showed each other what we'd etched...",1)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} just made a heart... with ~my~ name in it!",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} went on a date to a luxury spin class! Fitness can be joyful... and sexy!";
function date_bike_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} rented bicycles, and we went for a lazy ride along the Venice Beach bike trail.",1)
hss.dlgA(co,hss.D2,"The clear sky, the salty spray of the ocean, the cute butt... I could've kept cycling for hours!",1)
hss.dlgA(co,hss.D1,"Wait a second... ~cute butt?~ Is that why you wanted ~me~ to ride in front?",4)
hss.dlgA(co,hss.D2,"Yes. Yes, it is.",1)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} went on a bicycling date along the Venice Beach bike trail! They took their relationship to a higher gear!";
function date_countrywestern_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} took me to a country-western bar on Sunset Boulevard!",1)
hss.dlgA(co,hss.D2,"We ate jalapeno cornbread, drank Texas tea, and did line dancing to all my favorite Luke Bryan songs!",1)
hss.dlgA(co,hss.D2,"Then {DATE_CHAR_1_NAME} got a little crazy out there on the dance floor...",4)
hss.dlg(co,hss.D1,"Yeah, I've never been great at coloring within the lines... or line dances...")
hss.dlgA(co,hss.D2,"Whatever it was, it was amazing! Soon everybody was doing {DATE_CHAR_1_NAME}'s boot-scootin' moves!",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} went on a date to a country-western bar! Yee-haw!";
function date_solvang_success(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} took me to the Danish community of Solvang for a long weekend!",1)
hss.dlgA(co,hss.D1,"We went wine tasting, ate open-faced sandwiches, and even had Evil Skeevers for dessert!",1)
hss.dlgA(co,hss.D2,"It's actually pronounced ~ebleskivers.~ They're Danish puff pancakes.",1)
hss.dlgA(co,hss.D1,"So I might've had some trouble with the Danish words...",2)
hss.dlgA(co,hss.D2,"Not to worry! {DATE_CHAR_1_NAME} is adorable in ~any~ language!",9)
hss.showDateComplete(co)
end
--dialog_success_text = "{CHARACTER_1} and {CHARACTER_2} went on a date to a quaint Danish village! Proost!";
function date_solvang_failure(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I drove out to Solvang today. It was like a little slice of Denmark right in Southern California!")
hss.dlg(co,hss.D1,"I thought we would try some Danish delicacies, maybe do some shopping...")
hss.dlgA(co,hss.D2,"But instead, we met some actual Danish tourists and got to learn all about Denmark from them. Awesome, right?",1)
hss.dlgA(co,hss.D1,"Wrong! {DATE_CHAR_2_NAME} turned our date into a... a group hang! We didn't get to spend any time alone!",3)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} went on a date to Solvang... but it turned into a group hang! How unromantic.";
function date_kings_failure(co)
hss.dlg(co,hss.D2,"{DATE_CHAR_1_NAME} surprised me with box seats to a hockey game! Kings vs Ducks, a grudge match for the ages!")
hss.dlg(co,hss.D2,"I put on my favorite Ducks jersey and showed up ready to cheer my team on...")
hss.dlgA(co,hss.D2,"Only to find out that {DATE_CHAR_1_NAME} was a ~Kings~ fan!",4)
hss.dlgA(co,hss.D1,"I was shocked to discover that {DATE_CHAR_2_NAME} and I were rooting for different teams...",2)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} went on a date to a Kings game... but uh-oh, {CHARACTER_2} is a Ducks fan!";
function date_tattoo_failure(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I went to High Voltage Ink to get matching tattoos. We were both a little scared, but I knew I would be okay if we did it together.")
hss.dlgA(co,hss.D1,"But when we got into the chairs, {DATE_CHAR_2_NAME} ~bolted~ out of the shop, stammering about leaving the oven on...",2)
hss.dlgA(co,hss.D2,"I got scared, okay?",4)
hss.dlgA(co,hss.D2,"Not of getting the tattoo, but of what the tattoo would ~mean~. Am I ready for that much commitment with {DATE_CHAR_1_NAME}? I'm just not sure...",2)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} went to get matching tattoos at High Voltage Ink... but {CHARACTER_2} got cold feet!";
function date_sandiego_failure(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I drove down to San Diego for a beach day.")
hss.dlg(co,hss.D2,"Sun, sand, and sea... what could go wrong? We were ready to tan!")
hss.dlgA(co,hss.D1,"Well... {DATE_CHAR_2_NAME} was ready to tan. I, apparently, was ready to burn.",2)
hss.dlgA(co,hss.D2,"We dozed off as we cuddled on a huge beach towel, so neither of us noticed {DATE_CHAR_1_NAME}'s sunburn until...",2)
hss.dlgA(co,hss.D1,"Until {DATE_CHAR_2_NAME} gave me the most painful hug of my life!",2)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} drove down to San Diego for a beach date... but {CHARACTER_1} got a full-body sunburn!";
function date_concertbackstage_failure(co)
hss.dlg(co,hss.D2,"{DATE_CHAR_1_NAME} took me to a concert downtown. The music was good, but the bar was a complete dive! I started feeling sick after a few songs...")
hss.dlg(co,hss.D1,"We had passes to meet the band! We couldn't leave early!")
hss.dlgA(co,hss.D2,"I was just too sick to stomach it. When we went backstage, I threw up in the lead singer's champagne ice bucket! How mortifying...",2)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} saw a concert on their date and even met the band, but {CHARACTER_2} got sick... in front of the lead singer!";
function date_themepark_failure(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I met up at Six Flags: Magic Mountain. We both love rollercoasters, so we were looking forward to a thrilling date!")
hss.dlgA(co,hss.D1,"Only... {DATE_CHAR_2_NAME} loved rollercoasters a bit less than I thought.",2)
hss.dlgA(co,hss.D2,"I didn't want to admit that I'd never been on a rollercoaster before, so I told {DATE_CHAR_1_NAME} that I loved them. But when we finally got on our first one, I was terrified!",2)
hss.dlgA(co,hss.D2,"I screamed the whole time... I was so embarrassed!",2)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} surprised {CHARACTER_2} with a date to Six Flags: Magic Mountain... but {CHARACTER_2} hates rollercoasters!";
function date_playboy_failure(co)
hss.dlg(co,hss.D1,"I got {DATE_CHAR_2_NAME} and myself invites to a huge weekend party at the Playboy Mansion.")
hss.dlgA(co,hss.D2,"I was really impressed that {DATE_CHAR_1_NAME} was able to get us invited to such a hot party!",4)
hss.dlgA(co,hss.D2,"But maybe it was ~too~ hot... everyone there was like a total super model. How could {DATE_CHAR_1_NAME} be interested in me with dozens of models walking around in basically ~nothing?~",2)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} partied at a magazine magnate's mansion, but with so many hot models around, {CHARACTER_2} felt a bit insecure...";
function date_magic_failure(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} took me to dinner and a show at the Gothic Palace. Dinner and a ~magic~ show, that is...")
hss.dlgA(co,hss.D2,"I think magic is one of the most amazing talents in the world, but to {DATE_CHAR_1_NAME}, it was all a big joke!",3)
hss.dlgA(co,hss.D1,"When I was called up as a volunteer, I goofed off and messed up a few tricks... I thought it would be funny!",2)
hss.dlgA(co,hss.D2,"It was ~so~ not funny.",3)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_2} took {CHARACTER_1} to a magic show for their date... but {CHARACTER_1} couldn't take it seriously!";
function date_grandcanyon_failure(co)
hss.dlg(co,hss.D2,"{DATE_CHAR_1_NAME} booked us a romantic helicopter tour over the Grand Canyon. It sounded amazing!")
hss.dlgA(co,hss.D1,"And it would have been, if we'd gotten there in time...",2)
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} didn't know that the Grand Canyon was in a different time zone, apparently, so we were an hour late and completely missed our appointment!",3)
hss.dlgA(co,hss.D2,"We drove all that way for nothing!",3)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} booked a romantic helicopter tour of the Grand Canyon... but forgot the time difference and missed their flight!";
function date_knotts_failure(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I spent the day at Knott's Berry Farm.")
hss.dlgA(co,hss.D1,"...specifically, waiting in line for the Supreme Scream ride at Knott's Berry Farm.",3)
hss.dlgA(co,hss.D2,"I didn't think it would take so long... but we ended up waiting for hours in the hot sun.",2)
hss.dlgA(co,hss.D1,"And then the ride closed down right when we got to the front.",2)
hss.dlgA(co,hss.D2,"It was a disaster!",2)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_2} took {CHARACTER_1} to Knott's Berry Farm, but they wasted hours waiting in line! Sounds like they were in the Fast Lane to a bad date.";
function date_standup_failure(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I went out for drinks at the Laugh Factory last night.")
hss.dlgA(co,hss.D1,"Well, we ~tried~ anyway...",2)
hss.dlgA(co,hss.D2,"When we got there, the place was packed. There was a line around the block, and we were told we'd have to wait for hours to get in...",2)
hss.dlgA(co,hss.D2,"I can't believe {DATE_CHAR_1_NAME} didn't make a reservation!",3)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} went on a date to see a stand-up comedian at the Laugh Factory... but they didn't have reservations and couldn't get in!";
function date_brunch_failure(co)
hss.dlg(co,hss.D1,"I met {DATE_CHAR_2_NAME} at one of our favorite restaurants for brunch, but...")
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} was completely hungover!",3)
hss.dlgA(co,hss.D2,"And the worst part? I wasn't even invited to the party {DATE_CHAR_1_NAME} was at last night!",2)
hss.dlgA(co,hss.D1,"I didn't think it would be {DATE_CHAR_2_NAME}'s scene...",2)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_2} met up with {CHARACTER_1} for a brunch date... but {CHARACTER_1} was super hungover!";
function date_artwalk_failure(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} planned the most romantic night for us. We had an amazing dinner at a posh restaurant, then went to enjoy the Art Walk downtown.")
hss.dlg(co,hss.D2,"I got us each a glass of wine, but as I turned around...")
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} walked into me and spilled ~both~ glasses all ~over~ me!",3)
hss.dlgA(co,hss.D1,"And I was wearing a ~brand~ new outfit for this date!",3)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} checked out the Art Walk downtown on a date... but {CHARACTER_2} spilled wine all over {CHARACTER_1}!";
function date_winetasting_failure(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} loves wine, so I planned a surprise wine tasting trip to Ojai for us.")
hss.dlg(co,hss.D2,"It was really sweet of {DATE_CHAR_1_NAME}, but...")
hss.dlgA(co,hss.D2,"The wine they served us was just awful.",2)
hss.dlgA(co,hss.D1,"I thought I got a great deal from Groupon! I should've known better than to try discount wine...",2)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} went wine tasting... but they ended up just wine-ing about the cheap taste!";
function date_bartending_failure(co)
hss.dlg(co,hss.D2,"{DATE_CHAR_1_NAME} absolutely loves cocktails, so I decided to book us a bartending class to learn how to make some!")
hss.dlgA(co,hss.D1,"Our instructor was such a pro! We watched her make everything from a simple G&T to a whopping pitcher of Long Island Iced Tea. We even got to try all of the drinks!",1)
hss.dlgA(co,hss.D2,"Of course, a sip here and there added up, and by the time we got to make our own cocktails, {DATE_CHAR_1_NAME} was more than a bit tipsy...",2)
hss.dlgA(co,hss.D1,"I may have gotten us thrown out of the class... by ~allegedly~ setting a full bottle of tequila on fire.",2)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} took a bartending class together! But how did a flaming bottle of tequila get them kicked out?!";
function date_extras_failure(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I were shopping downtown when we were suddenly recruited to be extras in a big movie!")
hss.dlgA(co,hss.D2,"We were going to be zombies! How cool is ~that~?",1)
hss.dlgA(co,hss.D1,"I'm not a huge fan of zombie movies, but I figured there'd be no harm in doing a quick scene. But that 'quick' scene ended up taking hours!",2)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} wouldn't stop arguing with the director...",2)
hss.dlgA(co,hss.D2,"Those shots were all wrong! Obviously the cast and crew hadn't studied zombie horde mentality at ~all!~",3)
hss.showDateSalvage(co)
end
--dialog_failure_text = "During their date, {CHARACTER_1} and {CHARACTER_2} got roles as extras in a zombie blockbuster! But {CHARACTER_2} wouldn't stop arguing with the director!";
function date_streetracing_failure(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I were driving back to my place for dessert after a romantic dinner.")
hss.dlgA(co,hss.D2,"But I took a wrong turn... and the another one... and another one...",2)
hss.dlgA(co,hss.D2,"Long story short? We wound up right in the middle of an illegal drag race!",2)
hss.dlgA(co,hss.D1,"And ~then~ the cops showed up!",3)
hss.showDateSalvage(co)
end
--dialog_failure_text = "During a date, {CHARACTER_2} accidentally drove into the middle of a street race! It was a little too fast and furious for {CHARACTER 1}!";
function date_soulcycle_failure(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I both heard about this new spin class at Solar Cycle.")
hss.dlg(co,hss.D2,"We thought it would be a great activity to do together! So we signed up for a class. It. Was. ~Terrible~.")
hss.dlg(co,hss.D2,"The instructor screamed at us, the remixes were awful, and the air conditioner was broken. ~Everyone~ reeked!")
hss.dlgA(co,hss.D1,"It ~was~ hot in there, yeah, but it's an exercise class. What did {DATE_CHAR_2_NAME} expect?",2)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} tried out a new spin class at Solar Cycle together, but the class got a little too hot and sweaty for {CHARACTER_2}.";
function date_coachella_failure(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I found out that we both go to Coachella every year. So this year, we decided to make a date of it!")
hss.dlg(co,hss.D1,"We knew we were going to have a blast because we have identical tastes in music.")
hss.dlgA(co,hss.D1,"Well... ~almost~ identical...",2)
hss.dlgA(co,hss.D2,"Everything was going ~so~ well. We saw Kimbra and alt-J and The Weekend... and then I suggested we go see Brand New. {DATE_CHAR_1_NAME} wasn't exactly happy with that.",2)
hss.dlgA(co,hss.D1,"How could {DATE_CHAR_2_NAME} not know that I'm a die-hard Taking Back Sunday fan?!",3)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} went to Coachella together... but had a huge fight over an old band feud!";
function date_zoo_failure(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I went to the zoo to check out the new Down Under exhibit. It features Australian animals!")
hss.dlg(co,hss.D2,"We saw a few kangaroos and wallabies, visited the magpies and kookaburras, and even held a koala!")
hss.dlg(co,hss.D1,"It was ~so~ cute and sleepy...")
hss.dlgA(co,hss.D1,"Until it woke up and started eating my hair! {DATE_CHAR_2_NAME} just laughed and laughed...",2)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} went on a date to the new Australian exhibit at the zoo... where a koala started eating {CHARACTER_1}'s hair!";
function date_bakingtogether_failure(co)
hss.dlg(co,hss.D2,"Since {DATE_CHAR_1_NAME} is an ~amazing~ baker, we met up at my place to make some cupcakes! I don't really know my way around a kitchen, so I asked {DATE_CHAR_1_NAME} to teach me a few recipes.")
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} was ~not~ exaggerating about lacking kitchen skills... a whole batch of cupcakes were ruined because ~somebody~ thought the salt was sugar.",2)
hss.dlgA(co,hss.D2,"Okay, so maybe I should have paid more attention to following instructions... but it didn't help when {DATE_CHAR_1_NAME} started screaming at me.",2)
hss.dlgA(co,hss.D1,"I wasn't screaming at {DATE_CHAR_2_NAME}. I was screaming at the ~fire~ in the oven!",3)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} baked some cupcakes together... but somebody used salt instead of sugar, and somebody set the kitchen on fire!";
function date_escaperoom_failure(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} invited me to an escape room, which is apparently a game where you're locked in a room for an hour and have to solve a bunch of riddles in order to get out.")
hss.dlg(co,hss.D1,"I've always been a little claustrophobic, but I agreed because {DATE_CHAR_2_NAME} seemed ~really~ excited.")
hss.dlgA(co,hss.D2,"I ~love~ puzzles. Unfortunately... {DATE_CHAR_1_NAME} completely shut down once we got inside and didn't help at all.",2)
hss.dlgA(co,hss.D1,"I tried! But there were walls everywhere! And it didn't seem like we'd ever get out!",2)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_2} took {CHARACTER_1} on a date to an escape room game... but {CHARACTER_1} got claustrophobic!";
function date_happyhour_failure(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} invited me out to happy hour at our favorite bar after my last class of the day. I was ready to knock back a few drinks to kick off a weekend of relaxation.")
hss.dlgA(co,hss.D1,"But everything was so cheap that a few drinks turned into a few more... and I got real sick, real fast.",2)
hss.dlgA(co,hss.D2,"I actually had a lot more planned for our evening. Dinner reservations at a fancy restaurant, tickets to a show at the Roxy...",2)
hss.dlgA(co,hss.D2,"But {DATE_CHAR_1_NAME} was way too sick to go anywhere. We had to call a cab and go home before the sun had even set...",2)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} met up for happy hour before a dinner date... but got so sick they missed their dinner reservations!";
function date_vegas_failure(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I took a weekend road trip out to Las Vegas. We were ready to take a chance on us!")
hss.dlgA(co,hss.D2,"Unfortunately, we also took a chance on poker... and blackjack... and craps... and none of it worked out.",2)
hss.dlgA(co,hss.D1,"Even the roulette table betrayed me. We wound up blowing our whole trip's budget within three hours of getting there.",2)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} went to Las Vegas for a weekend getaway... but they lost all their money at the roulette table!";
function date_skybar_failure(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} invited me to an exclusive rooftop party at Skybar at the Mondrian!")
hss.dlg(co,hss.D2,"A great view, awesome cocktails, and celebrity guests? It sounded like the perfect date spot.")
hss.dlg(co,hss.D2,"I was so excited to spend a night on top of the world... or at least the city... with {DATE_CHAR_1_NAME} beside me.")
hss.dlgA(co,hss.D1,"And it would have been perfect, if it didn't start to drizzle... then rain... then ~pour~.",2)
hss.dlgA(co,hss.D1,"I didn't know it was possible to be that soaked...",2)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} partied with A-listers on the roof of the Mondrian... but then it started pouring, and everyone got wet!";
function date_minigolf_failure(co)
hss.dlg(co,hss.D1,"I knew that {DATE_CHAR_2_NAME} and I both loved mini-golf, so I planned a trip to Camelot where we could play one of their Arthurian-themed courses!")
hss.dlg(co,hss.D2,"Everything was great until {DATE_CHAR_1_NAME} got a hole-in-one on the sixth hole...")
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} got ~super~ competitive, and even accused me of cheating!",3)
hss.dlgA(co,hss.D2,"Competitive? Pot, kettle, black! {DATE_CHAR_1_NAME} was ~way~ more competitive than me. When I got a hole-in-one of my own a few minutes later, {DATE_CHAR_1_NAME} threw my putter into the lake!",3)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} went to Camelot on a mini-golf date... but they were so competitive they got into a huge fight!";
function date_farmersmarket_failure(co)
hss.dlg(co,hss.D1,"I've been meaning to check out the farmers' market for weeks, and {DATE_CHAR_2_NAME} finally took me yesterday morning!")
hss.dlg(co,hss.D1,"There were so many delicious fruits and vegetables, and they were ~all~ organic. I was so excited!")
hss.dlgA(co,hss.D1,"Of course, thanks to {DATE_CHAR_2_NAME}, I didn't actually get to ~buy~ anything!",3)
hss.dlgA(co,hss.D2,"I was just trying to keep {DATE_CHAR_1_NAME} from getting totally swindled!",4)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} tried to haggle the price down at every. Single. Stand. Nobody wanted to sell anything to me!",3)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} went on a date to the farmers' market... but {CHARACTER_2} wouldn't stop trying to haggle over prices!";
function date_drawing_failure(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} asked me to be partners for an art project. We got to draw each other!")
hss.dlg(co,hss.D2,"We draped silk blankets over the couch, lit a few candles to set the mood, and even popped open a bottle of wine to really set the scene!")
hss.dlgA(co,hss.D2,"Of course, that didn't help our drawing skills...",2)
hss.dlgA(co,hss.D1,"Not only did our pictures look ~awful~, but we got into a huge fight over how bad they were.",2)
hss.dlgA(co,hss.D2,"I don't remember everything we said, but the phrase ~worse than a three-year old~ definitely came up...",2)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} posed for each other for an art project... but it turns out they're both awful artists.";
function date_premiere_failure(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} won a pair of tickets to the red carpet premiere of the new summer blockbuster! Perfect seats, perfect snacks, perfect movie.")
hss.dlg(co,hss.D2,"Yeah... so perfect that {DATE_CHAR_1_NAME} couldn't stop live-tweeting it the whole time!")
hss.dlgA(co,hss.D2,"BFF... and LOL... on that bright little screen...",2)
hss.dlgA(co,hss.D1,"I had to update my followers! How else would they live vicariously through me?",4)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} went to a red carpet movie premiere... but {CHARACTER_1} couldn't stop texting during the movie!";
function date_glamping_failure(co)
hss.dlg(co,hss.D1,"I planned a romantic glamping trip with {DATE_CHAR_2_NAME}!")
hss.dlg(co,hss.D1,"First, I left {DATE_CHAR_2_NAME} a map with some cute riddles and poems about how to find me, and went ahead to set up our campsite.")
hss.dlg(co,hss.D1,"Then, I put up a huge tent with fairy lights strung through the canvas, scattered rose petals all around our sleeping bags, and chilled a bottle of champagne to just the right temperature.")
hss.dlgA(co,hss.D2,"But I never found this supposed campsite nirvana, because {DATE_CHAR_1_NAME}'s map was ~impossible~ to follow!",3)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} gave {CHARACTER_2} a treasure map to find a romantic glamping campsite... but {CHARACTER_2} got lost in the woods!";
function date_speakeasy_failure(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} hyped me up for our date at an old-fashioned speakeasy! Hidden tunnels, secret corridors, and elaborate passwords? So much more interesting than a regular bar, right?")
hss.dlgA(co,hss.D2,"At least, it would have been, if we'd actually found the place...",2)
hss.dlgA(co,hss.D1,"We couldn't even find the door! Instead, we ended up in what we ~thought~ were secret tunnels...",2)
hss.dlgA(co,hss.D1,"Nope. They were sewers.",2)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} spent their date looking for a secret speakeasy... and wound up lost in the sewers!";
function date_weirdrestaurant_failure(co)
hss.dlg(co,hss.D1,"I booked a date with {DATE_CHAR_2_NAME} at a brand new restaurant that practices something called molecular gastronomy.")
hss.dlg(co,hss.D2,"I was excited to try something new. Food is food, right?")
hss.dlgA(co,hss.D2,"Wrong. We got a few balloons that tasted a bit like chicken, some tiny dumplings that ~melted~ in our mouths, and for dessert?",2)
hss.dlgA(co,hss.D1,"Toothpaste! We ate ~toothpaste~ for dessert!",3)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} went on a date to a molecular gastronomy restaurant... but the food was just ghastly!";
function date_bookpremiere_failure(co)
hss.dlg(co,hss.D1,"I invited {DATE_CHAR_2_NAME} to a book launch party hosted by one of our favorite authors! Everyone was going to dress up as one of the author's characters!")
hss.dlgA(co,hss.D2,"A costume party for a book premiere sounded like fun... except {DATE_CHAR_1_NAME} forgot to mention the ~costume~ part.",2)
hss.dlgA(co,hss.D1,"I could've sworn I said it was a costume party... did I really forget?",2)
hss.dlgA(co,hss.D2,"I was completely out of place! It was so embarrassing.",3)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} took {CHARACTER_2} to a costumed book launch party... but {CHARACTER_2} didn't know it was in-costume!";
function date_surfing_failure(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I wanted to learn to surf, so we signed up for lessons!")
hss.dlg(co,hss.D2,"The weather was perfect when we drove out to the beach, and we each chose a cool surfboard to practice on.")
hss.dlgA(co,hss.D1,"Only we waited... and waited... and ~waited~ for our instructor, who never showed up!",2)
hss.dlgA(co,hss.D2,"I was really looking forward to riding the waves with {DATE_CHAR_2_NAME}, but I guess it wasn't meant to be.",2)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} tried to get a surfing lesson together... but their instructor never showed up!";
function date_drivein_failure(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I went to a drive-in theater last night to watch a horror movie marathon. We didn't expect the movies to be good, of course...")
hss.dlgA(co,hss.D2,"But we didn't expect them to be ~that~ bad, either. They weren't even enjoyably bad... they were just ~bad~.",2)
hss.dlgA(co,hss.D1,"That wasn't even the worst part. The ~real~ nightmare was that everyone parked wherever they wanted. {DATE_CHAR_2_NAME} and I wound up completely boxed in!",3)
hss.dlgA(co,hss.D2,"We had to suffer through all three movies before we could leave...",2)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} went to the drive-in theater for a horror movie marathon... but the movies were horrible!";
function date_murdermystery_failure(co)
hss.dlg(co,hss.D2,"{DATE_CHAR_1_NAME} took me to a murder mystery dinner!")
hss.dlgA(co,hss.D2,"But the performers might have gotten into their roles a bit too much...",2)
hss.dlgA(co,hss.D1,"When the detective character was supposed to pretend to punch the doctor character...",2)
hss.dlgA(co,hss.D2,"He punched him for real, and the doctor landed ~right~ on our table. In our food!",3)
hss.dlgA(co,hss.D1,"There was no resuscitating my cajun pasta...",2)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} went to a murder mystery dinner together... but got caught in the middle of a fight between the cast members!";
function date_hotdog_failure(co)
hss.dlg(co,hss.D1,"I was really excited about taking {DATE_CHAR_2_NAME} to Pink's, Hollywood's legendary hot dog stand.")
hss.dlgA(co,hss.D1,"Let's just say that was a bad call...",2)
hss.dlgA(co,hss.D2,"I can't believe {DATE_CHAR_1_NAME} took me to a ~hot dog~ place. Doesn't {DATE_CHAR_1_NAME} know what kind of junk goes ~into~ hot dogs?",3)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} told me in great detail exactly what hot dog sausages are made of. TMI, {DATE_CHAR_2_NAME}... TMI.",2)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} took {CHARACTER_2} to the legendary Pink's for hot dogs... but {CHARACTER_1} didn't relish learning what they're made of...";
function date_fancysushi_failure(co)
hss.dlg(co,hss.D2,"{DATE_CHAR_1_NAME} took me to a high-end sushi place! We had a ton of sushi, some soft shell crab karaage, and black cod miso.")
hss.dlg(co,hss.D1,"We enjoyed every single thing we ordered, especially the delicious dragonfruit mimosas!")
hss.dlg(co,hss.D2,"I was able to try everything without getting stuffed. Or, at least, I ~thought~ I tried everything...")
hss.dlgA(co,hss.D2,"But I guess not, because I felt fine even when {DATE_CHAR_1_NAME} fell sick with a really bad case of food poisoning...",2)
hss.dlgA(co,hss.D1,"Ugh. The worst...",2)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} went on a date to a high-end sushi restaurant... where {CHARACTER_1} got a major case of food poisoning!";
function date_countrywestern_failure(co)
hss.dlg(co,hss.D2,"I didn't say where we going for our date, because I know how much {DATE_CHAR_1_NAME} loves surprises... except this one, I guess.")
hss.dlg(co,hss.D2,"We went to a country western bar where some of my favorite stars hang out... like Blake Shelton ~and~ Miranda Lambert...")
hss.dlgA(co,hss.D1,"Too bad I ~hate~ country music. Please. All that whining about whiskey, ex-boyfriends, and cheating... I've already got enough drama in my life.",3)
hss.dlgA(co,hss.D1,"A tragedy like this deserves to have a sad country song written about it...",2)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_2} took {CHARACTER_1} to a country western bar... but it turns out {CHARACTER_1} hates country music!";
function date_horseback_failure(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I went horseback riding! I had never been on a horse before, so I was really excited to try it out.")
hss.dlg(co,hss.D2,"I was a little more apprehensive... horses are just so ~big~ and ~fast~. I was ready to go at a trot, ~maybe.~")
hss.dlgA(co,hss.D2,"But even ~I~ was disappointed with the horses we got... they just stood around!",2)
hss.dlgA(co,hss.D1,"Our horses were way more interested in nibbling grass than, you know, ~moving.~",2)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} went on a horseback riding date... but their lazy, old horses barely did anything!";
function date_fashionweek_failure(co)
hss.dlg(co,hss.D2,"{DATE_CHAR_1_NAME} got us seats at L.A. Fashion Week! I love fashion week shows. Bright colors, gorgeous flowing dressing, and beautiful models strutting their stuff!")
hss.dlgA(co,hss.D2,"But that wasn't what this show was like at all... the colors were drab and boring. Almost everything in the collection was the same ugly shade of gray.",2)
hss.dlgA(co,hss.D1,"The line Tom Golde presented was the most amazing thing I ever laid eyes on. {DATE_CHAR_2_NAME} had no appreciation works from a minimalist genius!",3)
hss.dlgA(co,hss.D2,"Minimalist's the right word, alright. As in, it captured a ~minimal~ amount of my interest...",2)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} went to a show at L.A. Fashion Week... but ended up clashing more than some of the outfits!";
function date_discorollerskating_failure(co)
hss.dlg(co,hss.D2,"{DATE_CHAR_1_NAME} and I went to a disco roller rink. It was like traveling back in time the second we stepped through the front doors!")
hss.dlgA(co,hss.D1,"Unfortunately, they didn't have any skates in my size, so I agreed to try on a slightly larger size.",2)
hss.dlgA(co,hss.D1,"I thought it would be okay, but...",2)
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} kept slipping and falling. I'd never seen someone sprain ~both~ ankles at once!",2)
hss.dlgA(co,hss.D1,"Yeah, this date was a total faceplant...",2)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} went to a disco roller rink... but they didn't have any skates in {CHARACTER_1}'s size!";
function date_chinatown_failure(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} and I strolled through Chinatown yesterday afternoon. We spent a long time chatting over authentic dim sum, and later {DATE_CHAR_2_NAME} suggested that we go see a fortune teller.")
hss.dlgA(co,hss.D1,"That's where everything went wrong.",2)
hss.dlgA(co,hss.D2,"I don't ~really~ believe in fortune tellers, but this one said with absolute certainty that we would soon experience ~betrayal!~",4)
hss.dlgA(co,hss.D1,"Now we're just wondering which one of us will betray the other! ~Et tu, {DATE_CHAR_2_NAME}?~",3)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} went on a date to Chinatown... where a fortune teller saw betrayal in their future!";
function date_skydiving_failure(co)
hss.dlg(co,hss.D2,"I'm really into extreme sports, so I invited {DATE_CHAR_1_NAME} to go skydiving with me.")
hss.dlg(co,hss.D1,"Let's get one thing straight. I did ~not~ want to go skydiving. I agreed to go up in the plane with {DATE_CHAR_2_NAME}, but I was ~not~ going to jump.")
hss.dlgA(co,hss.D2,"Nobody was ~forcing~ {DATE_CHAR_1_NAME} to jump.",2)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} literally kept screaming 'You! Have! To! Jump!'",3)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_2} took {CHARACTER_1} on a date up in the air... for skydiving! But {CHARACTER_1} refused to jump...";
function date_pinkberry_failure(co)
hss.dlg(co,hss.D1,"It was one of the hottest days of the year, so {DATE_CHAR_2_NAME} took me to Pinkberry to cool down with some delicious frozen yogurt.")
hss.dlgA(co,hss.D1,"But things got a bit ~too~ cool when one of the machines malfunctioned and unleashed a massive wave of taro froyo all over me and {DATE_CHAR_2_NAME}.",2)
hss.dlgA(co,hss.D2,"I don't even ~like~ taro...",2)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} went to get some froyo... but one of the machines exploded and covered them in a gooey mess!";
function date_cookinglessons_failure(co)
hss.dlg(co,hss.D2,"{DATE_CHAR_1_NAME} and I signed up for a cooking class!")
hss.dlgA(co,hss.D1,"I didn't end up learning much of anything, though. {DATE_CHAR_2_NAME} kept interrupting every little thing I tried to do!",3)
hss.dlgA(co,hss.D2,"I only interrupted when {DATE_CHAR_1_NAME} was about to do something wrong!",3)
hss.dlgA(co,hss.D1,"According to {DATE_CHAR_2_NAME}, I tried to put in 'a pinch and a half' of salt when the recipe called for just a pinch... how exact can a ~pinch~ even be?",3)
hss.showDateSalvage(co)
end
--dialog_failure_text = "{CHARACTER_1} and {CHARACTER_2} went on a date to a cooking class... but {CHARACTER_2} kept criticizing {CHARACTER_1}'s technique!";
function date_solvang_salvage(co)
hss.dlgA(co,hss.D2,"But as it turns out, {DATE_CHAR_1_NAME} was just asking about the best things to do in Solvang.",1)
hss.dlgA(co,hss.D1,"The tourists gave me some great advice, and I planned a super romantic afternoon with {DATE_CHAR_2_NAME}.",1)
hss.dlg(co,hss.D1,"We took pictures by the windmill, sampled chocolates and wine from all the shops, and shared a huge bowl of Risalamande, a yummy Danish Christmas dessert, as we strolled through Tivoli Square.")
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} treated me like royalty! Danish royalty, that is...",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} and {CHARACTER_2}'s Solvang date was crashed in the morning... but they enjoyed a private, romantic afternoon and evening!";
function date_kings_salvage(co)
hss.dlgA(co,hss.D1,"But then we made a little deal that made things a lot more interesting.",1)
hss.dlgA(co,hss.D1,"Whoever was rooting for the winning team would buy drinks all night! That way, neither of us could ~really~ lose.",1)
hss.dlg(co,hss.D2,"I wasn't completely crushed when my team lost, because {DATE_CHAR_1_NAME} got us into the swankiest bar I'd ever seen and ordered round after round all night!")
hss.dlgA(co,hss.D2,"And raising a glass with a gorgeous date like {DATE_CHAR_1_NAME}? Feels like victory to me!",9)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} and {CHARACTER_2} support rival hockey teams... but turned their differences into a fun game!";
function date_tattoo_salvage(co)
hss.dlg(co,hss.D1,"I left the shop without getting a tattoo, either, and found {DATE_CHAR_2_NAME} pacing outside.")
hss.dlg(co,hss.D2,"We had a long talk about what matching tattoos would mean for our relationship...")
hss.dlgA(co,hss.D1,"We decided that it ~was~ probably too soon to get ~matching~ tattoos, but not too soon for individual ones!",1)
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} held my hand as I got mine! Maybe one day, we'll get matching ones...",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} and {CHARACTER_2} decided not to get matching tattoos... but that didn't stop them from getting inked!";
function date_sandiego_salvage(co)
hss.dlg(co,hss.D2,"Fortunately, I packed for ~everything.~ Not only did I bring a huge tube of sunblock, I also brought plenty of aloe vera!")
hss.dlgA(co,hss.D1,"After we moved into the shade, {DATE_CHAR_2_NAME} helped me apply it to my whole back.",1)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} was so gentle, and the aloe vera was so refreshing... with {DATE_CHAR_2_NAME} taking such good care of me, I'll be all better in no time!",9)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} got badly sunburned in San Diego, but {CHARACTER_2} made it better with a soothing aloe vera massage!";
function date_concertbackstage_salvage(co)
hss.dlgA(co,hss.D1,"When I realized just ~how~ bad {DATE_CHAR_2_NAME} was feeling, I felt terrible for insisting that we stay.",2)
hss.dlg(co,hss.D1,"I drove {DATE_CHAR_2_NAME} home after that, and made a batch of warm ginger lemon tea.")
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} ended up taking care of me all night, even though I was super gross.",1)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} could never be anything but perfect to me.",9)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_2} got sick at a concert, so {CHARACTER_1} played nurse back home!";
function date_themepark_salvage(co)
hss.dlgA(co,hss.D1,"I actually thought {DATE_CHAR_2_NAME} was really endearing! Being a little scared of rollercoasters is nothing to be ashamed of.",1)
hss.dlgA(co,hss.D2,"Once my secret was out, {DATE_CHAR_1_NAME} reassured me, and we moved onto tamer rides.",1)
hss.dlgA(co,hss.D2,"Eventually, I was able to move up to rides like Full Throttle and Viper!",1)
hss.dlgA(co,hss.D1,"By the end of the day, the only screams coming from {DATE_CHAR_2_NAME} were screams of joy!",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} helped {CHARACTER_2} overcome rollercoaster fears! Next stop: snakes.";
function date_playboy_salvage(co)
hss.dlg(co,hss.D1,"There was only one way I could prove to {DATE_CHAR_2_NAME} that I wasn't interested in any random model...")
hss.dlgA(co,hss.D2,"I was shocked when {DATE_CHAR_1_NAME} left the party before it was even over!",4)
hss.dlgA(co,hss.D2,"We wandered through the gardens that surround the mansion... {DATE_CHAR_1_NAME} made me feel so important... like we were the only two people in the world!",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_2} felt insecure at a magazine party full of models, but {CHARACTER_1} proved that the models meant nothing!";
function date_magic_salvage(co)
hss.dlg(co,hss.D2,"Fortunately, the magician played along with it!")
hss.dlgA(co,hss.D1,"Thanks to the magician, I didn't ruin the show completely.",1)
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} ~did~ get me called up onstage to be sawed in half! I loved it!",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} nearly ruined a magic show for {CHARACTER_2}, but turned it around at the last second. How's that for magic?!";
function date_grandcanyon_salvage(co)
hss.dlg(co,hss.D1,"I refused to let the date end like that, though, so I looked around for something else we could do.")
hss.dlgA(co,hss.D2,"All the helicopter rides were booked, but {DATE_CHAR_1_NAME} signed us up for a hiking tour instead! We got to go ~inside~ the Grand Canyon!",1)
hss.dlgA(co,hss.D1,"It might not have been as romantic as a helicopter ride, but it was a once in a lifetime experience!",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} and {CHARACTER_2} hiked down into the Grand Canyon... it was a breathtaking, once in a lifetime experience!";
function date_knotts_salvage(co)
hss.dlgA(co,hss.D2,"I wouldn't say those hours we spent in line were a ~complete~ waste. We made friends with the people next to us and played games to pass the time.",1)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} and I made a great team for charades...",1)
hss.dlgA(co,hss.D1,"It's like {DATE_CHAR_2_NAME} is psychic!",4)
hss.dlgA(co,hss.D2,"After we got out of line, we stopped by the Dippin' Dots stand for a cool treat.",1)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} knew just what I wanted after spending hours in the sun!",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} and {CHARACTER_2} played games to pass the time while standing in line at Knott's Berry Farm! Do you know any good line games?";
function date_standup_salvage(co)
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} came up with a daring plan. We snuck in through the back!",1)
hss.dlgA(co,hss.D1,"I know, I know. We're bad... but you know what's worse? Disappointing your date! I wanted to show {DATE_CHAR_2_NAME} a good time, and I would have done anything to do it.",1)
hss.dlg(co,hss.D2,"Of course, sneaking in through the back meant we wound up backstage...")
hss.dlgA(co,hss.D2,"Where we got to ~meet~ my favorite comedian! Best date ever!",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} and {CHARACTER_2} snuck into a comedy show at the Laugh Factory... they wound up backstage and got to meet a famous comedian!";
function date_brunch_salvage(co)
hss.dlg(co,hss.D1,"Things really turned around after I had some food and coffee, though.")
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} felt bad about the rocky start to our date, so we had a complete redo! And I mean a ~complete~ redo.",1)
hss.dlgA(co,hss.D2,"It was so cute... {DATE_CHAR_1_NAME} disappeared around a corner, then walked back to our patio table and greeted me like I was a complete stranger! I got to hear all {DATE_CHAR_1_NAME}'s cheesy pick-up lines again...",9)
hss.dlgA(co,hss.D1,"Just like the first time we met, they worked like a charm!",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} and {CHARACTER_2} reenacted their first date over brunch. They were just as smitten the second time around!";
function date_artwalk_salvage(co)
hss.dlg(co,hss.D2,"After I spilled wine on {DATE_CHAR_1_NAME}, we had a fashion emergency on our hands!")
hss.dlg(co,hss.D2,"I rushed {DATE_CHAR_1_NAME} to the nearest store to buy a whole new outfit.")
hss.dlgA(co,hss.D1,"We made it back to the Art Walk with plenty of time to see everything. {DATE_CHAR_2_NAME} even bought us a bag of gourmet caramel corn to share!",1)
hss.dlgA(co,hss.D2,"We shared a lot more than that by the end of the night...",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} and {CHARACTER_2} enjoyed the downtown Art Walk after getting off to a rocky start. How do you recover from dating disasters?";
function date_winetasting_salvage(co)
hss.dlg(co,hss.D1,"I admit it, the wine was bad... but, to be honest, I don't really know what good wine tastes like...")
hss.dlg(co,hss.D2,"When I found out {DATE_CHAR_1_NAME} didn't know much about good quality wines, I knew what we had to do!")
hss.dlgA(co,hss.D2,"I took us straight to one of the best wineries in the area, and together we learned all about basic wine pairings.",1)
hss.dlgA(co,hss.D1,"Now I can totally tell you all about matching white wines with fish and red wines with beef! I never knew wine could taste so good!",1)
hss.dlgA(co,hss.D2,"But the best pair of the day was definitely {DATE_CHAR_1_NAME} and me!",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} and {CHARACTER_2} learned all about wine on a date! Do they make a good pairing?";
function date_bartending_salvage(co)
hss.dlg(co,hss.D2,"After the tequila incident, we both needed to cool down. Literally!")
hss.dlgA(co,hss.D2,"Fortunately, we were just up the street from a great retro diner that served custom milkshakes.",1)
hss.dlgA(co,hss.D1,"Something sweet and cool was just what I needed that night...",1)
hss.dlgA(co,hss.D1,"Good thing I had {DATE_CHAR_2_NAME} with me! I can't think of anyone sweeter or cooler!",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "After a bartending class, {CHARACTER_1} and {CHARACTER_2} went out for late night milkshakes at a retro diner!";
function date_extras_salvage(co)
hss.dlg(co,hss.D2,"I guess I did get a bit overzealous about getting our zombie scene just right...")
hss.dlgA(co,hss.D1,"But {DATE_CHAR_2_NAME}'s attention to detail actually wound up being a good thing! The director was really impressed and invited us to hang out with the cast afterward.",1)
hss.dlgA(co,hss.D1,"It might not have been the date we planned, but getting to hang out with movie stars is ~always~ a plus.",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} and {CHARACTER_2} were extras in a zombie blockbuster and got to hang out with the star-studded cast!";
function date_streetracing_salvage(co)
hss.dlgA(co,hss.D1,"Fortunately, {DATE_CHAR_2_NAME}'s penchant for wild, random turns helped us escape! {DATE_CHAR_2_NAME} is ~such~ a clutch driver!",1)
hss.dlg(co,hss.D2,"Riiight... we 'got away' from the cops.")
hss.dlg(co,hss.D2,"Don't tell {DATE_CHAR_1_NAME}, but the cops didn't get us because they were going after the street racers!")
hss.dlgA(co,hss.D1,"It's like I'm dating an action movie star!",9)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} and {CHARACTER_2} just managed to escape a street race! Vroom vroom.";
function date_soulcycle_salvage(co)
hss.dlgA(co,hss.D1,"I was determined to make it better for {DATE_CHAR_2_NAME}!",1)
hss.dlg(co,hss.D1,"I decided to make my own routine, set to a playlist of {DATE_CHAR_2_NAME}'s favorite songs. Then we went back, synced our iPods, and had our own spin class!")
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} was a ~much~ better instructor. With good music and good company, I'd definitely spin again!",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "After a terrible spin class, {CHARACTER_1} and {CHARACTER_2} designed their own! Isn't that... SPINteresting?!";
function date_coachella_salvage(co)
hss.dlgA(co,hss.D1,"I may have overreacted a little. Okay, ~a lot.~ I apologized...",2)
hss.dlg(co,hss.D2,"And I accepted! Plus, even though I did really want to see Brand New, I didn't want {DATE_CHAR_1_NAME} to be miserable the whole time.")
hss.dlgA(co,hss.D2,"We wound up going to see Marina and the Diamonds instead, and we ~both~ had a great time!",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "An old band feud nearly split {CHARACTER_1} and {CHARACTER_2} apart at Coachella, but they put aside their differences and enjoyed the show!";
function date_zoo_salvage(co)
hss.dlgA(co,hss.D2,"I knew I shouldn't have laughed so hard at the Koala Incident...",2)
hss.dlgA(co,hss.D1,"I just felt so betrayed... I thought I was forming a bond with the little guy!",2)
hss.dlg(co,hss.D2,"On our way out, I stopped by the zoo gift shop and bought a life-sized koala stuffed animal for {DATE_CHAR_1_NAME} to take home.")
hss.dlgA(co,hss.D1,"It's cute, cuddly, and best of all? It can't eat my hair!",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_2} bought a cuddly stuffed koala for {CHARACTER_1}! It must have been a KOALA-ty date!";
function date_bakingtogether_salvage(co)
hss.dlg(co,hss.D1,"I did need to cool down a bit... and putting out the fire definitely helped. We were all out of ingredients, but as it turned out, it didn't matter.")
hss.dlgA(co,hss.D2,"We ~may~ have gotten a bit distracted making out. {DATE_CHAR_1_NAME} just looked so heroic putting out that fire!",1)
hss.dlgA(co,hss.D1,"We were ~much~ better at making out than making cakes, so we just stuck to that all morning... and afternoon.",1)
hss.dlgA(co,hss.D2,"After dinner, we strolled up the block to a gourmet pastry shop and split a giant salt caramel cupcake!",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} and {CHARACTER_2} had a disastrous baking date... but they still got to enjoy gourmet cupcakes from a local shop!";
function date_escaperoom_salvage(co)
hss.dlg(co,hss.D2,"I could tell {DATE_CHAR_1_NAME} was getting overwhelmed... so we held hands and talked through the puzzles one at a time.")
hss.dlgA(co,hss.D1,"By working together, we tore through the puzzles with ease!",1)
hss.dlgA(co,hss.D2,"We escaped the room in the nick of time! And when they took our photographs for the winner's circle, I drew {DATE_CHAR_1_NAME} in for a deep kiss.",1)
hss.dlgA(co,hss.D1,"Turns out being trapped in a room isn't bad at all... when {DATE_CHAR_2_NAME} is with me!",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} and {CHARACTER_2} put their heads together and escaped from a room! Were they in a horror movie?";
function date_happyhour_salvage(co)
hss.dlg(co,hss.D1,"The next day, I felt terrible... and not just because of my raging hangover. I had completely ruined my date with {DATE_CHAR_2_NAME}!")
hss.dlg(co,hss.D1,"To make up for it, I made a new reservation for that night at the same fancy French restaurant we'd missed out on.")
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} was so sweet to get us another reservation. We had a great dinner and shared a deliciously chilled bottle of champagne.",1)
hss.dlgA(co,hss.D1,"I definitely learned my lesson--quality over quantity is the way to go! When it comes to alcohol, at least.",1)
hss.dlgA(co,hss.D1,"No matter how many dates I go on with {DATE_CHAR_2_NAME}, I know each one will be spectacular!",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} and {CHARACTER_2} missed their dinner reservations, but made new ones for the next night!";
function date_vegas_salvage(co)
hss.dlg(co,hss.D2,"On our way out, we spent our last dollar on a huge slot machine. We both grabbed the giant lever and pulled together...")
hss.dlgA(co,hss.D1,"And we won! We won ~a thousand dollars!~",4)
hss.dlgA(co,hss.D2,"One extravagant buffet at Caesars Palace later, and we'd broken even on the trip!",1)
hss.dlgA(co,hss.D1,"But that's not including all the priceless memories.",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} and {CHARACTER_2} lost a ton of money on roulette in Las Vegas... but won it all back with a single slot spin! Vegas, baby!";
function date_skybar_salvage(co)
hss.dlg(co,hss.D2,"But I wasn't about to let a little rain ruin our night! I figured, since we were wet anyway, why not take a dip in the rooftop pool?")
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} just straight up ~leapt~ into the pool!",4)
hss.dlgA(co,hss.D1,"And then everyone else did too! Our classy rooftop soiree transformed into a star-studded, rain-filled pool party!",1)
hss.dlgA(co,hss.D2,"Rain or shine, day or night, dates with {DATE_CHAR_1_NAME} are ~always~ a blast!",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "It started raining on a party at Skybar... so {CHARACTER_1} and {CHARACTER_2} jumped in the pool and kept the party going!";
function date_minigolf_salvage(co)
hss.dlgA(co,hss.D1,"Okay... maybe I ~did~ get a little competitive, too. And I definitely shouldn't have thrown {DATE_CHAR_2_NAME}'s putter into the water.",2)
hss.dlg(co,hss.D1,"We were kicked off the golf course, but after I apologized to the managers, they let us hang out in the arcade.")
hss.dlgA(co,hss.D2,"And that's where we realized we could put our competitiveness to good use!",1)
hss.dlgA(co,hss.D2,"We played all the co-op arcade games, and together we were unstoppable!",1)
hss.dlgA(co,hss.D1,"We won a ~ton~ of tickets and went home with a giant plush souvenir blanket. Perfect for cuddling on during our next date!",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} and {CHARACTER_2} showed their competitive streaks during a minigolf game... then worked together to dominate in the arcade!";
function date_farmersmarket_salvage(co)
hss.dlg(co,hss.D2,"Even though I ~still~ think those prices were insane, I wanted to make things up to {DATE_CHAR_1_NAME}.")
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} took me straight to an all-organic diner instead!",1)
hss.dlgA(co,hss.D1,"We were served by the owner herself, and we were able to chat about affordable organic food options.",1)
hss.dlgA(co,hss.D2,"She thought we were a ~really~ cute couple, too, and threw in a free vegan chocolate cake for dessert!",1)
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} and I fed each other delicious morsels until the huge slice was all gone.",9)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} and {CHARACTER_2} had a tasty, affordable meal at an all-organic diner! They went green AND saved green!";
function date_drawing_salvage(co)
hss.dlgA(co,hss.D1,"The next day, we tried the whole thing over again!",1)
hss.dlgA(co,hss.D2,"But this time we agreed to be way less judgy of our art skills.",1)
hss.dlgA(co,hss.D1,"We used a plate of fancy cheeses and chocolates to set the scene.",1)
hss.dlgA(co,hss.D1,"Good art and delicious snacks? Best date ever!",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} and {CHARACTER_2} just drew each other for an art class! Did {CHARACTER_1} ask to be drawn like one of {CHARACTER_2}'s French girls?";
function date_premiere_salvage(co)
hss.dlg(co,hss.D1,"I felt really bad about annoying {DATE_CHAR_2_NAME} during our date. I knew I had to make up for it.")
hss.dlgA(co,hss.D2,"We went to see another movie the next night, and the theater was completely empty! {DATE_CHAR_1_NAME} had rented out a whole screening room for us!",1)
hss.dlgA(co,hss.D2,"And the most surprising part? {DATE_CHAR_1_NAME} didn't even bring a phone!",1)
hss.dlgA(co,hss.D1,"I didn't miss it... {DATE_CHAR_2_NAME}'s company was just so enchanting!",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} ruined a movie with excessive phone usage... but more than made up for it by treating {CHARACTER_2} to a private screening!";
function date_glamping_salvage(co)
hss.dlg(co,hss.D1,"When I realized that {DATE_CHAR_2_NAME} was lost, I rushed into the woods, an unstoppable search party of one!")
hss.dlg(co,hss.D2,"{DATE_CHAR_1_NAME} found me!")
hss.dlgA(co,hss.D2,"We found our way back to the campsite, hand in hand.",1)
hss.dlgA(co,hss.D1,"A star-filled night with {DATE_CHAR_2_NAME} is everything I've ever dreamed of!",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} rescued {CHARACTER_2} from the dark woods... and then they camped out beneath the stars!";
function date_speakeasy_salvage(co)
hss.dlg(co,hss.D1,"By the time we got out of the ~literal sewers~, we were both frustrated and really, really smelly.")
hss.dlg(co,hss.D2,"I knew there was only one place we could go... the spa!")
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} took me to this brand new nighttime spa.",1)
hss.dlgA(co,hss.D2,"All their services are outdoors so you can enjoy the cool evening breeze as you get a massage...",1)
hss.dlgA(co,hss.D1,"We got squeaky clean, then relaxed with a couple's massage, and spent the rest of the night lounging in the natural hot springs!",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} and {CHARACTER_2} couldn't find a speakeasy... so they had a relaxing evening at a night spa instead!";
function date_weirdrestaurant_salvage(co)
hss.dlg(co,hss.D1,"Neither of us were really full after that experience.")
hss.dlgA(co,hss.D2,"Full of memories, maybe... and not the good kind.",2)
hss.dlgA(co,hss.D1,"We stopped by our favorite pizza place for some ~real~ food, then went home to watch a movie together.",1)
hss.dlgA(co,hss.D2,"Now ~that's~ how you do dinner. Three-cheese pizza, breadsticks on the side, and {DATE_CHAR_1_NAME} cuddled up next to me. I can't think of anything better.",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} and {CHARACTER_2} couldn't stomach a fancy molecular gastronomy meal, so they dashed out and got a pizza instead!";
function date_bookpremiere_salvage(co)
hss.dlg(co,hss.D1,"I felt bad about {DATE_CHAR_2_NAME}, so I thought back to the author's earlier works and came up with a solution!")
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME} started saying some really weird things to me, phrases that sounded almost like codewords... and that's when I remembered the spy from the author's first book!",1)
hss.dlgA(co,hss.D1,"The character Agent Parker is best known as a plainclothes spy who can blend into ~any~ crowd... and {DATE_CHAR_2_NAME} fit the bill perfectly!",1)
hss.dlgA(co,hss.D2,"I had a great time once {DATE_CHAR_1_NAME} helped me slip into character. And it didn't hurt that {DATE_CHAR_1_NAME} happened to be playing the part of a notorious art thief... my character's love interest!",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} and {CHARACTER_2} played a pair of secret agents at a costumed book launch party!";
function date_surfing_salvage(co)
hss.dlgA(co,hss.D1,"The trip to the beach wasn't a complete waste, though. When our instructor didn't show up, a couple of local surfers gave us a few tips.",1)
hss.dlgA(co,hss.D2,"We were able to get up on a few waves, and even though we wiped out ~a lot~, we still had a blast!",1)
hss.dlgA(co,hss.D1,"Surfing alongside {DATE_CHAR_2_NAME} is the best feeling ever. I can't wait for our next beach trip!",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} and {CHARACTER_2} got a few surfing tips from local surfers, then caught some radical waves!";
function date_drivein_salvage(co)
hss.dlgA(co,hss.D1,"Once we got used to the cheesy dialogue and the ~awful~ acting, it wasn't ~the worst.~",1)
hss.dlgA(co,hss.D2,"By the time the the second movie started, we were full-on making out!",1)
hss.dlg(co,hss.D1,"Marathon movie nights? Forget it. But marathon make out sessions?")
hss.dlgA(co,hss.D1,"Sign me and {DATE_CHAR_2_NAME} up!",5)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} and {CHARACTER_2} had to endure a terrible movie marathon at a drive-in... but they distracted each other with a marathon make-out sesh!";
function date_murdermystery_salvage(co)
hss.dlg(co,hss.D2,"To be honest, though... the food wasn't ~that~ great in the first place.")
hss.dlgA(co,hss.D1,"Management apologized and offered us a new table and meal, so we got to have a second chance at dinner!",1)
hss.dlgA(co,hss.D2,"This time, the food was much better! The rest of the show went much more smoothly, and {DATE_CHAR_1_NAME} and I had a great time whispering theories about who the murderer might be.",1)
hss.dlgA(co,hss.D1,"We were both completely wrong, but I got to be close to {DATE_CHAR_2_NAME}... so who cares?!",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} and {CHARACTER_2} tried to solve the case at a murder mystery dinner show! All they discovered was their love for each other!";
function date_hotdog_salvage(co)
hss.dlgA(co,hss.D2,"I felt so bad about ruining hot dogs for {DATE_CHAR_1_NAME}...",2)
hss.dlgA(co,hss.D2,"So instead, we stopped by the grocery store and grilled up a ton of high-quality Italian sausage in my backyard!",1)
hss.dlgA(co,hss.D1,"Cheap hot dogs can never truly be ruined for me... but sometimes you need to class it up and enjoy some primo sausage, with a helping of beer and the outdoors!",1)
hss.dlgA(co,hss.D2,"Just remind me not to tell {DATE_CHAR_1_NAME} what goes into regular sausages...",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} and {CHARACTER_2} stepped up their food game with some delicious Italian sausage, flame-grilled to perfection!";
function date_fancysushi_salvage(co)
hss.dlg(co,hss.D2,"Since I didn't get sick, I drove {DATE_CHAR_1_NAME} home and made some honey ginger tea and a simple chicken noodle soup. I figured {DATE_CHAR_1_NAME} might want something easy on the stomach...")
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} spent the whole night taking care of me, making sure I stayed hydrated and got plenty of rest. I felt almost completely better the next morning.",1)
hss.dlgA(co,hss.D1,"I don't think I'll be having any more raw fish anytime soon... but another date with {DATE_CHAR_2_NAME} is definitely on the horizon!",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_2} happily stayed up all night taking care of {CHARACTER_1}! Is love the best medicine?";
function date_countrywestern_salvage(co)
hss.dlgA(co,hss.D1,"But I realized that, as much as I hate drama, ~I~ was being the dramatic one.",2)
hss.dlgA(co,hss.D1,"So I ordered a round for the whole place to really get the party going... a real country way of saying sorry. I had to listen to that awful music, but at least I was with {DATE_CHAR_2_NAME}.",1)
hss.dlgA(co,hss.D2,"Turned out to be a great night! I even got to dance with my favorite star after that!",1)
hss.dlgA(co,hss.D2,"Who was it? {DATE_CHAR_1_NAME}, of course!",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} bought a round at a country western bar and became the superstar of the night on the dance floor with {CHARACTER_2}!";
function date_horseback_salvage(co)
hss.dlgA(co,hss.D1,"Fortunately, we found an outlet for all our leftover excitement! We went next door to a country bar where a huge mechanical bull was waiting.",1)
hss.dlg(co,hss.D2,"On any other day, I think I would have been too scared to try it... but after the letdown of the horses, I had adrenaline to spare!")
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME} was ~so~ cool and sexy up on that bull with one arm in the air!",4)
hss.dlgA(co,hss.D2,"When we give the horses another try, I'll be able to ride fearlessly into the sunset with {DATE_CHAR_1_NAME} at my side! Yee-haw!",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} and {CHARACTER_2} rode into the sunset... on a mechanical bull at a country bar!";
function date_fashionweek_salvage(co)
hss.dlg(co,hss.D1,"Then we realized, wait, why are we arguing over this?")
hss.dlgA(co,hss.D2,"We ended up having a really interesting talk about our different tastes... and actually learned a lot about each other.",1)
hss.dlgA(co,hss.D1,"After, we went to Rodeo Drive. We both splurged on a new outfit... for each other! Since we knew more about each other's fashion tastes, we were able to pick the perfect outfits.",1)
hss.dlgA(co,hss.D2,"Maybe your outfit always has to match, but who says {DATE_CHAR_1_NAME} and I have to? I'd rather keep things interesting...",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} and {CHARACTER_2} learned about each other's fashion sense during L.A. Fashion Week, then bought each other a new outfit!";
function date_discorollerskating_salvage(co)
hss.dlg(co,hss.D2,"I could hardly walk, but {DATE_CHAR_1_NAME} was a sweetheart, apologizing over and over and helping me back to my place.")
hss.dlgA(co,hss.D1,"I was so afraid I'd completely blown it... but {DATE_CHAR_2_NAME} was just laughing about how disastrous it'd been.",4)
hss.dlgA(co,hss.D2,"We ended up just joking and hanging out while {DATE_CHAR_1_NAME} iced my ankles... and soon I completely forgot how badly I'd humiliated myself.",1)
hss.dlgA(co,hss.D1,"I asked what else I could do to make {DATE_CHAR_2_NAME} feel better...",9)
hss.dlgA(co,hss.D2,"So I asked for a kiss. And you know what? It actually worked.",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "A sprained ankle cut {CHARACTER_1} and {CHARACTER_2}'s disco roller rink date short, but there's nothing a kiss can't fix!";
function date_chinatown_salvage(co)
hss.dlg(co,hss.D1,"{DATE_CHAR_2_NAME} was pretty distracted by the fortune teller's grim warning, until we saw a Chinese opera troupe performing right in the street.")
hss.dlgA(co,hss.D1,"We stopped to watch the performance... and in the end, one of the characters got stabbed in the back... literally!",4)
hss.dlgA(co,hss.D2,"So ~that's~ the betrayl the fortune teller told us about! I guess my relationship with {DATE_CHAR_1_NAME} is safe!",1)
hss.dlgA(co,hss.D1,"I don't need any fortune tellers to know that my future holds more dates with {DATE_CHAR_2_NAME}!",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} and {CHARACTER_2} received an ominous fortune in Chinatown, but their date revealed only good things in their future!";
function date_skydiving_salvage(co)
hss.dlg(co,hss.D2,"We were almost past our target zone, so I had to jump without {DATE_CHAR_1_NAME}...")
hss.dlgA(co,hss.D1,"But when I saw {DATE_CHAR_2_NAME} flying, it just looked so epic... so I jumped too!",4)
hss.dlgA(co,hss.D1,"And it was ~awesome~! Utterly terrifying, but awesome!",5)
hss.dlgA(co,hss.D1,"Maybe next time, we'll go BASE jumping... or whitewater rafting... or hang-gliding...",1)
hss.dlgA(co,hss.D2,"Looks like I awakened a real daredevil in {DATE_CHAR_1_NAME}!",1)
hss.dlgA(co,hss.D1,"With {DATE_CHAR_2_NAME} at my side, I feel completely fearless!",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} took a leap of faith and went skydiving with {CHARACTER_2}!";
function date_pinkberry_salvage(co)
hss.dlg(co,hss.D1,"We got more than we bargained for with the froyo machines, but at least we beat the summer heat.")
hss.dlg(co,hss.D2,"We weren't really in the mood for more froyo after that fiasco, so we picked up a huge bowl of shaved ice to share instead.")
hss.dlgA(co,hss.D1,"After, {DATE_CHAR_2_NAME} and I shared a few icy kisses!",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} and {CHARACTER_2} beat the heat by sharing shaved ice and chilly kisses!";
function date_cookinglessons_salvage(co)
hss.dlgA(co,hss.D1,"I'd finally had enough of 'precise' this, and 'exact' that...",3)
hss.dlgA(co,hss.D1,"So I grabbed a five-pound bag of flour... and dumped it over {DATE_CHAR_2_NAME}'s head!",3)
hss.dlgA(co,hss.D2,"It... was... ~awesome~! Our class turned into a massive food fight! It was the most fun I've ~ever~ had in a kitchen.",1)
hss.dlg(co,hss.D1,"Afterward, {DATE_CHAR_2_NAME} apologized for being such a Gordon Ramsey about everything and helped me wash my hair afterward...")
hss.dlgA(co,hss.D2,"Complete with a soothing head massage!",1)
hss.showDateComplete(co)
end
--dialog_salvage_text = "{CHARACTER_1} and {CHARACTER_2} turned their cooking class into an epic food fight!";
function breakup_meta(co)
hss.dlgA(co,hss.D1,"I'm sorry, {DATE_CHAR_2_NAME}. I can't be with someone who isn't interested in the things I'm interested in!",2)
hss.dlgA(co,hss.D2,"What?! But you're only interested in that game on your phone!",3)
hss.dlgA(co,hss.D2,"Look how cute your avatar is! And now our avatars are holding hands! Squee!",9)
hss.dlgA(co,hss.D1,"That's it! Hope you enjoy our virtual relationship, because our real one's ~over!~",3)
hss.showBreakup(co)
--dialog_text = "{CHARACTER_1} broke up with {CHARACTER_2} for valuing their virtual relationship more than their real one!";
end
function breakup_moviekiss(co)
hss.dlgA(co,hss.D1,"It's over, {DATE_CHAR_2_NAME}. I saw you kissing someone else.",2)
hss.dlgA(co,hss.D2,"Are you talking about the kiss in the movie I'm in? That was ~acting.~",4)
hss.dlgA(co,hss.D1,"Well, next time act like you're not enjoying it so much!",2)
hss.showBreakup(co)
--dialog_text = "{CHARACTER_1} dumped {CHARACTER_2} for enjoying an on-screen kiss just a peck too much!";
end
function breakup_paparazzi(co)
hss.dlgA(co,hss.D2,"We're done, {DATE_CHAR_1_NAME}! You completely violated my trust. ~Somehow,~ the paparazzi knew exactly where I was going to be last night.",3)
hss.dlgA(co,hss.D1,"And you think it was ~my~ fault?!",2)
hss.dlgA(co,hss.D2,"They told me that you tipped them off about my plans!",3)
hss.dlgA(co,hss.D2,"Oh, right. Yeah, that was me...",2)
hss.showBreakup(co)
--dialog_text = "{CHARACTER_2} told the paparazzi about {CHARACTER_1}'s plans, and now it's over! Just a typical breakup...";
end
function breakup_famelevel(co)
hss.dlgA(co,hss.D1,"You're breaking up with me?! Why?!",4)
hss.dlgA(co,hss.D2,"Let's face facts. I'm very talented, so my career is blowing up. And you're...",2)
hss.dlgA(co,hss.D1,"What? Not as talented or something?",2)
hss.dlgA(co,hss.D2,"I don't want to be harsh... but yes, that's accurate.",2)
hss.showBreakup(co)
--dialog_text = "{CHARACTER_2} ended things with {CHARACTER_1} on the grounds of being more talented. Someone's on an ego trip...";
end
function breakup_hunt(co)
hss.dlgA(co,hss.D2,"Why would you want to break up?! I thought things were going well between us!",3)
hss.dlgA(co,hss.D1,"Well, they were...",2)
hss.dlgA(co,hss.D1,"But then I realized that I don't feel for you the way I feel for... for Professor Hunt!",2)
hss.dlgA(co,hss.D1,"Can you forgive me?",2)
hss.dlgA(co,hss.D2,"No. I'm still mad. But, I can at least understand what you're feeling...",3)
hss.dlgA(co,hss.D2,"I kind of have a crush on him too!",4)
hss.showBreakup(co)
--dialog_text = "{CHARACTER_1} and {CHARACTER_2} broke up because of feelings for Professor Hunt! Can you blame them?";
end
function breakup_planning(co)
hss.dlgA(co,hss.D2,"{DATE_CHAR_1_NAME}! Why would you break up with me?",3)
hss.dlgA(co,hss.D1,"Well, you know how we've been on all these dates, and I'm always like '{DATE_CHAR_2_NAME}'s the best. That was wonderful!'",2)
hss.dlgA(co,hss.D2,"Uh-huh...",3)
hss.dlgA(co,hss.D1,"I was lying. I hate the dates we've been on.",2)
hss.showBreakup(co)
--dialog_text = "{CHARACTER_1} came clean about all the bad dates with {CHARACTER_2}! Now they're history!";
end
function breakup_tabloid(co)
hss.dlgA(co,hss.D1,"{DATE_CHAR_2_NAME}! I just found out from the tabloids that you went out to five clubs last weekend! In one night!",3)
hss.dlgA(co,hss.D2,"What?! That's not true. I was with you. Remember?",4)
hss.dlgA(co,hss.D1,"I want to believe you! But there's a picture right here.",3)
hss.dlgA(co,hss.D2,"That's clearly been 'shopped. It's not even remotely me!",4)
hss.dlgA(co,hss.D1,"Sorry, {DATE_CHAR_2_NAME}, I can't be with someone I don't trust...",2)
hss.showBreakup(co)
--dialog_text = "{CHARACTER_1} lost trust in {CHARACTER_2} because of some tabloid photos! Scandalous break up!";
end
function breakup_grades(co)
hss.dlgA(co,hss.D1,"I think we should break up, {DATE_CHAR_2_NAME}...",2)
hss.dlgA(co,hss.D2,"Does this have something to do with your grades?",2)
hss.dlgA(co,hss.D1,"Unfortunately, yes. You're too much fun and too much of a distraction.",2)
hss.dlgA(co,hss.D2,"Well, what if I promise to be less fun and less distracting?",2)
hss.dlgA(co,hss.D1,"I want to be with you, but I can't flunk out of Hollywood U. Sorry, this just isn't going to work...",2)
hss.showBreakup(co)
--dialog_text = "Aww... {CHARACTER_1} had to end things early with {CHARACTER_2} in order to get better grades. Priorities.";
end
function breakup_amicable(co)
hss.dlgA(co,hss.D1,"We are awful together! We fight ~all~ the time. Let's break up.",2)
hss.dlgA(co,hss.D2,"Actually...",2)
hss.dlgA(co,hss.D2,"I couldn't agree more!",1)
hss.dlgA(co,hss.D1,"Amicable break-up! Woop! Woop!",5)
hss.showBreakup(co)
--dialog_text = "Whaaaaaat. {CHARACTER_1} and {CHARACTER_2} just broke up... amicably!";
end
function breakup_socialmedia(co)
hss.dlgA(co,hss.D1,"Have you been tweeting things I say under the hashtag #Annoying{DATE_CHAR_1_NAME}isms?",3)
hss.dlgA(co,hss.D2,"Uh, what is tweeting?",4)
hss.dlgA(co,hss.D1,"Don't play dumb with me!",3)
hss.dlgA(co,hss.D2,"I'm sorry! I thought it was just harmless joking!",2)
hss.dlgA(co,hss.D1,"To your thousands of followers?! Hashtag ~we're done!~",3)
hss.showBreakup(co)
--dialog_text = "{CHARACTER_2} tweeted personal stuff about {CHARACTER_1}! #ItsOver";
end
hss.checkEnvironment({"DATE_CHAR_1", "DATE_CHAR_2", "DATE_CHAR_1_NAME", "DATE_CHAR_2_NAME"})
hss.runOpt()
