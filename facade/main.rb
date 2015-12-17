require_relative 'HomeTheaterFacade'

tuner = Tuner.new('Top-O-Line AM/FM Tuner')
dvd_player = DvdPlayer.new('Top-O-Line DVD Player')
cd_player = CdPlayer.new('Top-O-Line CD Player')
projector = Projector.new('Top-O-Line Projector')
theater_lights = TheaterLights.new('Theater Ceiling Lights')
screen = Screen.new('Theater Screen')
popcorn_popper = PopcornPopper.new('Popcorn Popper')
amplifier = Amplifier.new('Top-O-Line Amplifier',tuner,dvd_player,cd_player) 

home_theater = HomeTheaterFacade.new(amplifier, tuner, dvd_player,
                                     cd_player, projector, theater_lights,
                                     screen, popcorn_popper)

# Just to simulate the client activity without the implementation of the client class itself
[home_theater.watch_movie('Raiders of the Lost Ark'), home_theater.end_movie,
  home_theater.listen_to_cd('Vivaldi: the Greates Hits'), home_theater.end_cd,
  home_theater.listen_to_radio(106.6), home_theater.end_radio].each {|i| puts i,''}
# Get Ready to watch a Raiders of the Lost Ark movie...
# Popcorn Popper is on
# Popcorn Popper popping popcorn!
# Theater Ceiling Lights dimming to 10 %
# Theater Screen going down
# Top-O-Line Projector is on
# Top-O-Line Projector is in widescreen mode (16x9 aspect ratio)
# Top-O-Line Amplifier is on
# Top-O-Line Amplifier setting DVD player to Top-O-Line DVD Player
# Top-O-Line Amplifier surround sound is on (5 speakers, 1 subwoofer)
# Top-O-Line Amplifier setting volume to 5
# Top-O-Line DVD Player is on
# Top-O-Line DVD Player is playing "Raiders of the Lost Ark"
# 
# Shutting movie theater, down...
# Popcorn Popper is off
# Theater Ceiling Lights is on
# Theater Screen going up
# Top-O-Line Projector is off
# Top-O-Line Amplifier is off
# Top-O-Line DVD Player stopped playing "Raiders of the Lost Ark"
# Top-O-Line DVD Player eject
# Top-O-Line DVD Player is off
# 
# Get Ready for an audiopile experience...
# Theater Ceiling Lights is on
# Top-O-Line Amplifier is on
# Top-O-Line Amplifier setting volume to 5
# Top-O-Line Amplifier setting CD player to Top-O-Line CD Player
# Top-O-Line Amplifier stereo mode is on
# Top-O-Line CD Player is on
# Top-O-Line CD Player is playing track "Vivaldi: the Greates Hits"
# 
# Shutting down CD...
# Top-O-Line Amplifier is off
# Top-O-Line Amplifier setting CD player to Top-O-Line CD Player
# Top-O-Line CD Player eject
# Top-O-Line CD Player is off
# 
# Tuning in the airwaves...
# Top-O-Line AM/FM Tuner is on
# Top-O-Line AM/FM Tuner setting frequency to 106.6 MHz
# Top-O-Line Amplifier is on
# Top-O-Line Amplifier setting volume to 5
# Top-O-Line Amplifier setting tuner to Top-O-Line AM/FM Tuner
# 
# Shutting down the tuner...
# Top-O-Line AM/FM Tuner is off
# Top-O-Line Amplifier is off

