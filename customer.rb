class Customer

attr_reader :name
attr_accessor :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

def change_wallet_value(value)
  @wallet += value.to_f.round(2)
end

def make_payment(price)
  @wallet -= price.to_f.round(2)
end

def buy_drink(pub, drink_ordered)
  for drink in pub.drinks
    if drink == drink_ordered
      make_payment(drink.price)
      pub.take_payment(drink.price)
      pub.remove_drink(drink)
    end
  end
  #know the name of the pub, the name of the drink, and the value of the drink.
  #take the name of something, find it,
end

end
