class CashRegister
    attr_accessor :total, :discount
    
    
    def initialize(discount = nil)
        self.total = 0
        self.discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        @price = price
        self.total += price*quantity
        quantity.times do
            @items << title
        end
        @last_transaction = price * quantity
    end

    def apply_discount
        if @discount != nil
            self.total = @total - @total * discount / 100.00
            return "After the discount, the total comes to $#{self.total.to_i}."
        else
            return "There is no discount to apply."
        end
    end

    def items
        @items

    end
    
    def void_last_transaction
        self.total = self.total - @last_transaction
    end

end
