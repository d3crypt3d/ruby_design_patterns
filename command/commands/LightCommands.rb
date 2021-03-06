require_relative 'Command'
require_relative '../receivers/Light'

# Switching the light assumes performing of the single command per
# an action, lets assing it with a proc.
class LightOnCommand < Command
  def initialize
    super [:on], Light,
          'Turns the light on in the living room'
  end
end

class LightOffCommand < Command
  def initialize
    super [:off], Light,
          'Turns the light off in the living room'
  end
end
