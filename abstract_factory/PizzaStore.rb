require_relative 'pizza_factories/NYFactory'
require_relative 'pizza_factories/ChicagoFactory'

# PizzaStore is going to be our abstract factory
# it produces concrete factories
class PizzaStore
    # do we really need instance methods? :)
    def self.factory(type)
        case type
        when :ny then NYFactory.new
        when :chicago then ChicagoFactory.new
        else nil
        end
    end
end

