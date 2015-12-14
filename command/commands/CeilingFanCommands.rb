require_relative 'Command'
require_relative '../receivers/CeilingFan'

# Implement fan commands similar to light switching ones
class CeilingFanOnCommand < Command
  def initialize
    super CeilingFan.method(:high),
          'Turns the ceiling fan on, sets the high speed'
  end
end

class CeilingFanOffCommand < Command
  def initialize
    super CeilingFan.method(:off),
          'Turns the ceiling fan off'
  end
end
