# Using modules is an agile way to implement a decoration. The normal way to mix in
# a module is with the Module.include method. Another way is with Object.extend.
# The difference is the second way makes the instance methods of the specified mod-
# ule or modules into singleton methods of the receiver object. (And if the receiver
# object is a Class instance, then the methods of the receiver become class methods
# of that class.)
 
require_relative 'Beverage'
require_relative 'modules' 
=begin
Espresso.include(Mocha)
Espresso.ancestors         # [Espresso, Mocha, Beverage, Object, Kernel, BasicObject]  
DarkRoast.extend(Whip)
DarkRoast.ancestors        # [DarkRoast, Beverage, Object, Kernel, BasicObject] 
DarkRoast.singleton_class.ancestors # [#<Class:DarkRoast>, Whip, #<Class:Beverage>, #<Class:Object>, #<Class:BasicObject>, Class, Module, Object, Kernel, BasicObject] 
=end

# We are going to use the extend method, because we need to decorate objects themselves
espresso = Espresso.new
p espresso.fullDescription      # "Espresso $1.99"
espresso.extend(Mocha)
p espresso.fullDescription      # "Espresso, Mocha $3.09"
espresso.extend(Soy)
p espresso.fullDescription      # "Espresso, Mocha, Soy $3.24"

decaf = Decaf.new
p decaf.fullDescription         # "Decaf $1.05" 
decaf.extend(Chocolate)
p decaf.fullDescription         # "Decaf, Chocolate $1.25" 
decaf.extend(Whip)
p decaf.fullDescription         # "Decaf, Chocolate, Whip $1.35" 

darkroast = DarkRoast.new
p darkroast.fullDescription     # "DarkRoast $0.99"
p darkroast.getSize             # :tall
darkroast.setSize(:grande)
p darkroast.fullDescription     # "DarkRoast $1.49"
p darkroast.extend(Chocolate)
p darkroast.fullDescription     # "DarkRoast, Chocolate $1.79"
darkroast.setSize(:short)
p darkroast.fullDescription     # "DarkRoast, Chocolate $0.6"
