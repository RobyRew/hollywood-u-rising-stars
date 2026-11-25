function outro_premium_0070_bethany_1(co)
hss.evt(co,"~In this quest, you'll meet special guest A-Lister Bethany Mota! Recruiting Bethany will unlock two special quests!~", "")
hss.evt(co,"~To add Bethany to your entourage, buy her from the 'A-Listers' section of the Store!~", "")
hss.evt(co,"You and Addison push through the glass double doors of the downtown headquarters of Faux Pas magazine and come face to face with...", "")
hss.dlgA(co,"MARIANNE","Oh, good, you're here. Thank you for making it on such short notice.",1)
hss.dlgA(co,hss.U,"No problem.",4)
hss.dlgA(co,hss.A,"Did you say you wanted us to--",4)
hss.dlg(co,"MARIANNE","Model, yes. Please follow me, the designer will be here any second.")
hss.dlgA(co,"MARIANNE","She requested you two specifically!",1)
hss.showQuestComplete(co)
hss.dlgA(co,hss.U,"Wait, who's the designer? Did you say she was only a few seconds away?",4)
hss.evt(co,"Down the hall, you hear the ding of an elevator, and a young woman in a chic dress sweeps into the room.", "")
hss.dlgA(co,"BETHANY","{YOU}, Addison! I'm so glad you were able to fit this into your schedules... you guys were my first picks for the shoot!",1)
local choice = hss.showTextMenu(co, "What do you say?", "Wait... you're Bethany Mota!|We were?!");
if (choice == 0) then
hss.dlgA(co,hss.U,"We're huge fans!",1)
hss.dlgA(co,hss.A,"I've seen practically all of your videos!",1)
hss.dlgA(co,"BETHANY","Aw, that's so nice to hear! I've actually been following both of your careers pretty closely, too.",1)
hss.dlgA(co,"BETHANY","That's why I told Marianne we needed {YOU} and Addison for this shoot!",1)
else
hss.dlgA(co,"BETHANY","Totally! I've actually been following both of your careers pretty closely.",1)
hss.dlgA(co,"BETHANY","That's why I told Marianne we needed {YOU} and Addison for this shoot!",1)
hss.dlgA(co,hss.A,"Aw, that's so nice to hear! I've seen practically all of your videos... I never dreamed we'd be working together one day!",1)
hss.dlgA(co,hss.U,"Yeah, this is awesome!",1)
end
hss.dlg(co,"MARIANNE","Enough chitchat. {YOU}, Addison, please get dressed. We're shooting in ten.")
if hss.getCharacterGender("YOU") == hss.Gender.MALE then
hss.dlg(co,"MARIANNE","By the way, I think we could use another model... if you know anyone, give them a call.")
hss.dlgA(co,hss.U,"Will do!",4)
else
end
end
function intro_premium_0070_bethany_2(co)
if (hss.getCharacterReferenceNameByProperty("QUEST_CHAR_2") == "YOU") then
hss.evt(co,"In your dressing room, you find several outfits from Bethany's latest collection hanging neatly on the wall.", "")
hss.dlgA(co,hss.U,"Taking a modeling gig at Faux Pas ~definitely~ has its perks...",1)
hss.evt(co,"You step out of the modeling room and look yourself over in a floor-to-ceiling mirror.", "")
hss.dlgA(co,hss.A,"{YOU}, you look ~so~ cute in that! Very chic.",1)
hss.dlgA(co,hss.U,"You don't look so bad yourself!",1)
hss.evt(co,"Addison blushes, and the two of you speedwalk back to the set.", "")
hss.dlgA(co,"BETHANY","You two look ~perfect!~ Let's get started!",1)
else
hss.evt(co,"In your dressing room, you find several designer outfits hanging neatly on the wall.", "")
hss.dlgA(co,hss.U,"Taking a modeling gig at Faux Pas ~definitely~ has its perks...",1)
hss.evt(co,"You step out of the modeling room and look yourself over in a floor-to-ceiling mirror.", "")
hss.dlgA(co,hss.Q2,"Damn, {YOU}!",1)
hss.dlgA(co,hss.A,"You look ~seriously~ hot in that! Very stylish.",1)
hss.dlgA(co,hss.U,"You two don't look so bad yourselves.",1)
hss.evt(co,"Addison blushes, and the three of you speedwalk back to the set.", "")
hss.dlgA(co,"BETHANY","You guys look ~perfect!~ Let's get started!",1)
end
end
function outro_premium_0070_bethany_2(co)
if (hss.getCharacterReferenceNameByProperty("QUEST_CHAR_2") == "YOU") then
hss.evt(co,"Bethany sets up a tripod in the corner of the room and turns to you and Addison with a bright smile on her face.", "")
hss.dlgA(co,"BETHANY","Do you guys mind if I film this for my channel? Like a behind-the-scenes video?",1)
hss.dlgA(co,hss.A,"Are you kidding? That would be amazing!",1)
hss.dlgA(co,"BETHANY","Great! Let's start shooting then... I just want you guys to act totally natural and have fun with it. Trust your instincts.",1)
hss.evt(co,"You and Addison have fun goofing off on set, lounging on a mid-century modern sofa and kicking balloons around the room.", "")
hss.dlgA(co,"BETHANY","This is ~perfect!~ You guys are naturals!",1)
hss.dlgA(co,hss.A,"You should get in on this, Bethany!",1)
hss.dlgA(co,hss.U,"Yeah! It's your collection, after all.",1)
hss.dlgA(co,"BETHANY","Well, if you insist...",1)
else
hss.evt(co,"{QUEST_CHAR_2_NAME} steps out of the dressing room as Bethany sets up a tripod in the corner of the room.", "")
hss.dlgA(co,"BETHANY","Do you guys mind if I film this for my channel? Like a behind-the-scenes video?",1)
hss.dlgA(co,hss.A,"Are you kidding? That would be amazing!",1)
hss.dlgA(co,hss.Q2,"You won't hear any complaints from me.",1)
hss.dlgA(co,"BETHANY","Great! Let's start shooting then... I just want you guys to act totally natural and have fun with it. Trust your instincts.",1)
hss.evt(co,"You, Addison, and {QUEST_CHAR_2_NAME} have fun goofing off on set, lounging on a mid-century modern sofa and kicking balloons around the room.", "")
hss.dlgA(co,"BETHANY","This is ~perfect!~ You guys are naturals!",1)
hss.dlgA(co,hss.Q2,"You should get in on this, Bethany!",1)
hss.dlgA(co,hss.U,"Yeah! It's your collection, after all.",1)
hss.dlgA(co,"BETHANY","Well, if you insist...",1)
end
hss.showQuestComplete(co)
hss.evt(co,"After a fun and casual photoshoot, you, Addison, and Bethany look over the final photos with Marianne.", "")
hss.dlgA(co,"MARIANNE","I have to admit, I wasn't sure about setting such a... ~casual~ tone for the shoot, but these turned out wonderful!",4)
hss.dlg(co,"BETHANY","Sometimes it's best not to take yourself too seriously.")
hss.dlgA(co,"MARIANNE","I'll try to keep that in mind. In the meantime... I have a proposition for you that I think you're going to like.",1)
hss.dlg(co,"MARIANNE","How do you feel about debuting your new collection... at a runway event in Times Square?")
hss.dlgA(co,hss.A,"~Times Square?~",4)
hss.dlgA(co,hss.U,"That's huge!",4)
hss.dlgA(co,"BETHANY","Actually... there is ~one~ request I have if you want me to do the show, and it has to do with {YOU} and Addison!",1)
end
function intro_premium_0070_bethany_3(co)
hss.dlg(co,"MARIANNE","So, what is this... ~request?~")
hss.dlgA(co,"BETHANY","I want {YOU} and Addison to come with me to New York and appear in the show!",1)
hss.dlgA(co,hss.A,"Oh my god, are you serious?",1)
hss.dlgA(co,hss.U,"I'm ~so~ down.",1)
hss.dlgA(co,"BETHANY","Well, Marianne... what do you say?",1)
end
function outro_premium_0070_bethany_3(co)
hss.evt(co,"Marianne gives you and Addison an appraising look... then smiles.", "")
hss.dlg(co,"MARIANNE","Of course {YOU} and Addison can go. Can you both be ready to fly out tomorrow morning?")
hss.dlgA(co,hss.U,"Definitely!",4)
hss.dlgA(co,hss.A,"No problem!",1)
hss.dlg(co,"MARIANNE","Perfect.")
hss.showQuestComplete(co)
hss.evt(co,"You, Addison, and Bethany walk out of the Faux Pas headquarters and stand on the sidewalk, enjoying the L.A. sunshine.", "")
hss.dlg(co,"BETHANY","Well... I guess I'll see you two first thing tomorrow morning.")
hss.dlgA(co,"BETHANY","By the way, feel free to bring some friends. I'd love to have them attend the show!",1)
hss.dlgA(co,hss.U,"Will do!",1)
hss.dlgA(co,hss.A,"Thanks again, Bethany... see you tomorrow!",1)
hss.dlgA(co,"BETHANY","Count on it.",1)
hss.evt(co,"~Looks like you and Bethany have an awesome New York adventure ahead of you!~", "")
hss.evt(co,"~Go to the A-Lister Store to purchase Bethany! Once you've added her to your entourage, you'll unlock two special quests!~", "")
end
local sceneTable = {}
sceneTable["outro_premium_0070_bethany_1"] = outro_premium_0070_bethany_1
sceneTable["intro_premium_0070_bethany_2"] = intro_premium_0070_bethany_2
sceneTable["outro_premium_0070_bethany_2"] = outro_premium_0070_bethany_2
sceneTable["intro_premium_0070_bethany_3"] = intro_premium_0070_bethany_3
sceneTable["outro_premium_0070_bethany_3"] = outro_premium_0070_bethany_3
hss.runScene(sceneTable)
