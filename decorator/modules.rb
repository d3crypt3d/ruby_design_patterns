# Like a class, a module is a named group of methods, constants, and class variables.
# A module cannot be instantiated, and it cannot be subclassed, however. Modules
# stand alone; there is no “module hierarchy” of inheritance. Using a module as a 
# mixin is a powerful feature. If a module defines instance methods instead of the
# class methods, those instance methods can be mixed in to other classes. 

{'Mocha' => 1.10, 'Chocolate' => 0.20, 'Soy' => 0.15, 'Whip' => 0.10}.each do |condiment, cost|
    mod = Module.new do
        define_method(:description) do
            super() + ", #{condiment}"
        end

        define_method(:getCost) do
            super() + cost
        end
    end

    Object.const_set(condiment, mod)
end

