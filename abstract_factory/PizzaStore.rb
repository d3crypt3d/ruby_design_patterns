require_relative 'NYFactory'
require_relative 'NYFactory'
require_relative 'ChicagoFactory'

class PizzaStore
    def self.factory(type)
        case type
        when :ny then NYFactory.new
        when :chicago then ChicagoFactory.new
        else nil
        end
    end
end

