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
    if @discount = 0
      "There is no discount to apply."
    else
      (1-@discount)*@total
    end
  end

  def void_last_transaction
    @total = 0
  end
end
