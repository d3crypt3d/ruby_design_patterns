class HomeTheaterFacade
  def initialize(amp, tuner, dvd, cd,
                 projector, lights, screen, popper)
    @amp, @tuner, @dvd, @cd = amp, tuner, dvd, cd
    @projector, @lights, @screen, @popper = projector, lights, screen, popper
  end

  def watch_movie(movie)
    ["Get Ready to watch a #{movie} movie...", popper.on,
     popper.pop, lights.dim(10), screen.down, projector.on,
     projector.wide_screen_mod, amp.on, amp.set_dvd(dvd),
     amp.set_surround_sound, amp.set_volume, dvd.on, dvd.play(movie)]
  end

  def end_movie
    ['Shutting movie theater, down...', popper.off, lights.on,
     screen.up, projector.off, amp.off, dvd.stop, dvd.eject, dvd.off]
  end

  def listen_to_cd(title)
    ['Get Ready for an audiopile experience...', lights.on, amp.on,
     amp.set_volume(5), amp.set_cd(cd), amp.set_stereo_sound,
     cd.on, cd.play(title)]
  end

  def end_cd
    ['Shutting down CD...', amp.off, amp.set_cd(cd), cd.eject, cd.off]
  end

  def listen_to_radio(frequency)
    ['Tuning in the airwaves...', tuner.on, tuner.set_frequency(frequency),
     amp.on, amp.set_volume(5), amp.set_tuner(@tuner)]
  end

  def end_radio
    ['Shutting down the tuner...', tuner.off, amp.off]
  end
end
