require_relative 'Command'
require_relative '../receivers/TV'

class TVOnCommand < Command
  def initialize
    super %w[on set_input_channel].map {|sym| TV.method(sym)},
          'Turns the TV on'
  end
end

class TVOffCommand < Command
  def initialize
    super TV.method(:off),
          'Turns the TV off'
  end
end
