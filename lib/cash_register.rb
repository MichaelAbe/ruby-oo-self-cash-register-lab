class CashRegister
        attr_accessor :discount, :total, :last_transaction, :title, :items
    
        def initialize(discount = 0)
            @total = 0
            @discount = discount
            @items = []
            @last_transaction = []
        end

        def add_item(title, price, quantity = 1)
            @total = total + price * quantity
            @last_transaction << price * quantity
            quantity.times do @items << title
            
            end
            @total
        
        end

        def apply_discount         
            if discount != 0
                @total = total - discount * 10
                "After the discount, the total comes to $#{@total}."
            else
                "There is no discount to apply."     
        end
        end

        def items
            @items
        end

        def void_last_transaction
            if @last_transaction == []
                @total = 0
            else
                @total = @total - @last_transaction.pop
            end
        end
end

