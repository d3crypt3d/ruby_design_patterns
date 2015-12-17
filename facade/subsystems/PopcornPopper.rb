require_relative 'Subsystem'

class PopcornPopper
  def initialize(description, dvd_player)
    @dvd_player = dvd_player
    super description
  end

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
