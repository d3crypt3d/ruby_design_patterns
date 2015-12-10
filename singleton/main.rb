# The Ruby standart library includes a Singleton module
require 'singleton'

class ChocolateBoiler
    include Singleton 

    def initialize
        @empty = true
        @boiled = false
    end

    def fill
        if is_empty?
            @empty = false
            @boiled = false
            'filling the boiler with a milk/chocolate mixture...'
        end
    end

    def boil
      if !is_empty? && !is_boiled? 
          @boiled = true
          'bring the contents to a boil'
      end
    end

    def drain
        if !is_empty? && is_boiled?
            @empty = true
            'drain the boiled milk and chocolate...'
        end 
    end

    def is_empty?
        @empty
    end

    def is_boiled?
        @boiled
    end
end

client1, client2 = ChocolateBoiler.instance, ChocolateBoiler.instance
puts "client1 == client2 --> #{client1 == client2}",    # true
     "client1.is_empty? --> #{client1.is_empty?}",      # true
     "client1.fill --> #{client1.fill}",                # 'filling the boiler with a milk/chocolate mixture...'
     "client2.is_empty? --> #{client2.is_empty?}",      # false
     "client2.boil --> #{client2.boil}",                # 'bring the contents to a boil'
     "client1.is_boiled? --> #{client1.is_boiled?}",    # true
     "client1.drain --> #{client1.drain}",              # 'drain the boiled milk and chocolate...'      
     "client1.is_empty? --> #{client1.is_empty?}",      # true
     "client2.is_empty? --> #{client2.is_empty?}"       # true
