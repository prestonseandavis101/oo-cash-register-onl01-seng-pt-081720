require 'pry'

class CashRegister
  attr_accessor :total, :price, :items, :discount
  
  def initialize(discount = 0)
    @total= 0 
    @discount= discount
    @items= []
  end
  
  def add_item(title, price, quantity=1)
    #binding.pry
    self.total += price*quantity
    3.times do @items << title
    
  
    end
    
    def apply_discount
    if @discount > 0 
      @total -= (@total *(@discount.to_f/100))
      return "After the discount, the total comes to $800."
     else
       return "There is no discount to apply."
     end
   end
   
     
     def void_last_transaction
  end

end