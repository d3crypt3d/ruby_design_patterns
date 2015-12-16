require_relative 'Duck'

class RedHeadDuck < Duck
  def quack
    super 'Quack...'
  end
end

class MallardDuck < Duck
  def quack
    super 'Quack... Quack...'
  end
end
