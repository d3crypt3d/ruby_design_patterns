require_relative 'pizza_factory'
require_relative 'Pizza'

class NYFactory < PizzaFactory

    private
    def create_pizza(**options)

        options[:name] = 'NY Style '
        options[:dough] = self.dough[:thin]
        options[:sauce] = self.sauce[:marinara]
        options[:toppings] = []

        case options[:type]    
        when :clam
            options[:name] += 'Clam Pizza'
            options[:toppings] << self.clams[:fresh]
        when :veggie
            options[:name] += 'Veggie Pizza'
            options[:toppings] += self.veggies.values_at(:garlic,:onion,:mushrooms,:redpepper)
        when :cheese
            options[:name] += 'Sauce and Cheese Pizza'
            options[:toppings] << self.cheese[:reggiano]
        end
        # we are passing the same argument with a data is kept inside
        super
    end

    def cut
        super + " diagonal slices\n"
    end
end
