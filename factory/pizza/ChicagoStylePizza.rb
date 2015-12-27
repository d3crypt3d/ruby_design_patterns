require_relative 'Pizza'

class ChicagoStylePizza < Pizza
  def initialize(name,*toppings)
    super
    @dough, @sauce = 'Extra Thick Crust Dough', 'Plum Tomato Sauce'
    @toppings << 'Shredded Mozarella Cheese'
  end

  def cut
    super 'square'
  end

  private_class_method :new
  def self.clam
    new('Chicago Style Deep Dish Clam Pizza', 'Frozen Clams from Chesapeake Bay')
  end 

  def self.veggie
    new('Chicago Style Deep Dish Veggie Pizza', 
        'Black Olives', 'Spinach', 'Eggplant')
  end
end
