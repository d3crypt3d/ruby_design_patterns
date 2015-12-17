require_relative 'Subsystem'

class Projector < Subsystem
  def on
    "#{@description} is on"
  end

  def off
    "#{@description} is off"
  end

  def wide_screen_mode
    "#{@description} is in widescreen mode (16x9 aspect ratio)"
  end

  def tv_mode
    "#{@description} is in tv mode (4x3 aspect ratio)"
  end
end
