class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(discount=0)
    @items = []
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity=1)
    @last_t_price = price * quantity

    quantity.times do
      items << title
    end

    if quantity > 1
      self.total += price * quantity
    else
      self.total += price
    end
  end

  def apply_discount
    if discount != 0
      self.total = (total * (100 - discount) / 100)
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - @last_t_price
  end

end


CashRegister.new
