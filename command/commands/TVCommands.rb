require_relative 'Command'
require_relative '../receivers/TV'

class TVOnCommand < Command
  def initialize(tv)
    @tv = tv
    super 'Turns the TV on'
  end

  def execute
    @tv.on
    @tv.set_input_channel
  end
end

class TVOffCommand < Command
  def initialize(tv)
    @tv = tv
    super 'Turns the TV off'
  end

  def execute
    @tv.off
  end
end
