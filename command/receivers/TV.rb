class TV
  def initialize
    @channel = 2
  end

  def on
    'TV is on'
  end

  def off
    'TV is off'
  end

  def set_input_channel
    @channel = 3
    'Channel is set to VCR'
  end
end
