require_relative 'Subsystem'

class DvdPlayer
  def initialize(description, track, amplifier)
    @current_track, @amplifier = track, amplifier
    super description
  end

  def on
    "#{@description} is on"
  end

  def off
    "#{@description} is off"
  end 

  def eject
    @movie = nil
    "#{@description} eject"
  end

  def play(movie)
    @movie = nil
    @current_track = 0
    "#{@description} is playing #{movie}"
  end

  def play(track)
    if @movie.nil?
      "#{@description} can't play track #{track} no dvd inserted"
    else
      @current_track = track
      "#{@description} is playing track #{@current_track} of \"#{@movie}\""
    end
  end

  def stop
    @current_track = 0
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
