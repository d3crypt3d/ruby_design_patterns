require_relative 'ingridients/ingridients'

class PizzaFactory
    include Ingridients

    def orderPizza(*args)
        result = args.inject([]) do |memo, key|
            [:pepperoni, :clam, :cheese, :veggie].include?(key) ? memo << create_pizza(key) : nil
        end
        result.length == 1 ? result.first : result
    end

    private
    def create_pizza(pizza_name, pizza_dough, pizza_sauce, toppings)

        puts  "Preparing #{pizza_name}\n",
                    "Tossing dough...\n", 
                    "Adding sauce...\n",
                    "Adding toppings: #{toppings.join(', ')}",
                    bake,
                    cut,
                    box,
                    ''    

        Pizza.new(pizza_name, pizza_dough, pizza_sauce, toppings)
    end

    def bake
        "Bake for 25 minutes at 350\n"
    end

    def cut
        "Cutting the pizza into" 
    end

    def box
        "Place pizza in official PizzaStore box\n"
    end
end
