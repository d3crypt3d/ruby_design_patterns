require_relative 'abstract_classes/ChicagoStylePizza'

class ChicagoStyleVeggiePizza < ChicagoStylePizza
    def initialize
        super 'Chicago Style Deep Dish Veggie Pizza'
        @toppings << 'Black Olives'
        @toppings << 'Spinach'
        @toppings << 'Eggplant'
    end
end
