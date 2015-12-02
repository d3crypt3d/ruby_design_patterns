require_relative 'pizza_factory'
require_relative 'Pizza'

class ChicagoFactory < PizzaFactory

    private
    def create_pizza(type)
        pizza_name = 'Chicago Style '
        pizza_dough = self.dough[:thick]
        pizza_sauce = self.sauce[:plum]
        toppings = []

        case type
        when :pepperoni
            pizza_name += 'Pepperoni Pizza'
            toppings.push 'Sliced pepperoni'    
        when :clam
            pizza_name += 'Clam Pizza'
            toppings << self.clams[:frozen]
        when :veggie
            pizza_name += 'Veggie Pizza'
            toppings += self.veggies.values_at(:blackolives,:spinach,:eggplant)
        when :cheese
            pizza_name += 'Sauce and Cheese Pizza'
            toppings << self.cheese[:mozzarella]
        end

        super(pizza_name, pizza_dough, pizza_sauce, toppings)
    end
    def cut
        super + " square slices\n"
    end
end
