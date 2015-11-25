require_relative 'Pizza'

class ChicagoStylePizza < Pizza
    def initialize(name)
        super
        @dough, @sauce = 'Extra Thick Crust Dough', 'Plum Tomato Sauce'
        @toppings << 'Shredded Mozarella Cheese'
    end
    def cut
        'Cutting the pizza into square slices'
    end
end
