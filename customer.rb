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



end
