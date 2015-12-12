require_relative 'Command'
require_relative '../receivers/CeilingFan'

# Implement fan commands similar to light switching ones
class CeilingFanOnCommand < Command
  def initialize
    @ceiling_fan = CeilingFan.method(:high)
    super 'Turns the ceiling fan on, sets the high speed'
  end
  
  def execute
    @ceiling_fan.call
  end
end

class CeilingFanOffCommand < Command
  def initialize
    @ceiling_fan = CeilingFan.method(:off)
    super 'Turns the ceiling fan off'
  end
  
  def execute
    @ceiling_fan.call
  end
end
