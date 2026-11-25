require "hss"
function passive_1_outro(co)
hss.dlg(co,"JEN","passive_1_outro start")
hss.showQuestComplete(co)
hss.dlg(co,"JEN","passive_1_outro done")
end
function passive_2_outro(co)
hss.dlg(co,"JEN","passive_2_outro start")
hss.showQuestComplete(co)
hss.dlg(co,"JEN","passive_2_outro done")
end
hss.runOpt()
