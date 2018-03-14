class CashRegister
  attr_accessor :total, :discount, :quantity, :item, :price
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def discount
    @discount
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
    @total += (price*quantity)
    @quantity = quantity
    @item = item
    @quantity.times do
      @items << @item
    end
  end

  def items
    @quantity.times do
      @items << @item
    end
    @items
  end

  def apply_discount
    if @discount = 0
      "There is no discount to apply."
    else
      @total = (1-@discount) *  @total
      "After the discount, the total comes to #{@total}."
    end
  end

  def void_last_transaction
    @total = 0
  end
end
