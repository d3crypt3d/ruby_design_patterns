require_relative 'pizza_factory'
require_relative 'Pizza'

class ChicagoFactory < PizzaFactory

    private
    def create_pizza(**options)
        options[:name] = 'Chicago Style '
        options[:dough] = self.dough[:thick]
        options[:sauce] = self.sauce[:plum]
        options[:toppings] = []

        case options[:type]
        when :clam
            options[:name] += 'Clam Pizza'
            options[:toppings] << self.clams[:frozen]
        when :veggie
            options[:name] += 'Veggie Pizza'
            options[:toppings] += self.veggies.values_at(:blackolives,:spinach,:eggplant)
        when :cheese
            options[:name]  += 'Sauce and Cheese Pizza'
            options[:toppings] << self.cheese[:mozzarella]
        end

        # we are passing the same argument with a data kept
        super
    end

    def cut
        super + " square slices\n"
    end
end
