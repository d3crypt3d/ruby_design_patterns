require_relative 'abstract_classes/Pizza'

class NYStylePepperoniPizza < Pizza
    def initialize
        super 'NY Style Pepperoni Pizza'
        @toppings << 'Sliced Pepperoni'
        @toppings << 'Garlic'
        @toppings << 'Onion'
        @toppings << 'Mushrooms'
        @toppings << 'Red Pepper'
    end
end
