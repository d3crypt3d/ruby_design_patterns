require_relative 'Subsystem'

class PopcornPopper < Subsystem
  def on
    "#{@description} is on"
  end

  def off
    "#{@description} is off"
  end

  def pop
    "#{@description} popping popcorn!"
  end
end
