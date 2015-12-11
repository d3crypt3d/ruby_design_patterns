# Singleton pattern can also be implemented using class methods.
# Using class methods we are sure that we have a single instance.

module ChocolateBoiler

    @empty = true
    @boiled = false

    def self.fill
      if is_empty?
          @empty = false
          @boiled = false
          'filling the boiler with a milk/chocolate mixture...'
      end
    end

    def self.boil
      if !is_empty? && !is_boiled? 
          @boiled = true
          'bring the contents to a boil'
      end
    end

    def self.drain
        if !is_empty? && is_boiled?
            @empty = true
            'drain the boiled milk and chocolate...'
        end 
    end

    def self.is_empty?
        @empty
    end

    def self.is_boiled?
        @boiled
    end
end

