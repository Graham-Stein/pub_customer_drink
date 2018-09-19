class Pub

attr_reader :name

attr_accessor :till, :drinks

  def initialize(name, till, drinks)

    @name = name
    @till = till
    @drinks = drinks

  end

  def take_payment(value)
    @till += value
    @till.round(2)
  end

  # def transaction(value, customer)
  #   take_payment(value)
  #   customer.make_payment(value)
  # end
  def remove_drink(name)
    # loop to find Vodka
    # then remove Vodka
    for drink in @drinks
      @drinks.delete(drink) if drink == name
    end
  end

  def check_age(age)
    if age >= 18
      p "What would you like to drink?"
      return true
    else
      p "Sorry I can't serve you"
      return false

    end
  end

  def check_sobriety(sobriety)
    if sobriety < 10
      p "What would you like to drink?"
      return true
    else
      p "Sorry I can't serve you alcohol, you pisshead."
      return false

    end
  end



end
