require_relative 'Beverage'
require_relative 'modules'

# Using modules is an agile way to implement a decoration. The normal way to mix in
# a module is with the Module.include method. Another way is with Object.extend.
# The difference is the second way makes the instance methods of the specified mod-
# ule or modules into singleton methods of the receiver object. (And if the receiver
# object is a Class instance, then the methods of the receiver become class methods
# of that class.) 
=begin
Espresso.include(Mocha)
Espresso.ancestors         # [Espresso, Mocha, Beverage, Object, Kernel, BasicObject]  
DarkRoast.extend(Whip)
DarkRoast.ancestors        # [DarkRoast, Beverage, Object, Kernel, BasicObject] 
DarkRoast.singleton_class.ancestors # [#<Class:DarkRoast>, Whip, #<Class:Beverage>, #<Class:Object>, #<Class:BasicObject>, Class, Module, Object, Kernel, BasicObject] 
=end

# We are going to use the extend method, because we need to decorate objects themselves
espresso = Espresso.new
p espresso.getDescription  # "Espresso $1.99"
espresso.extend(Mocha)
p espresso.getDescription  # "Espresso, Mocha $3.09"
espresso.extend(Soy)
p espresso.getDescription  # "Espresso, Mocha, Soy $3.24"

decaf = Decaf.new
p decaf.getDescription     # "Decaf $1.05" 
decaf.extend(Chocolate)
p decaf.getDescription     # "Decaf, Chocolate $1.25" 
decaf.extend(Whip)
p decaf.getDescription     # "Decaf, Chocolate, Whip $1.35" 
