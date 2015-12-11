require_relative 'chocolate_boiler'

puts "ChocolateBoiler.is_empty? --> #{ChocolateBoiler.is_empty?}",      # true
     "ChocolateBoiler.fill --> #{ChocolateBoiler.fill}",                # filling the boiler with a milk/chocolate mixture...
     "ChocolateBoiler.is_empty? --> #{ChocolateBoiler.is_empty?}",      # false   
     "ChocolateBoiler.boil --> #{ChocolateBoiler.boil}",                # bring the contents to a boil
     "ChocolateBoiler.is_boiled? --> #{ChocolateBoiler.is_boiled?}",    # true
     "ChocolateBoiler.drain --> #{ChocolateBoiler.drain}",              # drain the boiled milk and chocolate...
     "ChocolateBoiler.is_empty? --> #{ChocolateBoiler.is_empty?}",      # true    
     "ChocolateBoiler.is_boiled? --> #{ChocolateBoiler.is_boiled?}"     # true
