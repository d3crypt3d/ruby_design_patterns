require_relative 'Subsystem'

class DvdPlayer < Subsystem
  def on
    "#{@description} is on"
  end

  def off
    "#{@description} is off"
  end 

  def eject
    "#{@description} eject"
  end

  def play(movie)
    @movie = movie
    "#{@description} is playing \"#{@movie}\""
  end

  def stop
    "#{@description} stopped playing \"#{@movie}\""
  end

  def pause
    "#{@description} paused playing \"#{@movie}\""
  end

  def set_two_stereo_sound
    "#{@description} set two channel audio"
  end

  def set_surround_audio
    "#{@description} set surround audio"
  end
end
