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

# Alternate approache with a class - single instance approach:
#
# class ChocolateBoiler
#   private_class_method :new
#
#   @@instance = ChocolateBoiler.new
#
#   def self.instance
#       @@instance
#   end
#
#   # the rest of the code remains the same
#
# end
