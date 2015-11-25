class Pizza
    attr_reader :name, :dough, :sauce, :toppings

    def initialize(name,toppings=[])
        #raise 'toppings must be an array' unless toppings.is_a? Array
        @name, @toppings = name, toppings
    end

    def prepare
        "Preparing #{@name}\n" +
        "Tossing dough...\n" +
        "Adding sauce...\n" +
        "Adding toppings: #{@toppings.join(', ')}"
    end

    def bake
        'Bake for 25 minutes at 350'
    end

    def cut
        'Cutting the pizza into diagonal slices' 
    end

    def box
        'Place pizza in official PizzaStore box'
    end

    def fullDescription
        "---- #{@name} ----\n" + 
        "#{@dough}\n" + 
        "#{@sauce}\n" +
        @toppings.join("\n") 
    end
end

