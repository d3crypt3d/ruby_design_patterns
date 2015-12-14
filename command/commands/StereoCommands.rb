require_relative 'Command'
require_relative '../receivers/Stereo'

class StereoOnWithCDCommand < Command
  def initialize
    super %w[on set_cd set_volume].map {|sym| Stereo.method(sym)}, 
          'Turns the stereo on, sets for CD input and sets the volume'
  end
end

class StereoOffCommand < Command
  def initialize
    super Stereo.method(:off),
          'Turns the stereo off'
  end
end
