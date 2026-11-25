function inter_preview(co)
hss.evt(co,"One brisk winter afternoon, you step out into the quad with Ethan and Addison to find it transformed.", "")
hss.evt(co,"A pavilion of ice hangs over the central square, supported by fluted columns of glittering snow. You and your friends gape up at it in awe.", "")
hss.dlgA(co,hss.U,"Whoa... this looks amazing!",4)
hss.dlgA(co,hss.A,"Yeah, Hannelina really went all out for this winter party.",1)
hss.dlgA(co,hss.E,"She could honestly do this for a living. I can think of plenty of Hollywood big shots who'd pay big money for an event space like this one...",4)
hss.dlgA(co,"HANNELINA","Thinking of recruiting me as a client, Ethan? I'm afraid my responsibilities as queen of Eiskalt keep me quite busy already.",1)
hss.dlgA(co,hss.A,"Hannelina! It's so good to see you again!",1)
hss.dlgA(co,"HANNELINA","And you, my dear. Thank you all for attending my little soiree...",1)
hss.dlgA(co,"HANNELINA","I must confess I'm surprised at how many people turned up. There are actually quite a few I've never even seen before...",4)
hss.evt(co,"You look around, startled to see Hannelina's ice pavilion packed with familiar faces.", "")
hss.dlgA(co,hss.U,"Wow, you weren't kidding... just about everyone we know is at this party! Did you invite all of Hollywood?",4)
hss.dlgA(co,hss.A,"Seriously... Lisa, Aria, Bianca and her gang, plus the whole Hollywood U faculty... and is that ~Diego?~",4)
hss.dlg(co,hss.E,"Looks like just about every Winters brother has turned up, too... not to mention all of those people we met around Halloween...")
hss.dlgA(co,"HANNELINA","I must say, it's quite a change coming to a place with so many people... at my castle it's mostly me and my subjects, and that's all.",4)
hss.dlgA(co,hss.U,"Guess we've got a big night ahead of us... it'll be nice to catch up with all of our friends.",1)
hss.dlgA(co,hss.A,"Definitely. It's not often we get everyone in one place like this!",1)
hss.evt(co,"~In this quest, the more A-Listers you have, the more diamonds you'll earn! Try to collect them all before you go to the party!~", "")
hss.evt(co,"~There are 11 A-Listers available now, who will give you 25 Diamonds each in this quest!", "")
hss.evt(co,"~That adds up to 275 Diamonds... in other words, this special quest could pay for itself!", "")
hss.evt(co,"~Plus, if you have the exclusive Halloween A-Listers in your entourage, you'll get a bonus on top of that!~", "")
hss.markQuestScriptRequirementFinished()
end
function outro_premium_0053_diamondparty_1(co)
hss.evt(co,"You, Ethan, Addison, and Hannelina find the rest of your group of friends hanging out near the pavilion's entrance, sipping glasses of champagne and chatting away.", "")
hss.dlgA(co,"LISA","Yay, you guys made it! Time for a group selfie!",1)
hss.dlgA(co,hss.U,"Will we all fit?",4)
if hss.tutorialIsQuestFinished("prim_0023_revisions_2") then
hss.dlgA(co,"SHAE","Dean, you ~can~ stand closer to me. You know that, right?",1)
hss.dlgA(co,"DEAN","Uh... of course! I just didn't want to be presumptuous.",4)
hss.dlgA(co,"SHAE","Right. Well, from now on, just assume I'm okay with us being close. I'll tell you if that changes.",1)
hss.dlgA(co,"DEAN","Works for me.",1)
hss.dlgA(co,"ARIA","Awwww! You two are ~so cute!~ Group hug!",9)
else
hss.dlgA(co,"ARIA","We will if we have a ~group hug!~",5)
end
hss.dlgA(co,hss.H,"Hold on, can we talk about--",4)
hss.evt(co,"Aria pulls you and all your friends into a tight hug as Lisa snaps the picture!", "")
hss.dlgA(co,hss.CR,"Get in here, everyone!",1)
hss.dlgA(co,hss.H,"~Ouchhh.~ My ribs...",2)
hss.dlgA(co,"LISA","Holly! You didn't smile! Looks like we'll have to do a retake...",1)
hss.dlg(co,hss.H,"Leave it. Let history remember that I ~tried~ to escape in time.")
if hss.tutorialIsQuestFinished("prim_0037_space_6") then
hss.dlgA(co,"MARCO","You were very brave, my friend. But I think there is no denying Miss Sheridan.",1)
hss.dlgA(co,"ARIA","Marco gets it!",1)
else
hss.dlgA(co,"ARIA","Oh, quit pretending, Holly. You know you secretly love us!",1)
end
if (hss.isCharacterAdmitted("ARIA")) then
hss.dlgA(co,"ARIA","Oh, {YOU}, before I forget...",4)
hss.dlgA(co,"ARIA","I got you something for the holidays. I hope you like it!",1)
hss.evt(co,"Aria slips a stylish watch around your wrist, and you admire it in the winter sunlight.", "")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward0") == nil then
hss.setQuestProperty("reward0",1)
hss.dlgA(co,hss.U,"Aw, Aria! I love it! Thank you so much!",1,hss.REWARD_RINGS,25)
else
hss.dlgA(co,hss.U,"Aw, Aria! I love it! Thank you so much!",1)
end
hss.dlgA(co,"ARIA","My pleasure!",1)
else
end
hss.showQuestComplete(co)
hss.evt(co,"After the selfie, you talk and laugh with your friends until a familiar scowl darkens your corner of the party.", "")
hss.dlgA(co,hss.B,"Well, if it isn't--",3)
hss.dlg(co,"DESIREE","Oh, leave {YOU} alone, Bianca. Don't you get tired of being catty all the time?")
hss.dlgA(co,hss.B,"Hey!",4)
hss.dlgA(co,"ZOE","Listen to your big sis, Bianca. Sometimes it's better to just go with the flow.",1)
hss.dlgA(co,"LANCE","That's what I've been saying!",4)
hss.dlg(co,"JENNI","Still, it's hard to resist making fun of {YOU} and Addi. They're such easy targets...")
hss.dlgA(co,hss.A,"Oh, shut up, Jenni. Can't you just enjoy the party?",3)
hss.dlgA(co,hss.E,"Speaking of which, why don't we grab a drink? It looks like Hannelina's set up a pretty sweet refreshments area...",4)
hss.dlgA(co,hss.U,"Ooh, I am ~in!~",1)
end
function outro_premium_0053_diamondparty_2(co)
hss.evt(co,"You stroll over to to an ice bar at one end of the pavilion to find Mason behind the counter.", "")
hss.dlg(co,"MASON","What are you drinking?")
hss.dlgA(co,hss.U,"I don't suppose you have anything that isn't cold, do you?",1)
hss.dlg(co,"MASON","I might be able to whip something up for you...")
hss.evt(co,"Just then, Liam Archer lays a stone bowl of roast chestnuts on the bar.", "")
hss.dlgA(co,hss.A,"Ooh, can we?",1)
hss.dlg(co,"LIAM","Help yourselves, everyone. And careful ordering from this one... his methods are absolutely deplorable.")
hss.dlg(co,"MASON","Mr. Perfectionist here doesn't like the way I mix drinks.")
hss.dlgA(co,"LIAM","It's not the mixing I take issue with, it's the insistence on 'eyeballing' everything instead of taking the time to measure things out.",3)
hss.evt(co,"Mason pours a shot of bourbon into a steaming mug and stirs it with a cinnamon stick, then pushes it across the bar to you.", "")
hss.dlgA(co,"LIAM","Case in point.",3)
hss.evt(co,"You cup both hands around the mug and take a sip, feeling the drink warming you to your core.", "")
hss.dlgA(co,hss.U,"It's delicious!",1)
hss.dlg(co,"MASON","Told you.")
hss.dlgA(co,"LIAM","I give up.",2)
if (hss.isCharacterAdmitted("LIAM")) then
hss.dlgA(co,hss.U,"Aw, cheer up, Liam! There's more than one way to bake a cake.",1)
hss.dlgA(co,"LIAM","Oh, that reminds me.",4)
hss.dlg(co,"LIAM","I made you something special. Don't let it go to your head.")
hss.evt(co,"Liam sets a chocolate souffle on the counter, topped with powdered sugar and raspberries.", "")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward1") == nil then
hss.setQuestProperty("reward1",1)
hss.dlgA(co,hss.U,"Liam, it's beautiful! I almost don't want to eat it...",4,hss.REWARD_RINGS,25)
else
hss.dlgA(co,hss.U,"Liam, it's beautiful! I almost don't want to eat it...",4)
end
hss.dlg(co,"LIAM","I must insist that you do.")
hss.evt(co,"You scoop up a spoonful of souffle and eat it, savoring the rich chocolate and tart berries.", "")
hss.dlgA(co,hss.U,"Wow! It tastes even better than it looks!",1)
else
end
hss.evt(co,"Just then, Anders Stone snaps his fingers at Mason.", "")
hss.dlgA(co,"ANDERS","Hey, kid! Keep those shots coming, all right? Me and my buddy here are going ~hard!~ To the good old days!",1)
hss.dlgA(co,hss.BR,"Amen! The two musketeers!",1)
hss.evt(co,"Brian and Anders drain their shot glasses while Carlotta looks on in disgust.", "")
hss.dlgA(co,hss.CA,"I swear, you two haven't matured at ~all.~",3)
hss.evt(co,"At the other end of the bar, Maxwell Benson spits out his drink as Morgan pulls a card out of his suitcoat pocket.", "")
hss.dlgA(co,"MORGAN","I take it this ~is~ your card?",1)
hss.dlgA(co,"MAXWELL","How... how did you ~do~ that?",4)
hss.dlgA(co,"MORGAN","It wouldn't be magic if I told you, now would it?",1)
hss.evt(co,"You, Ethan, and Addison sit down by Morgan as Maxwell Benson stumbles off in a daze, patting his other pockets for hidden cards.", "")
hss.dlg(co,hss.U,"That was pretty magnificent, Morgan.")
hss.dlgA(co,"MORGAN","Nice of you to notice.",1)
if (hss.isCharacterAdmitted("MORGAN")) then
hss.dlgA(co,"MORGAN","By the way, there's something behind your ear...",4)
hss.evt(co,"Morgan pulls a small wrapped box out from behind your ear and hands it to you, smiling.", "")
hss.evt(co,"Inside, a pack of fancy playing cards rests on crushed velvet.", "")
hss.dlgA(co,"MORGAN","Happy holidays, {YOU}.",1)
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward2") == nil then
hss.setQuestProperty("reward2",1)
hss.dlgA(co,hss.U,"Aw, thanks, Morgan!",1,hss.REWARD_RINGS,25)
else
hss.dlgA(co,hss.U,"Aw, thanks, Morgan!",1)
end
else
end
hss.showQuestComplete(co)
hss.evt(co,"Just then, Santa Claus steps up to the bar, his arms thrown around Harrison Byrd and Sean Winters!", "")
hss.dlgA(co,"SANTA","Three drinks, my boy! And keep 'em coming!",1)
hss.dlgA(co,"HARRISON","I've got a good feeling about today, Santa old buddy. Today's the day we find you a Mrs. Claus!",1)
hss.dlgA(co,"SEAN","You've got the two best wingmen in town, man. You can't lose.",1)
hss.dlg(co,"SEAN","Just go easy on all the elf talk, okay?")
hss.evt(co,"Santa gets up from his bar stool and starts toward Carlotta Valentine, sipping his drink nervously.", "")
hss.dlgA(co,hss.U,"I'd better stop him... there's literally ~no way~ that could end well...",4)
hss.evt(co,"You run over and tap Santa on the shoulder, and he whirls around, nearly sloshing his drink on you.", "")
hss.dlgA(co,"SANTA","Oh, hey, {YOU}! I was just, uh--",4)
hss.dlg(co,hss.U,"Yeah, I know what you were just about to do. Trust me, you do ~not~ want to hit on Carlotta Valentine.")
hss.dlg(co,"HARRISON","Yeah, I'm with {YOU} on this one. We'll find you someone a little less... well, someone else.")
hss.dlgA(co,"SANTA","If you say so. Still, you gotta admit, she's a damn fine looking woman...",4)
hss.dlgA(co,hss.U,"I wish there was a way to unhear that...",2)
if (hss.isCharacterAdmitted("SANTA")) then
hss.dlgA(co,"SANTA","Can't help you there, but I ~can~ thank you for steering me in the right direction. Here, buy yourself something nice.",1)
hss.evt(co,"Santa tucks a wad of cash into your pocket and winks at you.", "")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward3") == nil then
hss.setQuestProperty("reward3",1)
hss.dlgA(co,hss.U,"Uh, thanks? You could've just put it in my hand, you know...",4,hss.REWARD_RINGS,25)
else
hss.dlgA(co,hss.U,"Uh, thanks? You could've just put it in my hand, you know...",4)
end
else
end
if (hss.isCharacterAdmitted("HARRISON")) then
hss.dlgA(co,"HARRISON","Hey, before I forget... I got you something, {YOU}.",1)
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward4") == nil then
hss.setQuestProperty("reward4",1)
hss.dlgA(co,hss.U,"You didn't have to do that! Thanks a lot, Harrison.",1,hss.REWARD_RINGS,25)
else
hss.dlgA(co,hss.U,"You didn't have to do that! Thanks a lot, Harrison.",1)
end
hss.dlgA(co,"HARRISON","Rule #89: Remind your friends how much they mean to you. Preferably with money.",7)
hss.dlgA(co,hss.U,"Have I ever told you how much I like your rules?",1)
else
end
hss.evt(co,"Ethan and Addison finish off their drinks, and the three of you pull away from the bar, swaying slightly.", "")
hss.evt(co,"Just as you're stepping out into the snow around the edge of the pavilion, a snowball flies into your face!", "")
hss.dlgA(co,hss.U,"What the?!",4)
hss.dlgA(co,"ROK","Ha! An excellent throw, your highness!",1)
hss.dlgA(co,"ILYRIA","Thanks, Rok!",1)
hss.dlgA(co,hss.U,"Ilyria? Rok? What the--",4)
hss.evt(co,"Rok and Ilyria wind up to throw more snowballs, and Ethan dives for cover behind a park bench.", "")
hss.dlgA(co,hss.E,"Get down!",4)
end
function outro_premium_0053_diamondparty_3(co)
hss.evt(co,"You take cover behind one bench while Ethan and Addison squeeze behind another! Snowballs whistle overhead as Rok and Ilyria let loose another volley!", "")
hss.dlgA(co,"ILYRIA","We're gonna get you, {YOU}!",1)
hss.dlgA(co,"ROK","Come out, you dogs! Come out, and greet cold death!",1)
hss.dlgA(co,hss.U,"Well, when you put it ~that~ way...",1)
hss.evt(co,"You pop out from behind the bench, whipping a snowball sidearm at Rok! It catches him full in the face just as Ilyria sends another hurtling at you!", "")
local choice = hss.showTextMenu(co, "What do you do?", "Duck!|Freeze!", false, 3);
if (choice == 0) then
hss.evt(co,"You drop low, and the snowball flies over your head to burst against a tree behind you.", "")
hss.dlgA(co,"ILYRIA","Aw, I was ~so~ close!",1)
else
hss.evt(co,"You hesitate, and the snowball bursts against your face!", "")
hss.dlgA(co,hss.U,"Ow!",4)
hss.dlgA(co,"ILYRIA","~Yes!~ Gotcha, {YOU}!",5)
end
hss.evt(co,"As Ethan and Addison prepare a counterattack, Rok comes out with his hands raised in defeat.", "")
hss.dlgA(co,"ROK","Well fought, my friends! Let us now cast aside our weapons, for that is the true test of a warrior.",1)
if (hss.isCharacterAdmitted("ROK")) then
hss.dlg(co,"ROK","Now, to honor our alliance, a gift. A diamond stolen from the sleeping jaws of Dhal Bar, the Death That Came to Thuliad.")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward5") == nil then
hss.setQuestProperty("reward5",1)
hss.dlgA(co,hss.U,"Oh... thank you!",4,hss.REWARD_RINGS,25)
else
hss.dlgA(co,hss.U,"Oh... thank you!",4)
end
else
end
if (hss.isCharacterAdmitted("ILYRIA")) then
hss.dlgA(co,"ILYRIA","Oh, {YOU}! I forgot to mention I got you something for the holidays!",1)
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward6") == nil then
hss.setQuestProperty("reward6",1)
hss.dlgA(co,hss.U,"Thanks, Ilyria!",1,hss.REWARD_RINGS,25)
else
hss.dlgA(co,hss.U,"Thanks, Ilyria!",1)
end
hss.dlgA(co,hss.U,"Where on earth did you get this? It's beautiful!",4)
hss.dlgA(co,"ILYRIA","Oh, just the Royal Treasury of Lahar... I'm sure my father won't miss it.",1)
hss.dlgA(co,hss.U,"If you say so...",4)
else
end
hss.evt(co,"Just then, a snowball sails into the side of Ethan's head, seemingly from nowhere!", "")
hss.dlgA(co,hss.E,"Who threw that?!",4)
hss.evt(co,"Penelope materializes out of thin air, giggling and floating a few feet above the ground to Ethan's left.", "")
hss.dlgA(co,"PENELOPE","Sorry, Ethan. I couldn't resist!",1)
hss.evt(co,"As you, Addison, and Rok take aim at Penelope, she laughs and turns invisible again... just as Jin and Aiden ambush you from the other side!", "")
hss.evt(co,"You manage to duck behind the bench in time, but Addison, Rok, and Ilyria collapse in a hail of snowballs!", "")
hss.dlgA(co,"JIN","Now ~that's~ what I call an ambush!",1)
hss.dlg(co,"AIDEN","Agreed. Target {YOU} next?")
hss.dlgA(co,"JIN","You read my mind.",1)
hss.dlgA(co,hss.U,"Two against one? Please. You'll have to do better than that.",1)
hss.evt(co,"You send a snowball whistling toward Aiden, only to see him turn into mist! The snowball passes through harmlessly!", "")
hss.dlgA(co,"AIDEN","A for effort, {YOU}, but I'm afraid--",1)
hss.dlgA(co,"JIN","Hold up. You're a ~vampire?!~",4)
hss.showQuestComplete(co)
hss.evt(co,"Penelope materializes between Aiden and Jin, holding her hands out on either side.", "")
hss.dlgA(co,"PENELOPE","Guys, ~please~ don't fight!",4)
hss.dlgA(co,"JIN","Hmmph. You gonna vouch for this guy, {YOU}?",3)
hss.dlgA(co,hss.U,"Definitely.",4)
hss.dlgA(co,hss.U,"He's not ~that~ bad.",1)
hss.dlgA(co,"AIDEN","Ouch.",4)
hss.dlg(co,"JIN","Keep those fangs to yourself, then, Kavanaugh... unless you want to end up a vampire kebab. Got it?")
hss.dlg(co,"AIDEN","Loud and clear.")
if (hss.isCharacterAdmitted("AIDEN")) then
hss.dlg(co,"AIDEN","Thank you, {YOU}. Not everyone would accept a vampire as readily as you have.")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward7") == nil then
hss.setQuestProperty("reward7",1)
hss.dlgA(co,hss.U,"My pleasure.",1,hss.REWARD_RINGS,25)
else
hss.dlgA(co,hss.U,"My pleasure.",1)
end
else
end
if (hss.isCharacterAdmitted("JIN")) then
hss.dlg(co,"JIN","I've never met someone so eager to get themselves killed by a vampire, {YOU}.")
hss.dlg(co,"JIN","But I also trust your judgment.")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward8") == nil then
hss.setQuestProperty("reward8",1)
hss.dlgA(co,hss.U,"Glad to hear it. Maybe leave the crossbow at home next time you come to a party, okay?",1,hss.REWARD_RINGS,25)
else
hss.dlgA(co,hss.U,"Glad to hear it. Maybe leave the crossbow at home next time you come to a party, okay?",1)
end
hss.dlgA(co,"JIN","Good idea.",4)
else
end
if (hss.isCharacterAdmitted("PENELOPE")) then
hss.dlgA(co,"PENELOPE","That was ~too~ close! It's a good thing you were here to defuse the situation, {YOU}.",4)
hss.dlgA(co,"PENELOPE","Although... do you think Aiden could've come back? Can vampires become ghosts?",4)
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward9") == nil then
hss.setQuestProperty("reward9",1)
hss.dlgA(co,hss.U,"Let's not find out, okay?",1,hss.REWARD_RINGS,25)
else
hss.dlgA(co,hss.U,"Let's not find out, okay?",1)
end
hss.dlgA(co,"PENELOPE","Okay.",1)
else
end
hss.evt(co,"After the snowball fight, you, Ethan, and Addison look for somewhere to rest and recuperate.", "")
hss.dlgA(co,hss.A,"Did you see that cute little ice gazebo Hannelina made over by the big oak tree? Let's check it out!",1)
hss.dlgA(co,hss.U,"I'll go anywhere that isn't an active warzone...",1)
end
function intro_premium_0053_diamondparty_4(co)
hss.evt(co,"The three of you walk across the snowy ground toward the gazebo by the old oak tree.", "")
hss.evt(co,"Frozen flowers bloom on trellises of ice while the Hollywood U faculty chat over the strains of a string quartet.", "")
hss.dlgA(co,hss.U,"Hey, Professor Moriyama, how's it--",1)
hss.evt(co,"Professor Moriyama brushes past you, clearly distracted.", "")
hss.dlgA(co,hss.U,"Huh. I wonder what's up with him?",4)
hss.dlg(co,hss.A,"Probably something Hunt or Priya said. You know how they can be...")
hss.dlgA(co,"THOMAS","I wouldn't say ~all~ of our students are absolutely worthless... just ~most~ of them.",4)
hss.dlgA(co,"PRIYA","Oh, Thomas... I almost envy your naivety.",1)
hss.dlgA(co,hss.U,"Do I even want to know what you guys are talking about?",4)
hss.dlg(co,"THOMAS","Professor Moriyama voiced the unpopular opinion that you and your fellow students are actually quite gifted, and Professor Singh corrected him. Vehemently.")
hss.dlg(co,"PRIYA","He got annoyed and left to get a drink. We've never seen eye-to-eye, to be honest...")
hss.dlgA(co,hss.E,"I can't imagine why...",4)
end
function outro_premium_0053_diamondparty_4(co)
hss.evt(co,"Soon, your group is joined by Marianne Delacroix and Victoria Swenson, looking resplendent in the latest winter fashions.", "")
hss.dlgA(co,hss.A,"Marianne! I ~love~ your coat!",4)
hss.dlg(co,"MARIANNE","Thank you, Miss Sinclair. You look quite nice as well.")
hss.dlgA(co,"VICTORIA","What are you wearing, Professor Singh? You look amazing.",1)
hss.dlgA(co,"PRIYA","Oh, do I? I mean...",4)
hss.dlg(co,"PRIYA","Thank you, Miss Swenson.")
hss.dlgA(co,hss.C,"I thought I'd find you over here, {YOU}.",1)
hss.dlgA(co,hss.U,"Hey, Chris! Why do you say that?",1)
hss.dlg(co,hss.C,"String quartet, gazebo made of ice, intellectual conversation... this has {YOU} written all over it.")
hss.dlgA(co,hss.U,"You know me too well.",1)
hss.showQuestComplete(co)
hss.evt(co,"Just then, you spot Diego being pulled over to the gazebo by Song.", "")
hss.dlgA(co,hss.D,"Babe, I wanted more of those prosciutto rolls... why are you dragging me over here?",4)
hss.dlgA(co,"SONG","Trying to expose you to some ~culture,~ duh. There's more to life than reality shows, you know.",1)
hss.dlg(co,"SONG","Plus, it'd probably benefit your screenplays if you had slightly more refined tastes...")
hss.dlg(co,hss.D,"Let me remind you that you're speaking to the writer of 'Loaded Guns: Reloaded'. If there's one thing I know, it's culture.")
hss.dlgA(co,"SONG","If you say so...",1)
if (hss.isCharacterAdmitted("SONG")) then
hss.dlgA(co,"SONG","Oh, {YOU}! I've been looking all over for you. Diego and I are having a little party to celebrate the success of our reality show. You in?",1)
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward10") == nil then
hss.setQuestProperty("reward10",1)
hss.dlgA(co,hss.U,"Partying with reality TV stars? How could I say no?",1,hss.REWARD_RINGS,25)
else
hss.dlgA(co,hss.U,"Partying with reality TV stars? How could I say no?",1)
end
else
end
end
function intro_premium_0053_diamondparty_5(co)
hss.evt(co,"As the moon rises over the city, refracting in the elegant architecture of the ice pavilion, Hannelina calls the guests to the final event of the evening.", "")
hss.dlgA(co,"HANNELINA","Thank you all so much for coming. To close out the evening, I'd like to invite you to join me on the dance floor...",1)
hss.dlgA(co,"HANNELINA","Ice skates will be provided!",1)
hss.dlgA(co,hss.E,"Ice skates?",4)
hss.evt(co,"With an impish grin, Hannelina points suddenly at Ethan's loafers, and delicate blades of ice crystallize along the soles!", "")
hss.dlgA(co,hss.E,"Whoa!",1)
hss.dlgA(co,hss.U,"Nice! Me next!",1)
hss.evt(co,"Hannelina welcomes everyone onto the dance floor, providing each with a pair of temporary skates in turn.", "")
hss.evt(co,"Soon, all of the guests skate in loping circles around the ice of the dance floor while the strings tease out a playful waltz.", "")
hss.dlgA(co,hss.A,"Hannelina, this is the most amazing evening... you really know how to throw a party!",1)
hss.dlgA(co,"HANNELINA","I'm glad you're enjoying yourself! I wanted everything to be just right.",1)
hss.dlgA(co,"SCARLET","Whoa!",4)
hss.evt(co,"You notice Scarlet teeter and nearly fall, her ice skates melted clean off! In the blink of an eye, someone's there to catch her...", "")
hss.dlgA(co,"STEEL","Hey. I got you.",1)
hss.dlg(co,hss.U,"Looks like Scarlet's having trouble keeping her skates on...")
hss.dlg(co,"HANNELINA","It's the most curious thing... I keep putting them on her, and then ~somehow~ they melt off again...")
if (hss.isCharacterAdmitted("SCARLET")) then
hss.dlgA(co,"SCARLET","Hey, {YOU}! Nice to see you. I'd give you a hug, but I'm afraid I'd fall over again...",1)
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward11") == nil then
hss.setQuestProperty("reward11",1)
hss.dlgA(co,hss.U,"No worries. I'm just glad you've got Steel here to help you.",1,hss.REWARD_RINGS,25)
else
hss.dlgA(co,hss.U,"No worries. I'm just glad you've got Steel here to help you.",1)
end
hss.dlgA(co,"SCARLET","Me too.",1)
else
end
if (hss.isCharacterAdmitted("STEEL")) then
hss.dlgA(co,"STEEL","Sometimes being a hero just means being there for people.",1)
hss.dlgA(co,"SCARLET","Ooookay, you can stop patting yourself on the back now.",1)
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward12") == nil then
hss.setQuestProperty("reward12",1)
hss.dlgA(co,hss.U,"I hope I'll be just like you when I grow up, Steel.",1,hss.REWARD_RINGS,25)
else
hss.dlgA(co,hss.U,"I hope I'll be just like you when I grow up, Steel.",1)
end
hss.dlgA(co,"STEEL","See? {YOU} appreciates my sacrifice.",1)
else
end
hss.evt(co,"As the waltz comes to an end, a concert pianist mounts the small stage in the center of the dance floor and takes a seat at the grand piano.", "")
hss.dlgA(co,"HANNELINA","Ooh, I have it on good authority that this next song will be especially romantic... make sure you spend it with the right person!",9)
end
function outro_premium_0053_diamondparty_5(co)
local guys = 0;
local girls = 0;
hss.evt(co,"As the pianist begins a delicate, stirring melody, you look around the pavilion for the person you'd most like to dance with.", "")
hss.evt(co,"Your eyes settle on...", "")
local choice = hss.showTextMenu(co, "Who will you dance with?", "A guy!|A girl!");
if (choice == 0) then
local guys = hss.showTextMenu(co, "Which guy will you dance with?", "Ethan!|Chris!|Professor Hunt!|Mason!");
if (guys == 0) then
hss.evt(co,"You pull Ethan onto the dance floor, skating backward through the crowds of lovers nestled in each others' arms...", "")
hss.dlgA(co,hss.E,"Good choice.",7)
hss.dlgA(co,hss.U,"So, Mr. Agent... are you here on business or pleasure?",1)
hss.dlgA(co,hss.E,"Why can't it be a little bit of both?",1)
hss.dlgA(co,hss.U,"That's just the answer I was looking for.",1)
hss.evt(co,"As the music swells, Hannelina conjures a gentle snowfall inside the pavilion as colored lights dance through the crystalline ice formations.", "")
hss.evt(co,"Ethan smiles at you, his face mere inches away from yours...", "")
hss.dlg(co,hss.E,"Can I kiss you?")
local choice = hss.showTextMenu(co, "What do you say?", "Um, hell yes?|Let's just dance for now.");
if (choice == 0) then
hss.evt(co,"You tilt your mouth up to meet Ethan's and feel his lips against yours, melting together in the chill evening air...", "")
else
hss.dlgA(co,hss.E,"Dancing's good, too.",1)
hss.evt(co,"You hold Ethan tight, snowflakes landing on your heads as you drift across the ice together...", "")
end
elseif (guys == 1) then
hss.evt(co,"You pull Chris onto the dance floor, skating backward through the crowds of lovers nestled in each others' arms...", "")
hss.dlgA(co,hss.C,"Lucky me.",1)
hss.dlgA(co,hss.U,"Damn right. Don't let it go to your head.",1)
hss.dlg(co,hss.C,"I won't. The truth is... I'm honored. Our time together has been amazing, {YOU}... I hope it never ends.")
hss.dlgA(co,hss.U,"Same here.",1)
hss.evt(co,"As the music swells, Hannelina conjures a gentle snowfall inside the pavilion as colored lights dance through the crystalline ice formations.", "")
hss.evt(co,"Chris smiles at you, his face mere inches away from yours...", "")
hss.dlg(co,hss.C,"Can I kiss you?")
local choice = hss.showTextMenu(co, "What do you say?", "I'd like that.|Just hold me for now.");
if (choice == 0) then
hss.evt(co,"You tilt your mouth up to meet Chris's and feel his lips against yours, melting together in the chill evening air...", "")
else
hss.dlgA(co,hss.C,"Works for me.",1)
hss.evt(co,"You hold Chris tight, snowflakes landing on your heads as you drift across the ice together...", "")
end
elseif (guys == 2) then
hss.evt(co,"You pull Thomas onto the dance floor, skating backward through the crowds of lovers nestled in each others' arms...", "")
hss.dlg(co,"THOMAS","This is certainly new...")
hss.dlgA(co,hss.U,"What? Being out in public like this?",1)
hss.dlg(co,"THOMAS","I meant the magic ice skates. But yes, that's ~also~ new...")
hss.dlgA(co,hss.U,"I'm surprised you're not making more of a fuss.",1)
hss.dlg(co,"THOMAS","Me too. I guess... just this once... I don't want to think about tomorrow. I just want to enjoy this moment, here... with you.")
hss.dlgA(co,hss.U,"Works for me.",1)
hss.evt(co,"As the music swells, Hannelina conjures a gentle snowfall inside the pavilion as colored lights dance through the crystalline ice formations.", "")
hss.evt(co,"You look up at Thomas, his face mere inches away from yours...", "")
hss.dlg(co,"THOMAS","What are you thinking about?")
local choice = hss.showTextMenu(co, "What do you say?", "Us.|Nothing much.");
if (choice == 0) then
hss.evt(co,"Thomas smiles down at you, and you feel your skin prickling under his gaze.", "")
hss.dlg(co,hss.U,"What? Why are you looking at me like that?")
hss.dlgA(co,"THOMAS","Like what?",4)
hss.dlgA(co,hss.U,"Never mind. Just shut up and dance with me...",1)
hss.dlg(co,"THOMAS","Gladly.")
hss.evt(co,"You hold Thomas tight, snowflakes landing on your heads as you drift across the ice together...", "")
else
hss.dlg(co,"THOMAS","Somehow I find that hard to believe...")
hss.dlgA(co,hss.U,"Oh, just shut up and dance with me.",1)
hss.dlg(co,"THOMAS","Gladly.")
hss.evt(co,"You hold Thomas tight, snowflakes landing on your heads as you drift across the ice together...", "")
end
else
hss.evt(co,"You pull Mason onto the dance floor, skating backward through the crowds of lovers nestled in each others' arms...", "")
hss.dlg(co,"MASON","Gotta admit, I'm not much of a dancer... let alone an ice skater.")
hss.dlgA(co,hss.U,"Don't worry. I'm here.",1)
hss.dlg(co,"MASON","Heh. I feel so safe.")
hss.dlgA(co,hss.U,"I sincerely hope you're not making fun of me.",1)
hss.dlg(co,"MASON","Wouldn't dream of it.")
hss.evt(co,"As the music swells, Hannelina conjures a gentle snowfall inside the pavilion as colored lights dance through the crystalline ice formations.", "")
hss.evt(co,"Mason smiles at you, his face mere inches away from yours...", "")
hss.dlg(co,"MASON","What are you thinking about?")
local choice = hss.showTextMenu(co, "What do you say?", "Kissing you.|Nothing much.");
if (choice == 0) then
hss.evt(co,"You tilt your mouth up to meet Mason's and feel his lips against yours, melting together in the chill evening air...", "")
else
hss.dlg(co,"MASON","Me neither.")
hss.dlgA(co,hss.U,"Let's just focus on dancing, then...",1)
hss.evt(co,"You hold Mason tight, snowflakes landing on your heads as you drift across the ice together...", "")
end
end
else
local girls = hss.showTextMenu(co, "Which girl will you dance with?", "Addison!|Lisa!|Victoria!|Hannelina!");
if (girls == 0) then
hss.evt(co,"You pull Addison onto the dance floor, skating backward through the crowds of lovers nestled in each others' arms...", "")
hss.dlgA(co,hss.A,"So... you picked me, huh? You must really like me...",1)
hss.dlgA(co,hss.U,"Something like that.",1)
hss.dlgA(co,hss.A,"Don't worry. I won't tell anyone about your little crush.",1)
hss.evt(co,"As the music swells, Hannelina conjures a gentle snowfall inside the pavilion as colored lights dance through the crystalline ice formations.", "")
hss.evt(co,"You stare into Addison's eyes, her face mere inches away from yours...", "")
hss.dlgA(co,hss.A,"I know that look. What are you thinking about?",1)
local choice = hss.showTextMenu(co, "What do you say?", "Kissing you.|Nothing much.");
if (choice == 0) then
hss.evt(co,"You lean into Addison and feel her lips against yours, melting together in the chill evening air...", "")
else
hss.dlgA(co,hss.A,"Me neither. Let's just focus on dancing.",1)
hss.dlgA(co,hss.U,"Works for me.",1)
hss.evt(co,"You hold Addison tight, snowflakes landing on your heads as you drift across the ice together...", "")
end
elseif (girls == 1) then
hss.evt(co,"You pull Lisa onto the dance floor, skating backward through the crowds of lovers nestled in each others' arms...", "")
hss.dlgA(co,"LISA","Usually, I don't like this kind of slower music, but I have to admit... this is pretty nice.",1)
hss.dlgA(co,hss.U,"Mhmm.",1)
hss.evt(co,"As the music swells, Hannelina conjures a gentle snowfall inside the pavilion as colored lights dance through the crystalline ice formations.", "")
hss.evt(co,"You stare into Lisa's eyes, her face mere inches away from yours...", "")
hss.dlgA(co,"LISA","Hey. I'm kind of getting this urge to kiss you...",1)
local choice = hss.showTextMenu(co, "What do you say?", "Yes, please!|Let's focus on dancing!");
if (choice == 0) then
hss.dlgA(co,"LISA","Sweet.",1)
hss.evt(co,"You lean into Lisa and feel her lips against yours, melting together in the chill evening air...", "")
else
hss.dlgA(co,"LISA","Sure, dancing is good too! But I'm going to want a rain check on that kiss, okay?",1)
hss.dlgA(co,hss.U,"Ha ha, we'll see...",1)
hss.evt(co,"You hold Lisa tight, snowflakes landing on your heads as you drift across the ice together...", "")
end
elseif (girls == 2) then
hss.evt(co,"Victoria pulls you onto the dance floor, skating backward through the crowds of lovers nestled in each others' arms...", "")
hss.dlgA(co,hss.U,"Wow. You're pretty good at this...",1)
hss.dlgA(co,"VICTORIA","I know.",1)
hss.dlgA(co,hss.U,"Not to mention modest...",1)
hss.dlgA(co,"VICTORIA","Please, {YOU}. What do I have to be modest about?",1)
hss.dlgA(co,hss.U,"Fair point.",1)
hss.evt(co,"As the music swells, Hannelina conjures a gentle snowfall inside the pavilion as colored lights dance through the crystalline ice formations.", "")
hss.evt(co,"You stare into Victoria's eyes, her face mere inches away from yours...", "")
hss.dlg(co,hss.U,"What are you thinking about?")
hss.dlg(co,"VICTORIA","Kissing you.")
local choice = hss.showTextMenu(co, "What do you say?", "I'd like that.|Just hold me for now.");
if (choice == 0) then
hss.evt(co,"You lean into Victoria and feel her lips against yours, melting together in the chill evening air...", "")
else
hss.dlgA(co,"VICTORIA","Works for me.",1)
hss.evt(co,"Victoria holds you tight, snowflakes landing on your heads as you drift across the ice together...", "")
end
else
hss.evt(co,"You pull Hannelina onto the dance floor, skating backward through the crowds of lovers nestled in each others' arms...", "")
hss.dlgA(co,"HANNELINA","Oh, {YOU}, I didn't expect--",1)
hss.dlgA(co,hss.U,"That I'd want to dance with you? We don't have to, you know...",1)
hss.dlgA(co,"HANNELINA","No, it's--",4)
hss.dlg(co,"HANNELINA","I want to. Definitely.")
hss.evt(co,"As the music swells, Hannelina conjures a gentle snowfall inside the pavilion as colored lights dance through the crystalline ice formations.", "")
hss.evt(co,"You stare into her eyes, her face mere inches away from yours...", "")
hss.dlgA(co,"HANNELINA","What are you thinking about?",4)
local choice = hss.showTextMenu(co, "What do you say?", "Kissing you.|Nothing much.");
if (choice == 0) then
hss.evt(co,"You lean into Hannelina and kiss her, feeling your lips go numb as they meet hers...", "")
else
hss.dlgA(co,"HANNELINA","Mmm, if you say so.",1)
hss.dlgA(co,hss.U,"What's ~that~ supposed to mean?",1)
hss.dlgA(co,"HANNELINA","Nothing. Just dance with me...",1)
hss.evt(co,"You hold Hannelina tight, snowflakes landing on your heads as you drift across the ice together...", "")
end
end
end
hss.showQuestComplete(co)
hss.evt(co,"As the evening comes to a close, the dancers leave the ice and walk off into the winter night.", "")
hss.evt(co,"You and your friends stay behind with Hannelina as she takes down her pavilion.", "")
hss.dlg(co,hss.U,"It's too bad we can't leave it up ~longer~...")
hss.dlg(co,hss.A,"I know... it'd make such a nice addition to the campus.")
hss.dlgA(co,"HANNELINA","Oh, don't be sad. Not everything has to be permanent.",1)
hss.dlgA(co,hss.U,"You're one to talk, Miss Eternal Winter.",1)
hss.dlgA(co,"HANNELINA","Oh, hush.",1)
if (hss.isCharacterAdmitted("HANNELINA")) then
hss.dlgA(co,"HANNELINA","By the way, thanks again for coming. I got you something...",1)
hss.evt(co,"Hannelina hands you a delicately carved snowflake, and you hold it up to watch the stars through its crystal facets.", "")
if hss.getArgument("QUEST_ID") ~= nil and hss.getQuestProperty("reward13") == nil then
hss.setQuestProperty("reward13",1)
hss.dlgA(co,hss.U,"It's beautiful... what is it?",4,hss.REWARD_RINGS,25)
else
hss.dlgA(co,hss.U,"It's beautiful... what is it?",4)
end
hss.dlgA(co,"HANNELINA","A snowflake from my kingdom... and a token of my royal favor. Such snowflakes never melt, and never lose their brilliance.",1)
hss.dlgA(co,hss.U,"I'm honored. Thank you, Hannelina.",4)
hss.dlgA(co,"HANNELINA","You're welcome, my dear.",1)
else
end
hss.evt(co,"~Thanks for celebrating the holidays with Hollywood U! We here at Pixelberry are so glad to have you as part of our family!~", "")
hss.evt(co,"~Be sure to have a happy holiday with you and yours! We're looking forward to seeing you all in the new year!~", "")
end
local sceneTable = {}
sceneTable["inter_preview"] = inter_preview
sceneTable["outro_premium_0053_diamondparty_1"] = outro_premium_0053_diamondparty_1
sceneTable["outro_premium_0053_diamondparty_2"] = outro_premium_0053_diamondparty_2
sceneTable["outro_premium_0053_diamondparty_3"] = outro_premium_0053_diamondparty_3
sceneTable["intro_premium_0053_diamondparty_4"] = intro_premium_0053_diamondparty_4
sceneTable["outro_premium_0053_diamondparty_4"] = outro_premium_0053_diamondparty_4
sceneTable["intro_premium_0053_diamondparty_5"] = intro_premium_0053_diamondparty_5
sceneTable["outro_premium_0053_diamondparty_5"] = outro_premium_0053_diamondparty_5
hss.runScene(sceneTable)
