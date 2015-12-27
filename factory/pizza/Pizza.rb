class Pizza
  attr_reader :name, :dough, :sauce, :toppings

  def initialize(name,*toppings)
    #raise 'toppings must be an array' unless toppings.is_a? Array
    @name, @toppings = name, toppings
  end

  def prepare
    ["Preparing #{@name}", 'Tossing dough...', 
     'Adding sauce...', "Adding toppings: #{@toppings.join(', ')}"]
  end

  def bake
    'Bake for 25 minutes at 350'
  end

  def cut(style)
    "Cutting the pizza into #{style} slices" 
  end

  def box
    'Place pizza in official PizzaStore box'
  end

  def full_description
    ["---- #{@name} ----", @dough, 
     @sauce, @toppings.join("\n")] 
  end
end

