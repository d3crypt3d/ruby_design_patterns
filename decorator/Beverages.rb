require_relative 'Beverage'

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
