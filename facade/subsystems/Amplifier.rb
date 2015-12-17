require_relative 'Subsystem'

class Amplifier < Subsystem

  def initialize(description,tuner,dvd,cd)
    @tuner, @dvd, @cd = tuner, dvd, cd
    super description
  end

  def on
    "#{@description} is on"
  end

  def off
    "#{@description} is off"
  end

  def set_stereo_sound
    "#{@description} stereo mode is on"
  end

  def set_surround_sound
    "#{@description} surround sound is on (5 speakers, 1 subwoofer)"
  end

  def set_volume(level)
    "#{@description} setting volume to #{level}"
  end

  def set_tuner
    "#{@description} setting tuner to #{@tuner}"
    subsystem= @tuner
  end

  def set_dvd
    "#{@description} setting DVD player to #{@dvd}"
    subsystem= @dvd
  end

  def set_cd
    "#{@description} setting CD player to #{@cd}"
    subsystem= @cd
  end

  private
  attr_accessor :subsystem
end
