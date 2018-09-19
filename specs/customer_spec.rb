require("minitest/autorun")
require("minitest/rg")
require_relative("../customer.rb")

class TestCustomer < MiniTest::Test

  def setup

    @barry = Customer.new("Barry", 12.36)

  end


  def test_get_customer_name
    assert_equal("Barry", @barry.name)
  end

  def test_get_customer_funds
    assert_equal(12.36, @barry.wallet)
  end

  def test_change_wallet_value__lose_money
    @barry.change_wallet_value(-2.36)
    assert_equal(10.00, @barry.wallet)
  end

  def test_change_wallet_value__gain_money
    @barry.change_wallet_value(0.50)
    assert_equal(12.86, @barry.wallet)
  end

end
