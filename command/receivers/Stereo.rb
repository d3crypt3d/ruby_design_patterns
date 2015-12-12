class Stereo
  def initialize
    @volume = 5
  end

  def on
    'stereo is on'
  end

  def off
    'stereo is off'
  end

  def set_CD
    'stereo is set for CD input'
  end

  def set_DVD
    'stereo is set for DVD input'
  end

  def set_radio
    'stereo is set for radio'
  end

  def set_volume(volume)
    raise 'must be within 1..11 range' unless (1..11).include? volume
    @volume = volume
    "Stereo volume is set to #{volume}"
  end
end
