function outro_prim_0051_xpfix_1(co)
hss.dlg(co,hss.B,"Hey, {YOU}. I wanted to... ugh, ~thank~ you. Again.")
hss.dlgA(co,hss.B,"You didn't have to help me find Desiree, but you did...",2)
hss.dlg(co,hss.B,"And that means a lot to me.")
hss.dlgA(co,hss.U,"Are we having a ~moment,~ Bianca? Are we going to hug?",1)
hss.dlgA(co,hss.B,"No!",3)
hss.dlg(co,hss.B,"I just got you something as thanks for helping me out, okay?")
hss.showQuestComplete(co)
hss.dlg(co,hss.U,"In all seriousness, Bianca...")
hss.dlg(co,hss.U,"You're welcome.")
hss.evt(co,"Bianca looks away nervously... then gives you a quick hug!", "")
hss.dlgA(co,hss.B,"That was a one time thing, and we're never going to talk about it. Got it?",4)
hss.dlgA(co,hss.U,"Sure, Bianca. Whatever you say...",1)
end
local sceneTable = {}
sceneTable["outro_prim_0051_xpfix_1"] = outro_prim_0051_xpfix_1
hss.runScene(sceneTable)
