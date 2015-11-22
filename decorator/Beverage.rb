# Classes can be used as namespaces, just as modules can. Classes cannot, however,
# be used as mixins.
class Beverage
    attr_reader :description, :cost

    def fullDescription
        "#{self.description} $#{self.cost.round(2)}"
    end
end

{'Espresso' => 1.99, 'HouseBlend' => 0.89, 'DarkRoast' => 0.99, 'Decaf' => 1.05}.each do |klass_name, cost|
    klass = Class.new(Beverage) do
        # In Ruby, an initialize method
        # partially does what "constructor"
        # does in other OO languages
        define_method(:initialize) do
            @description = klass_name
            @cost = cost
        end
    end

    Object.const_set(klass_name, klass)
end

