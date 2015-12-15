Dir["pizza/*.rb"].each {|f| require_relative f}

class PizzaStore
  def order_pizza(pizza)
    pizza_to_do = case(pizza)
                    when :chicago_clam then ChicagoStyleClamPizza.new
                    when :ny_pepperoni then NYStylePepperoniPizza.new
                    when :ny_clam then NYStyleClamPizza.new
                    when :chicago_veggie then ChicagoStyleVeggiePizza.new
                    else nil
                  end

    create_pizza(pizza_to_do)
    pizza_to_do
  end

  private
  def create_pizza(pizza)
    puts pizza.prepare,
         pizza.bake,
         pizza.cut,
         pizza.box,
         ''
  end
end
