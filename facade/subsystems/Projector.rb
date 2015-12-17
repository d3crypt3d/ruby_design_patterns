class Projector
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

  def wide_screen_mode
    "#{@description} is in widescreen mode (16x9 aspect ratio)"
  end

  def tv_mode
    "#{@description} is in tv mode (4x3 aspect ratio)"
  end
end
