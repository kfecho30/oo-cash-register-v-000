class CashRegister
  attr_accessor :total
  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def discount
  end

  def total
  end

  def add_item(item, price, quantity = 1)
    @total += (price*quantity)
  end

  def apply_discount
  end
end
