require_relative 'Subsystem'

class CdPlayer < Subsystem
  def on
    "#{@description} is on"
  end

  def off
    "#{@description} is off"
  end

  def eject
    @title = nil
    "#{@description} eject"
  end

  def play(track)
    @current_track = track
    if track
      "#{@description} is playing track #{track} of \"#{@urrent_track}\""
    else
      "#{@description} can't play track #{track} no cd inserted"
    end
  end

  def stop
    "#{@description} stopped"
  end

  def pause
    "#{@description} paused #{@title}"
  end

  private
  attr_accessor :current_track
end
