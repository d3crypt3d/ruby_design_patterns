require_relative 'pizza_factory'
require_relative 'Pizza'

class NYFactory < PizzaFactory

    private
    def create_pizza(type)
        pizza_name = 'NY Style '
        pizza_dough = self.dough[:thin]
        pizza_sauce = self.sauce[:marinara]
        toppings = []

        case type
        when :pepperoni
            pizza_name += 'Pepperoni Pizza'
            toppings.push 'Sliced pepperoni'    
        when :clam
            pizza_name += 'Clam Pizza'
            toppings << self.clams[:fresh]
        when :veggie
            pizza_name += 'Veggie Pizza'
            toppings += self.veggies.values_at(:garlic,:onion,:mushrooms,:redpepper)
        when :cheese
            pizza_name += 'Sauce and Cheese Pizza'
            toppings << self.cheese[:reggiano]
        end

        super(pizza_name, pizza_dough, pizza_sauce, toppings)
    end

    def cut
        super + " diagonal slices\n"
    end
end
