class Duck
  attr_writer :flyable, :quackable

  def initialize(flyable, quackable)
    @flyable = flyable
    @quackable = quackable
  end

  def display
    [swim, perform_fly, perform_quack]       
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
