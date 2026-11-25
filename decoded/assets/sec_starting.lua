require "hss"
function outro_sec_starting_1(co)
-- "Mo' Money, No Problems"
hss.evt(co,"You and {FIRST_CLASSMATE_NAME} reach the edge of campus...", "")
hss.dlgA(co,"FIRST_CLASSMATE","I'm pretty sure this is the spot your benefactor was talking about, but I don't know why we're here...",4)
hss.dlg(co,hss.U,"Look! There's another envelope in the grass!")
hss.evt(co,"You pick up the envelope and open it!", "")
hss.dlgA(co,hss.U,"Whoa! Check out all this money!",1,hss.REWARD_COINS,500)
hss.dlgA(co,"FIRST_CLASSMATE","So cool! Man, where's ~my~ mysterious benefactor? If I have one, they need to step up their game!",1)
hss.showQuestComplete(co)
hss.dlgA(co,hss.U,"Hey, there's a note in the envelope too! It says...",4)
hss.dlg(co,hss.U,"'Use some of this money to improve the look of the campus. Its fate and yours are tied together.'")
hss.dlg(co,"FIRST_CLASSMATE","That's deep. What else does it say?")
hss.dlg(co,hss.U,"That's it. Nothing else.")
hss.dlg(co,"FIRST_CLASSMATE","What are you going to do?")
hss.dlgA(co,hss.U,"I... I guess I'm going to decorate!",1)
hss.evt(co,"You've just unlocked decorations! You can buy them from the store, and unlock more decorations by purchasing more land plots.", "")
end
function outro_sec_starting_2(co)
-- "Time to Decorate"
hss.dlgA(co,hss.U,"You know, the tree really makes a difference!",1)
hss.dlgA(co,"FIRST_CLASSMATE","Oh yeah... very L.A.! Definitely an upgrade!",5)
hss.showQuestComplete(co)
hss.dlg(co,"FIRST_CLASSMATE","So... how are you feeling?")
hss.dlg(co,hss.U,"Weird. I mean, the campus looks better for sure, but...")
hss.dlgA(co,"FIRST_CLASSMATE","But now you have a mysterious benefactor who's leaving you envelopes full of money, which is really unusual, awesome, and highly suspicious?",1)
hss.dlg(co,hss.U,"Yeah, exactly. All that.")
hss.dlgA(co,"FIRST_CLASSMATE","Well, if your new mystery friend is shelling out the big bucks for you to go here, then you'd better attend all your classes!",1)
hss.dlgA(co,hss.U,"Oh, right! Class! That's a thing!",4)
end
function intro_sec_starting_3(co)
-- "Hollywood 101"
hss.evt(co,"Addison waits in your dorm room as you hurry to pack your bookbag...", "")
hss.dlg(co,hss.A,"Are you almost ready? We'd better hurry if you don't want to be late on your first day of class!")
hss.dlgA(co,hss.U,"Almost. To be honest, this campus is so glamorous, it's easy to forget it's a university at all!",1)
hss.dlgA(co,hss.A,"Not like any you've seen before, trust me. And the teachers, well... you're about to find out!",1)
end
function outro_sec_starting_3(co)
-- "Hollywood 101"
local hasMet = 0;
hasMet = hss.getGameProperty("prim_0001_brunch_3", "hasMetProf")
hss.evt(co,"You and Addison rush inside an opulent, spacious theater on campus, hurrying to grab seats among the other students...", "")
if (hasMet == 1) then
hss.evt(co,"But the professor from your probation hearing has already begun talking!", "")
hss.dlg(co,"THOMAS","This is Hollywood 101. I'm Professor Hunt, and...")
hss.evt(co,"He spots you and Addison sneaking in late.", "")
hss.dlgA(co,"THOMAS","You two, get out.",3)
hss.dlgA(co,hss.A,"Wait, us?",4)
hss.dlgA(co,"THOMAS","Did I stutter? In Hollywood, even being on time is considered fifteen minutes late, and you were even later than that.",3)
hss.dlgA(co,"THOMAS","Clearly, {YOU}, your probation hasn't been incentive enough to modify your behavior. Out.",3)
else
hss.evt(co,"But the professor has already begun talking!", "")
hss.dlg(co,"THOMAS","This is Hollywood 101. I'm Professor Hunt, and...")
hss.evt(co,"He spots you and Addison sneaking in late.", "")
hss.dlgA(co,"THOMAS","You two, get out.",3)
hss.dlgA(co,hss.A,"Wait, us?",4)
hss.dlgA(co,"THOMAS","Did I stutter? In Hollywood, even being on time is considered fifteen minutes late, and you were even later than that. Out.",3)
end
local choice = hss.showTextMenu(co, "What do you do?", "Leave.|Sit down anyway.");
if (choice == 0) then
hss.dlgA(co,hss.U,"Sorry, Professor.",2)
hss.evt(co,"You turn to leave...", "")
hss.dlg(co,"THOMAS","Fortunately for you, this is not a movie set. Make no mistake. If you show up late without a recent amputation, you ~will~ be fired on the spot.")
hss.dlgA(co,"THOMAS","Now sit down, and ~don't~ interrupt me again.",3)
else
hss.dlgA(co,hss.A,"{YOU}! What are you doing?!",4)
hss.evt(co,"You sit down, returning the professor's hard stare.", "")
hss.dlgA(co,hss.U,"I don't give up that easy, Professor.",3)
hss.dlg(co,"THOMAS","Good. Fortunately for you, this is not a movie set. Make no mistake. If you show up late without a recent amputation, you ~will~ be fired on the spot.")
hss.dlgA(co,"THOMAS","Now ~don't~ interrupt me again.",3)
end
local characterType = hss.getCharacterType("FIRST_CLASSMATE")
local newFirstCharacterName;
if characterType == hss.CharacterType.DIRECTOR then
newFirstCharacterName = "_DIRECTOR_"
elseif characterType == hss.CharacterType.MOVIE_STAR then
newFirstCharacterName = "_MOVIE_STAR_"
else
newFirstCharacterName = "_FASHIONISTA_"
end
hss.changeCharacterReferenceName("FIRST_CLASSMATE", newFirstCharacterName)
local characterType = hss.getCharacterType("SECOND_CLASSMATE")
if characterType == hss.CharacterType.DIRECTOR then
if newFirstCharacterName == "_DIRECTOR_" then
hss.changeCharacterReferenceName("SECOND_CLASSMATE", "") -- this "clears" the reference name in HWU
else
hss.changeCharacterReferenceName("SECOND_CLASSMATE", "_DIRECTOR_")
end
elseif characterType == hss.CharacterType.FASHIONISTA then
hss.changeCharacterReferenceName("SECOND_CLASSMATE", "_FASHIONISTA_")
else
hss.changeCharacterReferenceName("SECOND_CLASSMATE", "_MOVIE_STAR_")
end
hss.setQuestProperty("hasMetProf", 1)
hss.showQuestComplete(co)
hss.dlg(co,"THOMAS","Now then. This class is about ~exploration~. Each week, you'll have the opportunity to collaborate with your classmates from every discipline.")
hss.dlgA(co,"THOMAS","Because while you may ~think~ you understand your craft, while you may ~think~ you've got what it takes to make it here... you don't. Not yet.",3)
hss.dlg(co,"THOMAS","Okay, that's enough pep talk. Your homework tonight is to find a partner. Your first assignment begins tomorrow, bright and early...")
hss.evt(co,"Hunt focuses his icy eyes on you.", "")
hss.dlgA(co,"THOMAS","And if I were you, I wouldn't dare be late.",3)
hss.evt(co,"Hunt walks off stage. As your classmates scramble to pair off, you whisper to Addison...", "")
if (hasMet == 1) then
hss.dlgA(co,hss.U,"Wow, between probation and showing up late, I am ~not~ off to the best start here.",2)
hss.dlg(co,hss.A,"That's okay, {YOU}. These assignments are the perfect chance to show Professor Hunt just how talented you are!")
hss.dlg(co,hss.A,"Get on his good side, and not even Bianca will be able to mess with you anymore.")
else
hss.dlgA(co,hss.U,"Wow, is that guy always so friendly?",3)
hss.dlg(co,hss.A,"Professor Hunt is one tough cookie, but he's a smart one too.")
hss.dlg(co,hss.A,"He wrote, directed, and starred in all his stuff. He ~is~ the youngest person ever to win Best Director, after all.")
hss.dlgA(co,hss.U,"If he's God's gift to humanity, what's he doing teaching a bunch of newbies?",3)
hss.dlgA(co,hss.A,"Careful, {YOU}. Thomas Hunt is a skeleton key. He can open all sorts of doors for you in Hollywood. You really, ~really~ want to impress him.",2)
end
hss.dlg(co,hss.A,"So who do you want to team up with first?")
end
hss.checkEnvironment({"YOU"})
hss.runOpt()
