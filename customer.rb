class Customer

  attr_reader :name
  attr_accessor :wallet, :age, :sobriety

  def initialize(name, wallet, age, sobriety)
    @name   = name
    @wallet = wallet
    @age    = age
    @sobriety = sobriety
  end

  def change_wallet_value(value)
    @wallet += value
  end

  def make_payment(price)
    @wallet -= price
  end

  def consume_drink(drink)
    @sobriety += drink.alcohol
  end

  def transaction(pub, price)
    make_payment(price)
    pub.take_payment(price)
    @wallet = @wallet.round(2)
  end

  def buy_drink(pub, drink_ordered)
    if pub.check_age(@age) && pub.check_sobriety(@sobriety)
      for drink in pub.drinks
        if drink == drink_ordered
          transaction(pub, drink.price)
          pub.remove_drink(drink)
          # make_payment(drink.price)
          # pub.take_payment(drink.price)
          # pub.remove_drink(drink)
        end
      end
    end
  end

end
