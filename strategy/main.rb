require_relative 'Duck'
require_relative 'Behaviour'

# Since Ruby is a dynamically typed language, the interface cunstruction as follows can be omitted
# 
# class BehaviourInterface
#   def action
#     raise 'Abstract method called'
#   end
# end
# 
# class BehaviourElement < BehaviourInterface
#   def action
#    # perform an action
#   end
# end

redHeadDuck = Duck.new Behaviour::Flyable.method(:fly_with_wings),
                       Behaviour::Quackable.method(:quack)

rubberDuck = Duck.new Behaviour::Flyable.method(:fly_no_way),
                      Behaviour::Quackable.method(:squeak)

puts '---RedHeadDuck---', redHeadDuck.display    
# I'm swimming.
# I'm flying.
# Quack... Quack
# --RedHeadDuck--

puts '---rubberDuck---', rubberDuck.display
# I'm swimming.
# I'm unable to fly.
# Squeak... Squeak
# ---rubberDuck---

rubberDuck.quackable= Behaviour::Quackable.method(:mute_quack)
puts '---Loaded new behaviour---', rubberDuck.display 
# I'm swimming.
# I'm unable to fly.
# ***keeping silent***
# ---Loaded New Behaviour---

rubberDuck.flyable= -> {'Rocket launch detected...'} 
rubberDuck.quackable= -> {'Cocka-doodle-doo'}
puts '---On the fly with lambda---', rubberDuck.display
# I'm swimming.
# Rocket launch detected...
# Cocka-doodle-doo
# ---On the fly with lambda---
