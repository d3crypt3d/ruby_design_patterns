class Pizza
    attr_reader :name, :dough, :sauce, :toppings

    def initialize(name,dough,sauce,toppings=[])
        #raise 'toppings must be an array' unless toppings.is_a? Array
        @name, @dough, @sauce, @toppings = name, dough, sauce, toppings
    end

    def fullDescription
        puts "---- #{@name} ----\n",  
                "#{@dough}\n",  
                "#{@sauce}\n", 
                @toppings.join("\n") 
    end
end

