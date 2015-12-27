require_relative 'Pizza'

class NYStylePizza < Pizza
  def initialize(name,*toppings)
    super
    @dough, @sauce = 'Thin Crust Dough', 'Marinara Sauce'
    @toppings << 'Grated Reggiano Cheese'
  end

  def cut
    super 'diagonal'
  end

  private_class_method :new
  def self.clam
    new('NY Style Clam Pizza', 'Fresh Clams from Long Island Sound')
  end

  def self.pepperoni
    new('NY Style Pepperoni Pizza',
        'Sliced Pepperoni',
        'Garlic',
        'Onion',
        'Mushrooms',
        'Red Pepper')
  end
end
        
