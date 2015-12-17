class Amplifier
  attr_reader :description

  def initialize(description,tuner,dvd,cd)
    @description, @tuner, @dvd, @cd = description, tuner, dvd, cd
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
  end

  def set_dvd
    "#{@description} setting DVD player to #{@dvd}"
  end

  def set_cd
    "#{@description} setting CD player to #{@cd}"
  end
end
