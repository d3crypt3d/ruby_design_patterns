class Duck
  attr_writer :flyable, :quackable

  def initialize(flyable, quackable)
    @flyable = flyable
    @quackable = quackable
  end

  def display
    puts "#{swim}\n#{perform_fly}\n#{perform_quack}"       
  end

  private

  # All ducks can swim
  def swim
    'I\'m swimming.'
  end

  def perform_fly
    @flyable.call 
  end

  def perform_quack
    @quackable.call
  end
end
