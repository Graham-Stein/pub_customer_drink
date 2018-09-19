require("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")
require_relative("../drink.rb")

class TestPub < MiniTest::Test

  def setup

  @vodka = Drink.new("Vodka", 2.56)
  @redbull = Drink.new("Red Bull", 1.55)
  @stock = [@vodka, @redbull]
  @chanter = Pub.new("Chanter", 0.00, @stock)
  @seadog = Pub.new("Sea Dog", 0.00, [])


  end

  def test_pub_has_name()
    assert_equal("Chanter", @chanter.name)
  end

  def test_pub_has_empty_till()
    assert_equal(0.00, @seadog.till)
  end

  def test_pub_has_no_drinks()
    assert_equal([], @seadog.drinks)
  end

  def test_take_payment()
    @chanter.take_payment(3.00)
    assert_equal(3.00, @chanter.till)
  end

  def test_remove_drink()
    @chanter.remove_drink(@vodka)
    assert_equal(1, @chanter.drinks.length)
  end

  def test_remove_drink()
    @chanter.remove_drink(@vodka)
    assert_equal(1, @chanter.drinks.length)
  end

end
