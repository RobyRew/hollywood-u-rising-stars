function outro_message_0003_weeklygoals_1(co)
hss.evt(co,"~Congratulations! You've just unlocked Weekly Goals!~", "")
hss.evt(co,"~Weekly Goals offer up five challenges every week! Complete them to collect Tickets, which can then be used to get awesome prizes! Here's how it works...~", "")
hss.showImage("hwu_goalstutorial_slide01.jpg", hss.BUTTON_NEXT, co)
hss.showImage("hwu_goalstutorial_slide02.jpg", hss.BUTTON_NEXT, co)
hss.showImage("hwu_goalstutorial_slide03.jpg", hss.BUTTON_NEXT, co)
hss.showImage("hwu_goalstutorial_slide04.jpg", hss.BUTTON_NEXT, co)
hss.showImage("hwu_goalstutorial_slide05.jpg", hss.BUTTON_DONE, co)
hss.showQuestComplete(co)
hss.evt(co,"~We've just given you 10 tickets to get started! Go claim your first prize right now!~", "")
end
local sceneTable = {}
sceneTable["outro_message_0003_weeklygoals_1"] = outro_message_0003_weeklygoals_1
hss.runScene(sceneTable)
