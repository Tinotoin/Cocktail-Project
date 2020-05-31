require_relative ('../models/drink')
# require('pry')

drink1 = ({"name" => "Gin", "type" => "Spirit", "abv" => 40})
@drink1 = Drink.new(drink1)

drink2 = ({"name" => "Vodka", "type" => "Spirit", "abv" => 40})
@drink2 = Drink.new(drink2)


@drink1.save()
@drink2.save()
