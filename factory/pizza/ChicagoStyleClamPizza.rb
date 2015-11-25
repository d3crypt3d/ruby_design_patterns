require_relative 'abstract_classes/ChicagoStylePizza'

class ChicagoStyleClamPizza < ChicagoStylePizza
    def initialize
        super 'Chicago Style Deep Dish Clam Pizza'
        @toppings << 'Frozen Clams from Chesapeake Bay'
    end
end
