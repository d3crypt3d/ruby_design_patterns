require_relative 'Subsystem'

class TheaterLights < Subsystem
  def on
    "#{@description} is on"
  end

  def off
    "#{@description} is off"
  end

  def dim(level)
    "#{@description} dimming to #{level} %"
  end
end
