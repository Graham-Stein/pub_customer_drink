require("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")

class TestPub < MiniTest::Test

  def setup

  @vodka   = Drink.new("Vodka", 2.56, 5)
  @redbull = Drink.new("Red Bull", 1.55, 0)

  @stock = [@vodka, @redbull]

  @chanter = Pub.new("Chanter", 0.00, @stock)
  @seadog  = Pub.new("Sea Dog", 0.00, [])

  @barry = Customer.new("Barry", 12.36, 24, 0)
  @dave  = Customer.new("Dave", 114.20, 14, 11)


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

  def test_identify_customer_age__can_drink
    assert_equal(true, @chanter.check_age(@barry.age))
  end

  def test_identify_customer_age__cannot_drink
    assert_equal(false, @chanter.check_age(@dave.age))
  end

  def test_identify_customer_sobriety__can_drink
    assert_equal(true, @chanter.check_sobriety(@barry.sobriety))
  end

  def test_identify_customer_sobriety__cannot_drink
    assert_equal(false, @chanter.check_sobriety(@dave.sobriety))
  end

end
