Dir["pizza/*.rb"].each {|f| require_relative f}

class PizzaStore
  def order_pizza(pizza)
    pizza_to_do = case(pizza)
                    when :chicago_clam then ChicagoStylePizza.clam
                    when :chicago_veggie then ChicagoStylePizza.veggie
                    when :ny_pepperoni then NYStylePizza.pepperoni
                    when :ny_clam then NYStylePizza.clam
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
