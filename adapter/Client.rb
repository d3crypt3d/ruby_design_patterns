require_relative 'poultry/ducks'
require_relative 'poultry/Turkey'
require_relative 'TurkeyAdapter'

class Client
  def initialize(*ducks)
    @ducks = ducks
  end

  def run_test
    @ducks.each do |duck|
      puts "---Testing the #{duck.class} instance---",
           duck.quack,
           duck.fly,
           duck.swim,
           ''
    end
  end
end 
