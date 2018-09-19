def take_payment(value)
  @till -= value.to_f.round(2)
end
