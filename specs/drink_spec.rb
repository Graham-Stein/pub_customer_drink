require("minitest/autorun")
require("minitest/rg")
require_relative("../drink.rb")

class TestDrink < MiniTest::Test

  def setup

  @vodka = Drink.new("Vodka", 2.95)


  end

  def test_drink_has_name
    assert_equal("Vodka", @vodka.name)
  end

  def test_drink_has_price
    assert_equal(2.95, @vodka.price)
  end

end
