require_relative 'Command'
require_relative '../receivers/Stereo'

class StereoOnWithCDCommand
  def initialize(stereo)
    @stereo = stereo
    super 'Turns the stereo on, sets for CD input and sets volume'
  end

  def execute
    @stereo.on  
    @stereo.set_cd
    @stereo.set_volume(11)
  end
end

class StereoOffCommand
  def initialize
    super 'Turns the stereo off'
  end

  def execute
    @stereo.off  
  end
end
