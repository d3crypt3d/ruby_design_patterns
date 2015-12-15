require_relative 'Beverages'
require_relative 'Condiments'

# Using modules is an agile way to implement a decoration. The normal way to mix in
# a module - using the Module.include() method. Another way - applying the Object.extend()
# The difference is the second way turns the instance methods of the specified mod-
# ule (or modules) into singleton methods of the receiver object. (And if the receiver
# object is a Class instance, then the methods of the receiver become class methods
# of that class.)
#
# Espresso.include(Mocha)
# Espresso.ancestors         # [Espresso, Mocha, Beverage, Object, Kernel, BasicObject]  
# DarkRoast.extend(Whip)
# DarkRoast.ancestors        # [DarkRoast, Beverage, Object, Kernel, BasicObject] 
# DarkRoast.singleton_class.ancestors # [#<Class:DarkRoast>, Whip, #<Class:Beverage>, #<Class:Object>, #<Class:BasicObject>, Class, Module, Object, Kernel, BasicObject] 

# We are going to use the extend method, because we need to decorate objects themselves
espresso = Espresso.new
puts espresso.full_description      # "Espresso $1.99"

espresso.extend(Mocha)
puts espresso.full_description      # "Espresso, Mocha $3.09"

espresso.extend(Soy)
puts espresso.full_description      # "Espresso, Mocha, Soy $3.24"

decaf = Decaf.new
puts decaf.full_description         # "Decaf $1.05" 

decaf.extend(Chocolate)
puts decaf.full_description         # "Decaf, Chocolate $1.25" 

decaf.extend(Whip)
puts decaf.full_description         # "Decaf, Chocolate, Whip $1.35" 

darkroast = DarkRoast.new
puts darkroast.full_description,    # "DarkRoast $0.99"
     darkroast.size                 # :tall

darkroast.set_size(:grande)
puts darkroast.full_description     # "DarkRoast $1.49"

darkroast.extend(Chocolate)
puts darkroast.full_description     # "DarkRoast, Chocolate $1.79"

darkroast.set_size(:short)
puts darkroast.full_description,    # "DarkRoast, Chocolate $0.6"
     darkroast.set_size(:unknown)   # RuntimeError: should be either of :short, :tall, :grande or :venti
