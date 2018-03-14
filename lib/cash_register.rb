class CashRegister
  attr_accessor :total
  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def discount
    @discount
  end

  def total
    @total = @total *(1-(@discount/100))
  end

  def add_item(item, price, quantity = 1)
    @total += (price*quantity)
    @quantity = quantity
    @item = item
    self.items
  end

  def items
    @items = []
    @quantity.times do
      @items << @item
    end
    @items
  end

  def apply_discount
  end
end
