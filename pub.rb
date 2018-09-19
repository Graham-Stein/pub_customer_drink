class Pub

attr_reader :name

attr_accessor :till, :drinks

  def initialize(name, till, drinks)

    @name = name
    @till = till
    @drinks = drinks

  end

  def take_payment(value)
    @till += value.to_f.round(2)
  end

  def remove_drink(name)
    # loop to find Vodka
    # then remove Vodka
    for drink in @drinks
      @drinks.delete(drink) if drink == name
    end
  end


end
