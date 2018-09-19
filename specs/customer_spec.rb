require("minitest/autorun")
require("minitest/rg")
require_relative("../customer.rb")
require_relative("../drink.rb")
require_relative("../pub.rb")

class TestCustomer < MiniTest::Test

  def setup

    @vodka   = Drink.new("Vodka", 2.56)
    @redbull = Drink.new("Red Bull", 1.55)

    @stock = [@vodka, @redbull]

    @chanter = Pub.new("Chanter", 0.00, @stock)
    @seadog  = Pub.new("Sea Dog", 0.00, [])



    @barry = Customer.new("Barry", 12.36)

  end


  # def test_get_customer_name
  #   assert_equal("Barry", @barry.name)
  # end
  #
  # def test_get_customer_funds
  #   assert_equal(12.36, @barry.wallet)
  # end
  #
  # def test_change_wallet_value__lose_money
  #   @barry.change_wallet_value(-2.36)
  #   assert_equal(10.00, @barry.wallet)
  # end
  #
  # def test_change_wallet_value__gain_money
  #   @barry.change_wallet_value(0.50)
  #   assert_equal(12.86, @barry.wallet)
  # end

  def test_make_payment
    @barry.make_payment(0.50)
    assert_equal(11.86, @barry.wallet)
  end

  def test_buy_drink_from_pub
    @barry.buy_drink(@chanter, @vodka)
    #value of drink + the pub's tills
    #value of drink - customer wallet
    #chanter.drink - bought drink
    assert_equal(2.56, @chanter.till)
    assert_equal(9.80, @barry.wallet)
    assert_equal(1, @chanter.drinks.length)
  end

end
