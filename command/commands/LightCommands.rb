require_relative 'Command'
require_relative '../receivers/Light'

class LightOnCommand < Command
  def initialize
    @command = Light.method(:on)
    super 'Turns the light on in the living room'
  end
  
  # Turning the light assumes performing of the single command per
  # an action, lets assing it with a proc.
  def execute
    @command.call
  end
end

class LightOffCommand < Command
  def initialize
    @command = Light.method(:off)
    super 'Turns the light off in the living room'
  end
  
  # Turning the light assumes performing of the single command per
  # an action, lets assing it with a proc.
  def execute
    @command.call
  end
end
