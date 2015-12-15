require_relative 'abstract_classes/NYStylePizza'

class NYStyleClamPizza < NYStylePizza
    def initialize
        super 'NY Style Clam Pizza'
        @toppings << 'Fresh Clams from Long Island Sound'
    end
end
