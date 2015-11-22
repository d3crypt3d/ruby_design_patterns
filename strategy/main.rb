# Since Ruby is a dynamically typed language, the interface cunstruction as follows 
# can be omitted
=begin

 class BehaviourInterface
     def action
         raise 'Abstract method called'
     end
 end

 class BehaviourElement < BehaviourInterface
     def action
       # perform an action
     end
 end

=end

require_relative 'Duck'
require_relative 'modules'

redHeadDuck = Duck.new(Behaviour::FlyWithWings.new, Behaviour::Quack.new)
rubberDuck = Duck.new(Behaviour::FlyNoWay.new, Behaviour::Squeak.new)

redHeadDuck.display # I'm swimming. I'm flying. Quack... Quack
rubberDuck.display  # I'm swimming. I'm unable to fly. Squeak... Squeak

rubberDuck.quackable = Behaviour::MuteQuack.new
rubberDuck.display  # I'm swimming. I'm unable to fly. ***keeping silent***

rubberDuck.flyable= -> {'Rocket launch detected...'} 
rubberDuck.quackable= -> {'Cocka-doodle-doo'}
rubberDuck.display  # I'm swimming. Rocket launch detected... Cocka-doodle-doo
