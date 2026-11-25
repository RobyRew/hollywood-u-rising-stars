function outro_premium_0016_fratflash_1(co)
hss.evt(co,"You, Addison, Ethan, and Lisa are walking up to the student union for lunch when...", "")
hss.dlgA(co,hss.U,"Uh... what's going on over there?",4)
hss.evt(co,"Across the union, a dozen frat boys in bright neon tank tops dance in a circle around a small outdoor fountain, chanting loudly...", "")
hss.evt(co,"Suddenly, a figure catapults out from the roof above the union coffee shop, sailing through the air!", "")
hss.dlgA(co,hss.CR,"~Iiiincoooomiiiiing!~",5)
hss.evt(co,"Crash windmills his arms to stabilize... and splashes down right into the fountain in the middle of the circle!", "")
hss.evt(co,"The frat guys erupt in cheers! As Crash climbs out, soaking wet, he spots you and waves you over.", "")
hss.dlgA(co,hss.CR,"Hey, guys! These dudes said they'd heard about my awesome stunts and had to meet me!",1)
hss.dlgA(co,hss.CR,"And if they like awesome people, they're gonna love you! Come say hi!",1)
hss.evt(co,"One of the frat guys swaggers up and throws an arm over Crash's shoulder.", "")
hss.dlgA(co,"LUKE","Crash, that was amazing.",1)
hss.evt(co,"He scans his eyes over your group...", "")
hss.dlgA(co,"LUKE","And you've already got girls interested! Like a true ~Rho Bro.~",1)
if hss.tutorialIsQuestFinished("date_0013_auction_5") then -- knows Luke from date
hss.dlgA(co,hss.U,"Luke. I remember you.",3)
hss.evt(co,"He suddenly takes you in, recalling your date with Hunt...", "")
if (hss.getCharacterGender("YOU") == hss.Gender.MALE) then
hss.dlgA(co,"LUKE","Crash, you're friends with ~him?!~",3)
else
hss.dlgA(co,"LUKE","Crash, you're friends with ~her?!~",3)
end
hss.dlg(co,hss.CR,"Of course. {YOU}'s basically the coolest.")
hss.dlgA(co,"LUKE","Try the worst!",3)
hss.dlgA(co,hss.U,"How's your jaw?",3)
hss.dlgA(co,"LUKE","~Never mind.~",3)
hss.evt(co,"Luke shoots you a glare before turning back to Crash.", "")
else
hss.dlg(co,hss.A,"Hi, I'm Addison, and this is--")
hss.dlgA(co,"LUKE","Hang on, sweetie, I'm talking to my boy Crash here.",1)
hss.dlgA(co,hss.U,"Classy.",3)
end
hss.dlg(co,"LUKE","Now, Crash, lemme give it to you straight. You totally have what it takes to pledge Rho Gamma.")
hss.dlgA(co,"LUKE","Think about it. Cave-diving, mountain-climbing, and sky-diving trips, like, ~all~ the time...",7)
hss.dlgA(co,hss.CR,"Whoa... that does sound ~amazing...~",4)
hss.dlgA(co,"LUKE","Tons of new friends to share awesome times with... so are you in or out?",1)
hss.showQuestComplete(co)
hss.dlgA(co,"LUKE","What do you say, Crash?",1)
if hss.tutorialIsQuestFinished("date_0013_auction_5") then -- knows Luke from date
hss.evt(co,"As the frat guys start chanting Crash's name, Crash looks back at them apprehensively.", "")
hss.dlg(co,hss.CR,"I don't know... on the one hand, you and {YOU} seem to have a history.")
hss.dlg(co,hss.CR,"But on the other, you just listed like everything I've ever done or wanted to do...")
hss.evt(co,"Crash turns to you and your friends.", "")
hss.dlg(co,hss.CR,"What do you guys think? Should we join? It ~does~ sound pretty epic!")
else
hss.evt(co,"As the frat guys start chanting Crash's name, Crash looks at the rest of you eagerly.", "")
hss.dlgA(co,hss.CR,"Guys, let's do this! Let's all join the frat! It'll be epic! Like a brotherhood forged in the fire of adrenaline!",1)
end
hss.evt(co,"Luke and the frat guys laugh derisively.", "")
hss.dlgA(co,"LUKE","Crash... wait, wait... you're serious? ~Them?~ In Rho Gamma?",1)
hss.dlgA(co,hss.U,"What's that supposed to mean?",3)
hss.dlgA(co,"LISA","Yeah, if you've got something you wanna say, Trust Fund, spit it out.",3)
if (hss.getCharacterGender("YOU") == hss.Gender.MALE) then
hss.dlgA(co,"LUKE","I mean, ~maybe~ these dudes could be Rho Bros if they, like, dedicated their lives to it...",1)
else
hss.dlgA(co,"LUKE","I mean, ~maybe~ this one dude could be a Rho Bro if he dedicated his life to it...",1)
end
hss.dlgA(co,hss.E,"How tempting.",3)
hss.dlgA(co,"LUKE","But the chicks? I mean... yeah, right. But we'll let you know if we need eye candy for our next rager.",1)
hss.dlgA(co,hss.CR,"Whoa! What's your deal, Luke?!",3)
hss.dlgA(co,"LUKE","Look, Crash, I get you've been slumming it with these 'people' or whatever, and props for not forgetting your roots...",1)
hss.dlgA(co,"LUKE","But now you're a Rho Bro. Girls aren't your friends. They're trophies, feel me?",1)
hss.dlg(co,"LUKE","You don't need to hang with them anymore. You're in the Rho Gamma family now!")
hss.dlgA(co,hss.CR,"Thanks, but I already ~have~ a family here.",3)
hss.evt(co,"Crash brushes past Luke and stands with you.", "")
hss.dlgA(co,"LUKE","You've gotta be kidding me. Come on, Crash, you're one of us! You ~belong~ in a frat!",1)
hss.dlgA(co,hss.U,"Then maybe he'll just start his own!",3)
hss.dlgA(co,hss.CR,"Hey, yeah! One we can ~all~ join!",1)
hss.dlgA(co,hss.A,"One where the members aren't chauvinist pigs...",3)
hss.dlgA(co,"LISA","But they're still down to rage 24-7!",1)
hss.dlgA(co,hss.E,"Wait a second... are we for real right now? Are we actually starting a co-ed frat?",4)
hss.evt(co,"~Want to find out what happens next? Find Part 2 in your quest log now!~", "")
hss.evt(co,"~And as a limited-time offer, if you unlock this premium quest in the next hour, you'll get 50 PERCENT BACK on your Diamonds! Hurry!~", "")
end
local sceneTable = {}
sceneTable["outro_premium_0016_fratflash_1"] = outro_premium_0016_fratflash_1
hss.runScene(sceneTable)
