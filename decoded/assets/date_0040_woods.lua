function inter_preview(co)
hss.evt(co,"~Snapshot Dates are brief glimpses of the simpler things in love. Enjoy everything from lavish date nights to cozy moments of domestic fluff in these bite-sized quests.~", "")
hss.evt(co,"~In this Snapshot Date, venture out into the woods to see what Lisa Valentine has in store for you!~", "")
hss.markQuestScriptRequirementFinished()
end
function outro_date_0040_woods_1(co)
hss.evt(co,"Late one night, you receive a text from Lisa containing a set of mysterious GPS coordinates.", "")
hss.dlgA(co,hss.U,"O... kay. Weird, yet somehow not even close to the weirdest thing Lisa's done. I wonder what she's up to.",4)
hss.evt(co,"You punch the coordinates into your phone's GPS and follow the directions out to the woods, driving down a winding trail until it becomes too narrow for your car.", "")
hss.evt(co,"Brandishing your cell phone's flashlight, you step out into the chilly night air and continue following the directions deeper into the darkening woods.", "")
hss.dlgA(co,hss.U,"Lisa? Hello? Are you out here?",4)
hss.evt(co,"A loud ~rustle~ sounds from behind you, making you jump!", "")
hss.evt(co,"As you spin to find the source of the sound, someone sneaks up behind you and covers your eyes with a gentle hand.", "")
hss.dlgA(co,"LISA","Guess who?",1)
hss.dlgA(co,hss.U,"~Lisa!~",4)
local choice = hss.showTextMenu(co, "What do you say?", "Haha, you got me! Good one!|OH MY GOD HOW DARE YOU?!");
if (choice == 0) then
hss.dlgA(co,hss.U,"Did you seriously lure me all the way out here just to sneak up on me?",1)
hss.dlg(co,"LISA","Not ~just~ to sneak up on you. Come on, follow me.")
else
hss.dlgA(co,hss.U,"You scared me half to death! Did you seriously lure me all the way out here just to sneak up on me?",3)
hss.dlgA(co,"LISA","Whoa, sorry! I just thought it would be cute or whatever.",4)
hss.dlg(co,"LISA","Come on, follow me. I've got a surprise for you that'll totally make up for this...")
end
hss.evt(co,"Lisa flashes you a mischievous grin and takes your hand, pulling you further into the woods with her.", "")
hss.evt(co,"Soon, you arrive at a small clearing where a huge projection screen stands before an old, rusted muscle car. Dozens of small red light bulbs are strung up in the trees, casting a glow that's simultaneously ominous and romantic...", "")
hss.dlg(co,hss.U,"I honestly don't know whether I should be charmed or scared.")
hss.dlg(co,"LISA","How about both? I was aiming for both.")
hss.dlg(co,hss.U,"Well, you've definitely succeeded. What exactly is all this?")
hss.dlgA(co,"LISA","Our own private drive-in, duh!",1)
hss.dlgA(co,"LISA","The paparazzi have been hounding me non-stop ever since that one tabloid said I was dating one of the Hemsworth brothers, which I'm so ~not.~",3)
hss.dlg(co,"LISA","I figured we wouldn't be able to get any real privacy in the city, so I planned this date for us out here. Scary movies, all night long. What do you say?")
hss.dlg(co,hss.U,"Scary movies, huh?")
local choice = hss.showTextMenu(co, "What do you say?", "Sure, I don't scare easily.|I dunno... HOW scary?");
if (choice == 0) then
hss.dlgA(co,"LISA","Oh, you're a tough one, huh? Then you can protect me.",1)
hss.dlgA(co,hss.U,"It'd be my pleasure.",1)
else
hss.dlgA(co,hss.U,"Horror movies aren't really my thing.",2)
hss.dlgA(co,"LISA","Aww, don't worry, {YOU}. I'm here to protect you.",1)
hss.dlgA(co,hss.U,"Well, when you put it like that... let's get this thing rolling!",1)
end
hss.showQuestComplete(co)
hss.evt(co,"You and Lisa squeeze into the backseat of the broken-down car, pressed close together from shoulder to knee as the movie begins to play.", "")
if (choice == 0) then
hss.evt(co,"Lisa startles and yelps at one of the jump scares, shifting even closer to you. You wrap an arm around her shoulders and press a kiss to her temple.", "")
hss.dlg(co,hss.U,"Too scary for you?")
hss.dlg(co,"LISA","No way. Just... wanted to be closer to you, obviously.")
hss.dlgA(co,hss.U,"Oh, yeah? Well, you won't catch me complaining about that.",1)
else
hss.evt(co,"You startle and yelp at one of the jump scares, shifting even closer to Lisa. She grins and tugs one of your arms around her shoulders, leaning into your side.", "")
hss.dlg(co,"LISA","Too scary for you?")
hss.dlg(co,hss.U,"Well... not anymore, now that you're here.")
hss.dlgA(co,"LISA","Good answer.",1)
end
hss.evt(co,"Lisa tips her head up to meet your gaze, splashes of color from the movie screen painting her cheeks. You lean in, helplessly drawn closer and closer, until your lips meet for a passionate kiss...", "")
hss.evt(co,"~Stay tuned for more Snapshot Dates, coming soon to Amour!~", "")
end
local sceneTable = {}
sceneTable["inter_preview"] = inter_preview
sceneTable["outro_date_0040_woods_1"] = outro_date_0040_woods_1
hss.runScene(sceneTable)
