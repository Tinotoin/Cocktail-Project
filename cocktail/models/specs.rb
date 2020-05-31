require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("./drinks")

class TestStudent < MiniTest::Test

  def setup
    drinkdata = {"name" => 'Gin', "type" => "Spirit", "abv" => 40}
    @drink = Drink.new(drinkdata)
  end

  def test_initialize
    assert_equal("Gin", @drink.name)
    assert_equal("Spirit", @drink.type)
    assert_equal(40, @drink.abv)
  end

end
