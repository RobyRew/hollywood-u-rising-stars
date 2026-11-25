require "hss"
function trigger_party_building(co)
hss.evt(co,"You just unlocked Partying! Tap Club VIP to throw a party. Throwing great parties will recruit new Friends to your Entourage.", "")
hss.evt(co,"To throw a party, you'll need to select two different Friends. When the party's over, you'll recruit a new Friend that's a combination of their types.", "")
hss.evt(co,"Throw parties with different Friend types to see all the combinations!", "")
hss.evt(co,"To start, try throwing a party with a ~MOVIE STAR~ and a ~FASHIONISTA~!", "")
end
function trigger_dating_building(co)
hss.evt(co,"You've just unlocked Dating! Tap Amour to see which characters are available to date, and get ready for romance!", "")
end
function trigger_first_date_completion(co)
hss.evt(co,"Once two Classmates have been on a date, they've begun flirting. Send them on more dates to take their relationship to the next level... and beyond!", "")
hss.evt(co,"Higher level dates yield better rewards... but be careful! If you break a couple up, they go back to having no relationship!", "")
end
function trigger_first_ring_generator(co)
hss.evt(co,"Your Diamond Boutique will give {ring.generator.number} Diamonds a day, every day, for {ring.generator.days} days!", "")
hss.evt(co,"But make sure to collect by midnight... because Diamonds you don't collect will go away!", "")
end
function trigger_ring_generator_collection(co)
hss.showRingEffect()
hss.dlgA(co,hss.A,"You just collected {num.collected} Diamonds! You have {ring.generator.days} days left before your Diamond Boutique runs out. Make sure to collect every day!",1)
end
function trigger_ring_generator_collection_penultimate_day(co)
hss.showRingEffect()
hss.dlgA(co,hss.A,"You just collected {num.collected} Diamonds! Your next drop of {num.collected} Diamonds will be available at midnight!",1)
end
function trigger_ring_generator_collection_last_day(co)
hss.showRingEffect()
hss.dlgA(co,hss.A,"You just collected {num.collected} Diamonds!",1)
hss.dlgA(co,hss.A,"The Diamond Boutique is all out! Restock it to get another {ring.generator.max_days} days of {num.collected} Diamonds!",2)
end
hss.runOpt()
