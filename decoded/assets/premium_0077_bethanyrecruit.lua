function outro_premium_0077_bethanyrecruit_1(co)
hss.evt(co,"The next morning, you and Addison arrive at the airport with Ethan in tow. Ethan extends a hand to Bethany.", "")
if hss.getCharacterGender("YOU") == hss.Gender.MALE then
hss.dlgA(co,hss.E,"Ethan Blake, {YOU}'s agent. Not that {YOU} needs my help if ~Bethany Mota's~ tapping him for a modeling gig.",1)
else
hss.dlgA(co,hss.E,"Ethan Blake, {YOU}'s agent. Not that {YOU} needs my help if ~Bethany Mota's~ tapping her for a modeling gig.",1)
end
hss.dlgA(co,"BETHANY","Nice to meet you, Ethan. Love your suit, by the way... custom-tailored?",1)
hss.dlgA(co,hss.E,"Good eye.",1)
hss.dlgA(co,hss.E,"Hey, {YOU}? Word of advice... stick with Bethany. She knows what's up.",7)
hss.dlgA(co,hss.U,"Noted.",1)
hss.dlg(co,hss.A,"Is everyone ready?")
hss.dlgA(co,"BETHANY","Looks like it! Hope you guys like flying first class...",1)
hss.showQuestComplete(co)
hss.evt(co,"The five of you find your seats in first class and stretch out, savoring the extra leg room.", "")
hss.dlg(co,hss.E,"This is truly the only way to fly.")
hss.dlgA(co,hss.U,"You said it.",1)
hss.dlg(co,hss.A,"So, what's on our itinerary, Bethany?")
hss.dlgA(co,"BETHANY","Well, we'll need to get you and Addison ready for the runway, so I was thinking we'd start with a salon visit...",1)
hss.dlgA(co,hss.U,"~Down.~",1)
hss.dlgA(co,"BETHANY","Followed by some shopping...",1)
hss.dlgA(co,hss.A,"~Extremely down.~",1)
hss.dlgA(co,"BETHANY","And then we can spruce up the runway with some DIY decorations!",1)
hss.dlgA(co,hss.A,"Awesome! Just like on your channel!",4)
hss.dlgA(co,hss.U,"Ooh, Bethany! You should totally do, like, a video diary of our adventures in New York! Starting now!",1)
hss.dlgA(co,hss.E,"~And~ you could play it during the show... like in the background or something.",1)
hss.dlgA(co,hss.A,"That would be awesome!",4)
hss.dlgA(co,"BETHANY","You know what? That's not a bad idea...",1)
hss.evt(co,"~Congratulations! You've added Bethany Mota to your entourage!~", "")
hss.evt(co,"~Remember... since you've added Bethany, you've unlocked a special quest, which is followed by ANOTHER special quest!~", "")
end
local sceneTable = {}
sceneTable["outro_premium_0077_bethanyrecruit_1"] = outro_premium_0077_bethanyrecruit_1
hss.runScene(sceneTable)
