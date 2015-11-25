require_relative 'Pizza'

class NYStylePizza < Pizza
    def initialize(name)
        super
        @dough, @sauce = 'Thin Crust Dough', 'Marinara Sauce'
        @toppings << 'Grated Reggiano Cheese'
    end
end
        
