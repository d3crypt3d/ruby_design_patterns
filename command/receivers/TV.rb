module TV
  @channel = 2

  def self.on
    'TV is on'
  end

  def self.off
    'TV is off'
  end

  def self.set_input_channel
    @channel = 3
    'Channel is set to VCR'
  end
end
