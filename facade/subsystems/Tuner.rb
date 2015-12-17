class Tuner
  def initialize(description, amplifier)
    @description, @amplifier = description, amplifier)
  end

  def on
    "#{@description} is on"
  end

  def off
    "#{@description} is off"
  end

  def set_frequency(frequency)
    "#{@description} setting frequency to #{frequency}"
    @frequency = frequency
  end

  def set_am
    "#{@description} setting AM mode"
  end

  def set_fm
    "#{@description} setting FM mode"
  end

  private
  attr_reader :frequency
end
