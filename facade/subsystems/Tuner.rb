require_relative 'Subsystem'

class Tuner < Subsystem
  def on
    "#{@description} is on"
  end

  def off
    "#{@description} is off"
  end

  def set_frequency(frequency)
    @frequency = frequency
    "#{@description} setting frequency to #{frequency} MHz"
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
