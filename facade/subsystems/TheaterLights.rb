class TheaterLights
  attr_reader :description

  def initialize(description)
    @description = description
  end

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
