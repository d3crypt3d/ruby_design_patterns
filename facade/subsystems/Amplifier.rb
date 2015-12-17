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
    subsystem= @tuner
    "#{@description} setting tuner to #{@tuner.description}"
  end

  def set_dvd
    subsystem= @dvd
    "#{@description} setting DVD player to #{@dvd.description}"
  end

  def set_cd
    subsystem= @cd
    "#{@description} setting CD player to #{@cd.description}"
  end

  private
  attr_accessor :subsystem
end
