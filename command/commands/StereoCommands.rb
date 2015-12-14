require_relative 'Command'
require_relative '../receivers/Stereo'

class StereoOnWithCDCommand < Command
  def initialize
    super %w[on set_cd set_volume], Stereo, 
          'Turns the stereo on, sets for CD input and sets the volume'
  end
end

class StereoOffCommand < Command
  def initialize
    super [:off], Stereo,
          'Turns the stereo off'
  end
end
