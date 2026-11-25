function outro_premium_0024_songrecruit_1(co)
hss.evt(co,"You and Song are sitting in a coffee shop, sipping lattes.", "")
hss.dlgA(co,"SONG","So, have you thought about my offer? Do you want to be part of Team Song?",1)
hss.dlgA(co,hss.U,"I do. I want us to be friends from here on out.",1)
hss.evt(co,"Song extends a hand, and the two of you shake on it.", "")
hss.dlgA(co,"SONG","From now on, I promise to use my powers to help you out...",1)
hss.dlgA(co,"SONG","Just promise never to betray me, or I'll avenge it tenfold. Got me?",3)
hss.dlgA(co,hss.U,"Got it!",4)
hss.showQuestComplete(co)
hss.evt(co,"Without another word, Song reaches into her purse and pulls out an envelope full of photos.", "")
hss.dlgA(co,"SONG","Okay, now for the fun part. We're going to pick the guys who'll be fighting over me on 'Ms. Right'!",1)
hss.dlgA(co,"SONG","Think we can find someone sharp enough to keep up with me?",1)
hss.dlgA(co,hss.U,"That's a tall order. But I'm willing to give it a try!",1)
hss.evt(co,"What will happen on the set of 'Ms. Right'? Will Song find her dream guy? Keep playing to find out!", "")
end
local sceneTable = {}
sceneTable["outro_premium_0024_songrecruit_1"] = outro_premium_0024_songrecruit_1
hss.runScene(sceneTable)
