require_relative 'Command'
require_relative '../receivers/Hottub'

class HottubOnCommand < Command
  def initialize(hottub)
    @hottub = hottub
    super 'Turns the hottub on, heats and bubbles'
  end

  def execute
    @hottub.on
    @hottub.heat
    @hottub.bubbles_on
  end
end

class HottubOffCommand < Command
  def initialize(hottub)
    @hottub = hottub
    super 'Stops bubbling, cools the hottub and turns it off'
  end

  def execute
    @hottub.bubbles_off
    @hottub.coll
    @hottub.off
  end
end
