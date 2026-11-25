-- HWU Secondary: Director "Once Upon A Time"
function outro_sec_fairytale_1(co)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Thanks for partnering with me, {YOU}. I'm sure we'll make magic happen on this assignment!",1)
hss.dlgA(co,hss.U,"Me too! And can you believe where class is being held today?",1)
hss.dlgA(co,hss.U,"We're actually learning ~in~ a theme park!",1)
hss.evt(co,"You and {CONNECTED_CHARACTER_NAME} walk with your class through the ivy-covered gates leading into the Fairy Kingdom theme park.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","I'm so excited! This is my absolute favorite place this side of Neverland!",5)
hss.dlgA(co,hss.U,"Makes sense. You do like Fairy Tales.",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","More like ~love.~ In fact, I'd wager the only person who loves fairy tales more than me is--",1)
hss.dlg(co,"THOMAS","~Jacob Wilhelm...~")
hss.evt(co,"Professor Hunt pauses by a large bronze statue of a man in a cravat.", "")
hss.dlg(co,"THOMAS","The man, the myth, the ~fairy tale.~")
hss.showQuestComplete(co)
hss.dlg(co,"THOMAS","Once upon a time, in a land far away... Pasadena... a poor young illustrator spun his passion for fairy tales into box office gold.")
hss.dlg(co,"THOMAS","He used the fortune he made to build this theme park, the Fairy Kingdom...")
hss.dlg(co,"THOMAS","A place where no child would ever be unhappy.")
hss.dlgA(co,"{CONNECTED_CHARACTER}","OMG, I'm so excited! I can barely handle it!",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","This is like ~Into the Woods~ times ~Maleficent~ times--",1)
hss.dlg(co,hss.U,"~...Snow White and the Huntsman?~")
hss.dlgA(co,"{CONNECTED_CHARACTER}","We don't speak of that film, {YOU}. Not ever.",3)
hss.dlg(co,"THOMAS","Working in Hollywood, you must face brutal criticism with poise and dignity...")
hss.dlg(co,"THOMAS","So today, you will each dress yourselves up as Fairy Tale characters.")
hss.dlg(co,"THOMAS","You will wander the Fairy Kingdom, entertaining park guests...")
hss.dlg(co,"THOMAS","And your performances will be judged by the cruelest, harshest, most ruthless critics of all... ~children.~")
hss.evt(co,"Thomas shudders slightly at the word.", "")
hss.dlg(co,"THOMAS","Dressing rooms are to your left. Class begins... NOW!")
end
function intro_sec_fairytale_2(co)
hss.evt(co,"You and {CONNECTED_CHARACTER_NAME} head into the dressing room to change. Elaborate full-body costumes hang on the walls.", "")
hss.dlg(co,hss.U,"Oh ~wow!~")
hss.dlgA(co,"{CONNECTED_CHARACTER}","My, what big eyes you have, {YOU}!",1)
hss.dlg(co,hss.U,"So these fairy tale characters are impressive, but why does this princess have a crossbow?")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Because that's not just ~any~ old princess...",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","You're looking at the costume worn by Princess Redina Hood. She led the Woodland Warriors against the evil forces of Madame Wolfe!",1)
hss.evt(co,"{CONNECTED_CHARACTER_NAME} points to two other costumes.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","But Redina couldn't have won the day without the help of Wesley the hunky woodcutter or Squeaky the Squirrel.",1)
hss.dlg(co,hss.U,"So... this is basically Little Red Riding Hood then?")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Yeah. Kinda Disney-steampunk, but with more singing. Which costume do you want to wear?",1)
end
function outro_sec_fairytale_2(co)
hss.evt(co,"You examine the row of elaborate costumes thoughtfully.", "")
hss.dlg(co,hss.U,"Hmm, I'll dress up as...")
local choice = hss.showTextMenu(co, "Which costume do you choose?", "Princess Redina Hood!|Wesley the hunky woodcutter!|Squeaky the Squirrel!");
if choice == 0 then
hss.setQuestProperty("fairyTaleCharacter", 1)
hss.dlgA(co,hss.U,"My Twitter subjects, err... I mean, ~followers~ think I'm practically a princess already!",1)
elseif choice == 1 then
hss.setQuestProperty("fairyTaleCharacter", 2)
hss.dlgA(co,hss.U,"CrossFit abs. Love of flannel and flapjacks...",1)
hss.dlgA(co,hss.U,"I'm basically 9/10 lumberjack already.",1)
else
hss.setQuestProperty("fairyTaleCharacter", 3)
hss.dlgA(co,hss.U,"I ~am~ the go-to for comic relief!",1)
if hss.getCharacterGender("YOU") == hss.Gender.MALE then
hss.dlgA(co,hss.U,"I'll be like the Jonah Hill of plucky woodland critters.",1)
else
hss.dlgA(co,hss.U,"I'll be like the Melissa McCarthy of plucky woodland critters.",1)
end
end
if hss.getCharacterGender("_FAIRY_TALE_") == hss.Gender.MALE then
hss.dlgA(co,"{CONNECTED_CHARACTER}","Great choice, {YOU}! I've decided to be Prince Hansel...",1)
if choice == 0 then
hss.dlgA(co,"{CONNECTED_CHARACTER}","He and Redina are romantically entangled, so we'll make a great pair!",1)
elseif choice == 1 then
hss.dlgA(co,"{CONNECTED_CHARACTER}","Hansel and Wesley are brothers, so we'll make a great pair!",1)
else
hss.dlgA(co,"{CONNECTED_CHARACTER}","He and Squeaky are best friends, so we'll make a great pair!",1)
end
else
hss.dlgA(co,"{CONNECTED_CHARACTER}","Great choice, {YOU}! I've decided to be Princess Gretel...",1)
if choice == 0 then
hss.dlgA(co,"{CONNECTED_CHARACTER}","She and Redina are sisters, so we'll make a great pair!",1)
elseif choice == 1 then
hss.dlgA(co,"{CONNECTED_CHARACTER}","She and Wesley are romantically entangled, so we'll make a great pair!",1)
else
hss.dlgA(co,"{CONNECTED_CHARACTER}","She and Squeaky are best friends, so we'll make a great pair!",1)
end
end
hss.showQuestComplete(co)
hss.evt(co,"You and {CONNECTED_CHARACTER_NAME} barely have time to pull on your costumes when Professor Hunt bursts through the changing room door!", "")
hss.dlgA(co,"THOMAS","Mirror mirror, on the wall, who's the slowest of them all?",3)
hss.dlgA(co,"THOMAS","You. You're here, and the park is starting to fill up with guests!",3)
hss.dlgA(co,hss.U,"Don't you knock? We're not done changing!",3)
if hss.getCharacterGender("YOU") == hss.Gender.MALE then
hss.dlgA(co,"THOMAS","Get over yourself. If I wanted to see hunky guys, I'd rent ~The Brothers Grimm.~",3)
else
hss.dlgA(co,"THOMAS","Get over yourself, {YOU}. There's nothing you've got that Kate Winslet didn't win an Oscar for flaunting.",3)
end
hss.dlgA(co,"{CONNECTED_CHARACTER}","It's okay, {YOU}. Off to work we go!",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","And we can begin over by Prince Charming's castle.",1)
hss.dlgA(co,hss.U,"...where?",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","On the other side of those bushes!",1)
end
function outro_sec_fairytale_3(co)
hss.evt(co,"You and {CONNECTED_CHARACTER_NAME} round the bushes and pause near a large crowd of children...", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","To find the biggest crowds, you have to know where all the park events are, and I know all of them by heart!",1)
hss.showQuestComplete(co)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Watch! At fifteen past the hour, Cinderella will run by and lose her slipper...",1)
hss.evt(co,"There's a commotion from inside the castle, and a blonde woman in a ballgown bursts out. She tears off in a pumpkin carriage.", "")
hss.evt(co,"The crowd cheers, and the families begin to disperse.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Quickly, while we still have an audience, we'll need to start our routine!",1)
end
function inter_entertain(co)
if hss.getCharacterGender("_FAIRY_TALE_") == hss.Gender.MALE then
hss.evt(co,"{CONNECTED_CHARACTER_NAME} leaps out into the middle of a group of children, brandishing his magic sceptre. He holds it up--", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Prince Hansel declares 'CANDY CRUSH'!",1)
else
hss.evt(co,"{CONNECTED_CHARACTER_NAME} leaps out into the middle of a group of children, brandishing her magic sceptre. She holds it up--", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Princess Gretel declares 'CANDY CRUSH'!",1)
end
hss.evt(co,"Multicolored candies shoot skyward from the jeweled hilt! The crowd applauds.", "")
hss.dlgA(co,hss.U,"So... about this ~routine~ we're supposed to do together?",4)
hss.dlg(co,"{CONNECTED_CHARACTER}","I know you haven't seen ~Riding Hood...~")
hss.dlgA(co,"{CONNECTED_CHARACTER}","But we're doing the recruitment scene from the first act of the movie...",1)
hss.dlgA(co,hss.U,"...okay?",4)
local fairyTaleCharacter = 0;
fairyTaleCharacter = hss.getGameProperty("sec_fairytale_2", "fairyTaleCharacter")
if fairyTaleCharacter == 1 then
hss.dlgA(co,"{CONNECTED_CHARACTER}","You're Princess Redina Hood. Just say something in character when I point at you.",4)
elseif fairyTaleCharacter == 2 then
hss.dlgA(co,"{CONNECTED_CHARACTER}","You're the hunky woodcutter. Just say something in character when I point at you.",4)
else
hss.dlgA(co,"{CONNECTED_CHARACTER}","You're Squeaky the Squirrel. Just say something in character when I point at you.",4)
end
hss.evt(co,"{CONNECTED_CHARACTER_NAME} does a cartwheel and a flip, landing squarely beside another group of children...", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","A dangerous mission, you say? ~I volunteer!~",1)
if fairyTaleCharacter == 1 then
hss.dlgA(co,"{CONNECTED_CHARACTER}","What do you say, Little Red Riding Hood?",1)
elseif fairyTaleCharacter == 2 then
hss.dlgA(co,"{CONNECTED_CHARACTER}","And what do you say, Woodcutter?",1)
else
hss.dlgA(co,"{CONNECTED_CHARACTER}","And what do you say, Squeaky the Squirrel?",1)
end
local crowdreaction = 0;
local choice = hss.showTextMenu(co, "What do you say?", "Don't call me little!|I'll lend my ax!|Awwwww... nuts!");
if choice == 0 and fairyTaleCharacter == 1 then
crowdreaction = 1;
hss.dlgA(co,hss.U,"This girl is all growed up.",1)
hss.evt(co,"You nock an arrow in your crossbow.", "")
elseif choice == 1 and fairyTaleCharacter == 2 then
hss.evt(co,"You kiss your biceps.", "")
hss.dlgA(co,hss.U,"And these two guns!",1)
crowdreaction = 1;
elseif choice == 2 and fairyTaleCharacter == 3 then
hss.dlgA(co,hss.U,"Danger gets me all ~squirrelly!~",1)
hss.evt(co,"You spin in an excited circle, and then salute.", "")
crowdreaction = 1;
else
crowdreaction = 2;
end
if crowdreaction == 2 then
hss.setQuestProperty("fairyTaleFail1", 1)
hss.evt(co,"The children murmur, disappointed. One shouts, 'You're bad!' They begin to wander off.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Uh... ~ummm...~ I mean--",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","My ~friend~ would never say that! This must be a trick by Madame Wolfe!",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","~CANDY CRUSH!~",3)
hss.evt(co,"{CONNECTED_CHARACTER_NAME} casts another candy spell, this time right at you! You collapse to the ground. The audience applauds, and {CONNECTED_CHARACTER_NAME} takes a bow.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Another wicked plot foiled!",1)
hss.dlgA(co,hss.U,"Sorry about that... and quick thinking!",2)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Actually, I kinda stole the idea from the home video sequel, Riding Hood 4: Return of Madame Wolfe.",1)
hss.dlgA(co,hss.U,"Okay, wow, so you really do know this stuff.",4)
else
hss.setQuestProperty("fairyTaleFail1", 0)
hss.dlgA(co,hss.U,"Don't worry, humble townsfolk! We'll stop Madame Wolfe, and your town will be free forever!",1,hss.REWARD_COINS,20)
hss.evt(co,"The children cheer! You and {CONNECTED_CHARACTER_NAME} take a bow.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Well done, {YOU}!",1)
end
hss.markQuestScriptRequirementFinished()
end
function outro_sec_fairytale_4(co)
hss.evt(co,"As the crowd moves on, you and {CONNECTED_CHARACTER_NAME} regroup...", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","All things considered, not a bad start!",1)
hss.dlg(co,hss.U,"Thanks to you! How'd you get so good at all this Fairy Tale stuff anyway?")
hss.dlg(co,"{CONNECTED_CHARACTER}","I guess I've always liked fairy tales. Don't you?")
hss.dlg(co,hss.U,"Me? I guess I always thought...")
local choice = hss.showTextMenu(co, "What do you say?", "Fairy tales are for kids.|Real fairy tales are dark.|Fairy tales are great!");
if choice == 0 then
hss.dlg(co,hss.U,"They're fun, but they're something normal people grow out of. No offense...")
elseif choice == 1 then
hss.dlg(co,hss.U,"Like, Little Red Riding Hood's grandma gets eaten in most versions of the story, and in the original version, Red Riding Hood gets ~worse~ than eaten.")
hss.dlg(co,hss.U,"So no, I never really viewed them as more than just stories...")
else
hss.dlgA(co,hss.U,"I mean, they're magical and delightful.",1)
hss.dlgA(co,hss.U,"But I never really viewed them as more than just stories...",1)
end
hss.dlgA(co,"{CONNECTED_CHARACTER}","It's okay. Fairy tales ~do~ mean a lot to me...",2)
if hss.getCharacterGender("_FAIRY_TALE_") == hss.Gender.MALE then
hss.dlg(co,"{CONNECTED_CHARACTER}","I... I guess maybe it's how in fairy tales, the poor orphaned kid always turns out to be a prince or a powerful magician...")
else
hss.dlg(co,"{CONNECTED_CHARACTER}","I... I guess maybe it's how in fairy tales, the poor orphaned kid always turns out to be a princess or a powerful enchantress...")
end
hss.dlgA(co,"{CONNECTED_CHARACTER}","And I've always felt like that kid, because... I didn't really have...",2)
hss.evt(co,"{CONNECTED_CHARACTER_NAME}'s voice trails off for a moment.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","I never got to know my parents.",2)
hss.dlgA(co,"{CONNECTED_CHARACTER}","But when I read fairy tales or watched movies or I came to visit places like the Fairy Kingdom...",2)
hss.dlgA(co,"{CONNECTED_CHARACTER}","That gave me hope that someday my life could turn out to be... I don't want to say ~magical...~",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","But maybe my life wouldn't feel so cursed.",2)
hss.dlgA(co,hss.U,"Wow, I'm sorry. I didn't know all that...",2)
hss.dlgA(co,"{CONNECTED_CHARACTER}","It's okay! I mean, I did get into Hollywood U!",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","I believe life ~can~ have a fairy tale happy ending!",1)
hss.showQuestComplete(co)
hss.evt(co,"For the rest of the afternoon, you and {CONNECTED_CHARACTER_NAME} work the park, entertaining groups of children.", "")
fairyTaleCharacter = 0;
fairyTaleCharacter = hss.getGameProperty("sec_fairytale_2", "fairyTaleCharacter")
if fairyTaleCharacter == 1 then
hss.dlgA(co,"{CONNECTED_CHARACTER}","Aww, that girl said she wants to grow up to be a beautiful princess just like you!",4)
elseif fairyTaleCharacter == 2 then
hss.dlgA(co,"{CONNECTED_CHARACTER}","Aww, that kid said he wants to grow up to be a big, strong woodcutter just like you!",4)
else
hss.dlgA(co,"{CONNECTED_CHARACTER}","Did you hear that? That kid said she wants to grow up to be a hilarious squirrel just like you!",4)
end
hss.evt(co,"You turn to the child and say...", "")
local choice = hss.showTextMenu(co, "What do you say?", "Remember to wish hard enough!|Yikes... not gonna happen, kid.");
if choice == 0 then
hss.setQuestProperty("fairyTaleFail2", 0)
hss.dlgA(co,hss.U,"Because whatever you wish, you can make real!",1,hss.REWARD_COINS,20)
hss.evt(co,"The child hugs you, and the crowd erupts in applause! You and {CONNECTED_CHARACTER_NAME} bow.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Aww... well said, {YOU}!",1)
else
if fairyTaleCharacter == 1 then
hss.dlgA(co,hss.U,"Princesses aren't real...",1)
hss.dlgA(co,hss.U,"Well, except for Kate Middleton, and she already bagged the last good prince.",1)
elseif fairyTaleCharacter == 2 then
hss.dlg(co,hss.U,"Ignoring the fact that I'm a fictional character...")
hss.dlg(co,hss.U,"Do you really think there will be any trees left to cut down in twenty years?")
else
hss.dlg(co,hss.U,"Ignoring the fact that I'm a fictional character...")
hss.dlg(co,hss.U,"You want to be a human-sized squirrel? That's not even plausible.")
end
hss.setQuestProperty("fairyTaleFail2", 1)
hss.evt(co,"The crowd boos! Someone tosses a funnel cake, barely missing your head!", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","...and that is our show!",4)
hss.evt(co,"{CONNECTED_CHARACTER_NAME} drags you off before the families can tear you to shreds.", "")
hss.dlgA(co,hss.U,"What? Kid's gotta learn sometime!",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Even if ~you~ don't believe in the magic of fairy tales, it doesn't mean you have to ruin things for the children!",3)
end
hss.evt(co,"A distant trumpeting yowl shakes the park!", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Whoa... did you hear that?",4)
hss.dlgA(co,hss.U,"...it sounded like a cat?",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Obviously! Who else but Puss in Boots would announce the Fairy Tale Parade?",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Eek! And look at the state of us! We'll need touch-ups before the main event!",4)
end
function intro_sec_fairytale_5(co)
hss.evt(co,"You and {CONNECTED_CHARACTER_NAME} race over to the Parade Prep area.", "")
if hss.getCharacterGender("YOU") == hss.Gender.MALE then
hss.dlgA(co,hss.Q2,"Eek! Your guyliner is running, {YOU}! And your foundation needs foundation!",4)
else
hss.dlgA(co,hss.Q2,"Eek! Your eyeliner is running, {YOU}! And your foundation needs foundation!",4)
end
hss.dlgA(co,hss.Q3,"Plus you've got seams bursting! What were you two doing out there? Cartwheels?",4)
hss.dlgA(co,hss.U,"Cartwheels, somersaults, seven dwarf juggling... anything to entertain!",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","If you want actors that always move the same way, you should dress the animatronic Three Bears over at the Honeyhole Jamboree.",1)
hss.dlgA(co,hss.Q2,"Um, I tend to avoid places called the 'Honeyhole' anything...",1)
hss.dlgA(co,hss.Q3,"Besides, we promise to work quickly!",1)
end
function outro_sec_fairytale_5(co)
hss.evt(co,"After some touch-ups and some stitch-ups, you and {CONNECTED_CHARACTER_NAME} join the rest of the characters on the Woodland Warriors float.", "")
hss.dlgA(co,"THOMAS","On time, {YOU}... but just barely...",3)
hss.dlgA(co,"THOMAS","As for everyone else, remember to remain in character at all times!",3)
hss.dlgA(co,"THOMAS","Jacob Wilhelm will be riding in this parade, and I don't want ~anything~ to go wrong.",3)
hss.evt(co,"The float begins to slowly roll forward. Throngs of children scream and cheer!", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","This is it! Our big moment!",1)
hss.showQuestComplete(co)
hss.evt(co,"As the parade winds its way through the roaring crowds, {CONNECTED_CHARACTER_NAME} suddenly stiffens.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Look! Over by Mermaid Cove, that kid is wandering around all by himself, completely cut off from everybody.",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Lost and alone. ~Crying...~",4)
local choice = hss.showTextMenu(co, "What do you say?", "Awww, that's really sad.|Security can handle it.|The sweet tears of children.");
if choice == 0 then
hss.dlgA(co,hss.U,"I hope he'll be okay...",2)
hss.dlgA(co,hss.U,"It's too bad that Professor Hunt says we're not supposed to leave the float--",2)
elseif choice == 1 then
hss.dlgA(co,hss.U,"It sucks, but what can we do about it?",2)
hss.dlgA(co,hss.U,"Professor Hunt says we're not supposed to leave the float--",2)
else
hss.dlgA(co,"{CONNECTED_CHARACTER}","I know you don't know the ~Riding Hood~ movie very well, but that's cruel and completely wrong for your character.",3)
hss.dlgA(co,hss.U,"Yes... my 'character'...",4)
end
hss.evt(co,"{CONNECTED_CHARACTER_NAME} leaps to the front of the float and yanks back on the emergency brake.", "")
hss.dlgA(co,hss.U,"Uh... hey, wait, {CONNECTED_CHARACTER_NAME}!",4)
if hss.getCharacterGender("_FAIRY_TALE_") == hss.Gender.MALE then
hss.dlgA(co,hss.U,"I mean... PRINCE HANSEL! WHAT ARE YOU--",4)
else
hss.dlgA(co,hss.U,"I mean... PRINCESS GRETEL! WHAT ARE YOU--",4)
end
hss.evt(co,"Your float grinds to a halt, and a second float rear-ends you. A third float smashes into that one!", "")
hss.evt(co,"An actress dressed like a teapot falls off and rolls awkwardly on the ground.", "")
hss.evt(co,"Soon, the entire parade has become a pile-up!", "")
hss.dlgA(co,hss.U,"That's not good!",4)
end
function outro_sec_fairytale_6(co)
hss.evt(co,"You jump down from the parade pile-up and run over to where {CONNECTED_CHARACTER_NAME} is comforting the crying child.", "")
hss.dlgA(co,hss.U,"Not trying to interrupt your teachable moment, but ~what~ the hell are you doing?",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","This kid was wandering around, crying, practically ~orphaned~ here and...",2)
hss.dlgA(co,hss.U,"Okay, so now I'm thinking this isn't just about the kid anymore.",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Just help me find the parents, okay?",3)
hss.evt(co,"You and {CONNECTED_CHARACTER_NAME} each take one of the crying kid's hands and escort him around the crowd until you locate two distraught parents.", "")
hss.showQuestComplete(co)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Apparently, that poor kid had been lost in the park for hours.",2)
hss.dlgA(co,hss.U,"Yeah... I don't think that's really gonna matter to Professor Hunt.",2)
hss.evt(co,"Professor Hunt shoves through the crowd toward you.", "")
hss.dlgA(co,"THOMAS","Of all the moronic, ~ill-conceived...~ You two have humiliated me in front of Jacob Wilhelm!",3)
end
function outro_sec_fairytale_7(co)
hss.dlgA(co,"THOMAS","What were you thinking, {CONNECTED_CHARACTER_NAME}?",3)
hss.dlgA(co,"THOMAS","I expect poor judgment from {YOU}, but I expected more from you!",3)
hss.dlgA(co,"{CONNECTED_CHARACTER}","I'm sorry. I did what I thought was right...",2)
hss.dlgA(co,"THOMAS","Well, what you thought was ~actually~ very stupid.",3)
if hss.getCharacterGender("_FAIRY_TALE_") == hss.Gender.MALE then
hss.evt(co,"There is a hush in the crowd. A child yells out, 'Leave Prince Hansel alone!'", "")
else
hss.evt(co,"There is a hush in the crowd. A child yells out, 'Leave Princess Gretel alone!'", "")
end
hss.dlgA(co,"THOMAS","Right, child, I know. But this isn't really--",4)
hss.evt(co,"Another child yells out, 'You're a big jerk!'", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","Hee! Um... I mean, what do we do?",4)
hss.evt(co,"You leap forward, declaring loudly...", "")
hss.dlg(co,hss.U,"No... this man isn't bad, or a Simon Cowell wannabe with weird hair--")
hss.dlgA(co,"THOMAS","Where is this going, {YOU}?",3)
hss.dlg(co,hss.U,"This man is under the spell of Madame Wolfe!")
hss.dlgA(co,"THOMAS","...I am?",4)
hss.evt(co,"A watchful hush falls over the crowd.", "")
hss.dlgA(co,"THOMAS","I mean... yes, I am! And you two are in trouble!",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Not if I have anything to say about it!",3)
hss.dlgA(co,"{CONNECTED_CHARACTER}","~CANDY CRUSH!~",3)
hss.evt(co,"{CONNECTED_CHARACTER_NAME} casts a magic spell, right at Professor Hunt!", "")
hss.evt(co,"Hunt plays along, gamely hurling himself at the ground.", "")
hss.dlgA(co,"THOMAS","Erk! I am slain!",4)
hss.evt(co,"An old man in a cravat steps down from a crashed float.", "")
hss.dlgA(co,"{CONNECTED_CHARACTER}","...Jacob Wilhelm!",4)
hss.evt(co,"Mr. Wilhelm begins to clap. Soon everyone joins in. {CONNECTED_CHARACTER_NAME} takes a bow to deafening applause!", "")
hss.showQuestComplete(co)
hss.evt(co,"Back on campus, Thomas hands out grades.", "")
hss.dlg(co,"THOMAS","Well-played, {CONNECTED_CHARACTER_NAME}. You thought quickly, withstood my criticism, and you won over the crowd...")
hss.dlg(co,"THOMAS","And what's ~more~, you won over Jacob Wilhelm.")
hss.dlg(co,"THOMAS","It seems you both took to heart his mantra.")
hss.dlg(co,"THOMAS","You made sure the Fairy Kingdom remained a place where no child would ever be unhappy.")
hss.dlg(co,hss.U,"Thanks, but it was more {CONNECTED_CHARACTER_NAME} than me...")
hss.dlgA(co,"THOMAS","Yes. I'm keenly aware who did what.",3)
hss.dlg(co,"THOMAS","Which is why Mr. Wilhelm has offered {CONNECTED_CHARACTER_NAME} a paid internship.")
hss.dlgA(co,"{CONNECTED_CHARACTER}","...really?",4)
hss.dlg(co,"THOMAS","Yes. If you want, you can spend all your days dressed like cartoon royalty and amusing hordes of sticky-fingered urchins with harebrained antics...")
hss.dlgA(co,"{CONNECTED_CHARACTER}","And spreading joy and wonder? And living a fairy tale life?!",4)
hss.dlgA(co,"THOMAS","I guess you could call it that...",4)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Oh, I do! Of course, I do!",4)
hss.dlgA(co,"THOMAS","Class dismissed!",3)
hss.evt(co,"You walk back to the dorms with {CONNECTED_CHARACTER_NAME}.", "")
hss.dlgA(co,hss.U,"I guess fairy tale endings are possible in the real world, huh?",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","Of course they are! And do you know what happens next?",1)
hss.dlgA(co,hss.U,"I think so, but go ahead and say it anyway.",1)
hss.dlgA(co,"{CONNECTED_CHARACTER}","They all lived happily ever after! The end!",1)
end
hss.checkEnvironment({"YOU"})
hss.runOpt()
