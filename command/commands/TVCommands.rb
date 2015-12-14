require_relative 'Command'
require_relative '../receivers/TV'

class TVOnCommand < Command
  def initialize
    super %w[on set_input_channel], TV,
          'Turns the TV on'
  end
end

class TVOffCommand < Command
  def initialize
    super [:off], TV,
          'Turns the TV off'
  end
end
