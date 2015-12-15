class Pizza
    attr_reader :name, :dough, :sauce, :toppings

    # all pizzas have a dough, a sauce and toppings
    def initialize(name,dough,sauce,toppings=[])
        @name, @dough, @sauce, @toppings = name, dough, sauce, toppings
    end

    def fullDescription
        puts "---- #{@name} ----\n",  
                "#{@dough}\n",  
                "#{@sauce}\n", 
                @toppings.join("\n") 
    end
end

