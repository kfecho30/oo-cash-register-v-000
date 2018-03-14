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
    self.items
  end

  def items
    @items = []
    quantity.times do
      @items << item
    end
    @items
  end

  def apply_discount
  end
end
