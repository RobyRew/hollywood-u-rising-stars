require "hss"
function scene_help_buy_dorm(co)
hss.evt(co,"To buy a dorm, close the Quest Log and tap the Store button in the lower right corner of the screen!", "")
hss.evt(co,"Then select the ~MOVIE STAR DORM~ from the Buildings menu!", "")
hss.evt(co,"When it's done building, tap the gift box, and the requirement will be complete!", "")
hss.evt(co,"If you've already bought your maximum amount of Dorms, you'll have to sell one to make space.", "")
end
function scene_help_admit_ethan(co)
hss.evt(co,"Ethan is in your Admissions Office! Close the Quest Log and find it on your campus!", "")
hss.evt(co,"When he's done being Recruited, tap on the Office to collect him, then place him in a ~DIRECTOR~ or ~MOVIE STAR~ Dorm.", "")
end
function scene_help_level_you(co)
hss.evt(co,"To level yourself up, close the Quest Log and tap on your Workshop Building!", "")
hss.evt(co,"Select yourself from the menu... and wait until the timer is complete, or rush it with diamonds.", "")
hss.evt(co,"When you tap on it to collect, you'll have leveled up!", "")
end
function scene_help_level_classmate(co)
hss.evt(co,"To level someone, close the Quest Log and tap on your Workshop Building!", "")
hss.evt(co,"Select the Friend you want to level from the menu... and wait until the timer is complete, or rush it with diamonds.", "")
hss.evt(co,"When you tap on it to collect, they'll have leveled up!", "")
end
function scene_help_add_plot(co)
hss.evt(co,"To add a plot, close the Quest Log, and find a For Sale sign on your campus!", "")
hss.evt(co,"Tap on it to buy some land, and wait until the timer is complete, or rush it with diamonds.", "")
hss.evt(co,"When you tap on it to collect, you'll have a new plot!", "")
end
function scene_help_add_party(co)
hss.evt(co,"To buy Club VIP, close the Quest Log and tap the Store button in the lower right corner of the screen!", "")
hss.evt(co,"Then select ~Club VIP~ from the Buildings menu!", "")
hss.evt(co,"When it's done building, tap the gift box, and the requirement will be complete!", "")
end
function scene_help_throw_party(co)
hss.evt(co,"To throw a party, close the Quest Log and find your Club VIP Building!", "")
hss.evt(co,"Tap on it, and tap on Party! Then select a FASHIONISTA from one list and a MOVIE STAR from another!", "")
hss.evt(co,"When the timer is up, tap the building, and the requirement will be complete! Plus you'll have a new Friend!", "")
end
function scene_help_admit_model(co)
hss.evt(co,"Your Model is in your Admissions Office! Close the Quest Log and find it on your campus!", "")
hss.evt(co,"When she's done being Recruited, tap on the Office to collect her, then place her in a ~FASHIONISTA~ or ~MOVIE STAR~ Dorm.", "")
end
function scene_help_have_bench(co)
hss.evt(co,"To buy a Bench, close the Quest Log and tap the Store button in the lower right corner of the screen!", "")
hss.evt(co,"Then select a Bench from the Decor menu!", "")
end
function scene_help_have_palm(co)
hss.evt(co,"To buy a Palm Tree, close the Quest Log and tap the Store button in the lower right corner of the screen!", "")
hss.evt(co,"Then select a Palm Tree from the Decor menu!", "")
end
function scene_help_add_rope(co)
hss.evt(co,"To buy a Velvet Rope, close the Quest Log and tap the Store button in the lower right corner of the screen!", "")
hss.evt(co,"Then select a Velvet Rope from the Decor menu!", "")
end
function scene_help_have_amour(co)
hss.evt(co,"To buy Amour, close the Quest Log and tap the Store button in the lower right corner of the screen!", "")
hss.evt(co,"Then select Amour from the Buildings menu!", "")
end
function scene_help_buy_friend(co)
hss.evt(co,"To Recruit a new Friend, close the Quest Log and tap the Store button in the lower right corner of the screen!", "")
hss.evt(co,"Then select the person you want from the Friends menu!", "")
end
function scene_help_buy_star(co)
hss.evt(co,"To Recruit a new Movie Star, close the Quest Log and tap the Store button in the lower right corner of the screen!", "")
hss.evt(co,"Then select a Movie Star from the Friends menu!", "")
end
function scene_help_add_harrison(co)
hss.evt(co,"To Recruit Harrison, close the Quest Log and tap the Store button in the lower right corner of the screen!", "")
hss.evt(co,"Then select Harrison from the A-Listers menu!", "")
end
function scene_help_add_aria(co)
hss.evt(co,"To Recruit Aria, close the Quest Log and tap the Store button in the lower right corner of the screen!", "")
hss.evt(co,"Then select Aria from the A-Listers menu!", "")
end
hss.checkEnvironment({"YOU"})
hss.runOpt()
