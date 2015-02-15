class CashRegister
  require 'pry'
  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []    
  end

  def add_item(item, price, quantity=1)
    @total += price *quantity
    (@items << [item]*quantity).flatten!
  end

  def apply_discount
    if self.discount == 0
      return "There is no discount to apply."
    elsif self.discount > 0
      @total -= (discount*10)
      "After the discount, the total comes to $#{total}."
    end
  end

  def items
    @items
  end



end







