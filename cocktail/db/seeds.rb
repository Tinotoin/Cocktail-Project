require_relative ('../models/drink')
require_relative ('../models/mixer')
require_relative ('../models/cocktail')
require('pry')

drink1 = ({"name" => "Vodka", "type" => "Spirit", "abv" => 40})
@drink1 = Drink.new(drink1)

drink2 = ({"name" => "Gin", "type" => "Spirit", "abv" => 40})
@drink2 = Drink.new(drink2)

drink3 = ({"name" => "Rum", "type" => "Spirit", "abv" => 40})
@drink3 = Drink.new(drink3)

drink4 = ({"name" => "Whisky", "type" => "Spirit", "abv" => 40})
@drink4 = Drink.new(drink4)

drink5 = ({"name" => "Wine", "type" => "Wine", "abv" => 14})
@drink5 = Drink.new(drink5)

drink6 = ({"name" => "Beer", "type" => "Beer", "abv" => 5})
@drink6 = Drink.new(drink6)

@drink1.save()
@drink2.save()
@drink3.save()
@drink4.save()
@drink5.save()
@drink6.save()


mixer1 = ({"name" => "Coke", "type" => "Fizzy"})
@mixer1 = Mixer.new(mixer1)

mixer2 = ({"name" => "Orange", "type" => "Still"})
@mixer2 = Mixer.new(mixer2)

mixer3 = ({"name" => "Lemonade", "type" => "Fizzy"})
@mixer3 = Mixer.new(mixer3)

mixer4 = ({"name" => "Pineapple", "type" => "Still"})
@mixer4 = Mixer.new(mixer4)

mixer5 = ({"name" => "Soda", "type" => "Fizzy"})
@mixer5 = Mixer.new(mixer5)

mixer6 = ({"name" => "Tonic", "type" => "Fizzy"})
@mixer6 = Mixer.new(mixer6)

@mixer1.save()
@mixer2.save()
@mixer3.save()
@mixer4.save()
@mixer5.save()
@mixer6.save()

# Logic here is that Vodka and Coke will return if drink1 and mixer1 is selected.
cocktail1 = ({"name" => "Vodka & Coke", "drink_id" => @drink1.id, "mixer_id" => @mixer1.id})
@cocktail1 = Cocktail.new (cocktail1)

cocktail2 = ({"name" => "Vodka & Orange", "drink_id" => @drink1.id, "mixer_id" => @mixer2.id})
@cocktail2 = Cocktail.new(cocktail2)

cocktail3 = ({"name" => "Vodka & Lemonade", "drink_id" => @drink1.id, "mixer_id" => @mixer3.id})
@cocktail3 = Cocktail.new(cocktail3)

cocktail4 = ({"name" => "Vodka & Pineapple", "drink_id" => @drink1.id, "mixer_id" => @mixer4.id})
@cocktail4 = Cocktail.new(cocktail4)

cocktail5 = ({"name" => "Vodka & Soda", "drink_id" => @drink1.id, "mixer_id" => @mixer5.id})
@cocktail5 = Cocktail.new(cocktail5)

cocktail6 = ({"name" => "Vodka & Tonic", "drink_id" => @drink1.id, "mixer_id" => @mixer6.id})
@cocktail6 = Cocktail.new(cocktail6)

cocktail7 = ({"name" => "Gin & Tonic", "drink_id" => @drink2.id, "mixer_id" => @mixer6.id})
@cocktail7 = Cocktail.new(cocktail7)

cocktail8 = ({"name" => "Rum & Coke", "drink_id" => @drink3.id, "mixer_id" => @mixer1.id})
@cocktail8 = Cocktail.new(cocktail8)

cocktail9 = ({"name" => "Rum & Lemonade", "drink_id" => @drink3.id, "mixer_id" => @mixer3.id})
@cocktail9 = Cocktail.new(cocktail9)

cocktail10 = ({"name" => "Rum & Pineapple", "drink_id" => @drink3.id, "mixer_id" => @mixer4.id})
@cocktail10 = Cocktail.new(cocktail10)

cocktail11 = ({"name" => "Whisky & Coke", "drink_id" => @drink4.id, "mixer_id" => @mixer1.id})
@cocktail11 = Cocktail.new(cocktail11)

cocktail12 = ({"name" => "Whisky Soda", "drink_id" => @drink4.id, "mixer_id" => @mixer5.id})
@cocktail12 = Cocktail.new(cocktail12)

cocktail13 = ({"name" => "Wine Spritzer (Lemonade)", "drink_id" => @drink5.id, "mixer_id" => @mixer3.id})
@cocktail13 = Cocktail.new(cocktail13)

cocktail14 = ({"name" => "Wine Spritzer (Soda)", "drink_id" => @drink5.id, "mixer_id" => @mixer5.id})
@cocktail14 = Cocktail.new(cocktail14)

cocktail15 = ({"name" => "Shandy", "drink_id" => @drink6.id, "mixer_id" => @mixer3.id})
@cocktail15 = Cocktail.new(cocktail15)

cocktail16 = ({"name" => "Gin & Lemonade", "drink_id" => @drink2.id, "mixer_id" => @mixer3.id})
@cocktail16 = Cocktail.new(cocktail16)

@cocktail1.save()
@cocktail2.save()
@cocktail3.save()
@cocktail4.save()
@cocktail5.save()
@cocktail6.save()
@cocktail7.save()
@cocktail8.save()
@cocktail9.save()
@cocktail10.save()
@cocktail11.save()
@cocktail12.save()
@cocktail13.save()
@cocktail14.save()


binding.pry()
nil
