module Stereo
  @volume = 5

  def self.on
    'stereo is on'
  end

  def self.off
    'stereo is off'
  end

  def self.set_cd
    'stereo is set for CD input'
  end

  def self.set_dvd
    'stereo is set for DVD input'
  end

  def self.set_radio
    'stereo is set for radio'
  end

  def self.set_volume
    #raise 'must be within 1..11 range' unless (1..11).include? volume
    @volume = 11
    "Stereo volume is set to 11"
  end
end
