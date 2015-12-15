require_relative '../ingridients/Ingridients'

class PizzaFactory
  include Ingridients

  def order_pizza(*args)
    args.map do |key|
      create_pizza(type: key) if [:pepperoni, :clam, :cheese, :veggie].include?(key) 
    end
  end

  private
  def create_pizza(**options)
    # All pepperoni pizzas share name and toppings, though
    case options[:type] 
    when :pepperoni
      options[:name] += 'Pepperoni Pizza'
      options[:toppings].push 'Sliced pepperoni'
    end

    puts "Preparing #{options[:name]}",
          'Tossing dough...', 
          'Adding sauce...',
          "Adding toppings: #{options[:toppings].join(', ')}",
          bake,
          cut,
          box,
          ''  

    Pizza.new options[:name], options[:dough],
              options[:sauce], options[:toppings]
  end

  def bake
    'Bake for 25 minutes at 350'
  end

  def cut
    'Cutting the pizza into' 
  end

  def box
    'Place pizza in official PizzaStore box'
  end
end
