# Classes can be used as namespaces, just as modules can. Classes cannot be used as mixins, however.
class Beverage
    attr_reader :description, :getSize 

    def initialize
        @size_table = {:short => 0.5, :tall => 1, :grande => 1.5, :venti => 2}
        @getSize = :tall
    end

    def setSize(size)
        raise 'should be either of :short, :tall, :grande or :venti' unless 
            @size_table.has_key?(size)
        @getSize = size
    end

    def fullDescription
        "#{self.description} $#{totalPrice}"
    end

    private
    def getCost
        @cost
    end

    def totalPrice
        (getCost * @size_table[@getSize]).round(2) 
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
            super()
        end
    end

    Object.const_set(klass_name, klass)
end

