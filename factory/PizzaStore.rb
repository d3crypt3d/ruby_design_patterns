Dir["pizza/*.rb"].each {|f| require_relative f}

class PizzaStore
    def orderPizza(pizza)
        pizzaToDo = case(pizza)
            when :chicago_clam then ChicagoStyleClamPizza.new
            when :ny_pepperoni then NYStylePepperoniPizza.new
            when :ny_clam then NYStyleClamPizza.new
            when :chicago_veggie then ChicagoStyleVeggiePizza.new
            else nil
        end

        createPizza(pizzaToDo)
        pizzaToDo
    end

    private
    def createPizza(pizza)
       puts pizza.prepare,
            pizza.bake,
            pizza.cut,
            pizza.box,
            ''
    end
end
