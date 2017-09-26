class CashRegister
  attr_accessor :total, :discount

  @@all_items = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @total += price*quantity
    @@all_items << title
  end

  def apply_discount
    if discount > 0
    @total = @total*(0.8)
    @total = @total.to_i
    "After the discount, the total comes to $#{@total}."
  else "There is no discount to apply."
    end
  end

  def items
    @@all_items
  end

end
