require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("./drinks")

class TestStudent < MiniTest::Test

  def setup
    drinkdata = {"name" => 'Gin', "type" => "Spirit", "abv" => 40}
    @drink = Drink.new(drinkdata)

    mixerdata = {"name" => 'Cola', "type" => "Fizzy"}
    @mixer = Mixer.new(mixerdata)

    cocktaildata = {"name" => drink1.id + mixer1.id}
    @cocktail = Cocktail.new(cocktaildata)
  end

  def test_drink_initialize
    assert_equal("Gin", @drink.name)
    assert_equal("Spirit", @drink.type)
    assert_equal(40, @drink.abv)
  end

  def test_mixer_initialize
    assert_equal("Cola", @mixer.name)
    assert_equal("Fizzy", @mixer.type)
  end

  def test_cocktail_initialize
    assert_equal("Vodka & Coke", @cocktail.type)
  end 

end
