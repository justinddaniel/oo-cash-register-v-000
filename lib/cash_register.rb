class CashRegister
  attr_accessor :total, :discount, :itemslist

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @itemslist = []
  end

  def add_item(title, price, quantity = 1)
    @total += price*quantity
    @itemslist << title
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
    self.itemslist
  end

end
