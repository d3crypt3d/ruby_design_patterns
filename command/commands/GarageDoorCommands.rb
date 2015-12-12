require_relative 'Command'
require_relative '../receivers/GarageDoor'

class GarageDoorUpCommand < Command
  def initialize(door)
    @door = door
    super 'Opens the garage door and turns the light on'
  end

  def execute
    @door.up
    @door.light_on
  end
end

class GarageDoorDownCommand < Command
  def initialize(door)
    @door = door
    super 'Closes the garage door and turns the light off'
  end

  def execute
    @door.light_off
    @door.down
  end
end
