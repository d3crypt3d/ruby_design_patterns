# Since Ruby is a dynamically typed language, the interface cunstruction as follows 
# can be omitted
#
# class BehaviourInterface
#     def action
#         raise 'Abstract method called'
#     end
# end
#
# class BehaviourElement < BehaviourInterface
#     def action
#       # perform an action
#     end
# end

module Behaviour
    class FlyWithWings
        def fly
            'I\'m flying.'
        end
    end

    class FlyNoWay
        def fly
            'I\'m unable to fly.'
        end
    end

    class Quack
        def quack
            'Quack... Quack'
        end
    end

    class Squeak
        def quack
            'Squeak... Squeak'
        end
    end

    class MuteQuack
        def quack
           '***keeping silent***'
        end
    end 
end

class Duck
    attr_accessor :flyable, :quackable

    def initialize(flyable, quackable)
        @flyable = flyable
        @quackable = quackable
    end

    def display
        puts "I'm an instance of the #{self.class} class.\n"\
             "#{swim}\n#{performFly}\n#{performQuack}"
    end

    private

    def swim
        'I\'m swimming.'
    end

    def performFly
        @flyable.is_a?(Proc) ? @flyable.call : @flyable.fly
    end

    def performQuack
        @quackable.is_a?(Proc) ? @quackable.call : @quackable.quack
    end
end 

redHeadDuck = Duck.new(Behaviour::FlyWithWings.new, Behaviour::Quack.new)
rubberDuck = Duck.new(Behaviour::FlyNoWay.new, Behaviour::Squeak.new)

redHeadDuck.display # I'm swimming. I'm flying. Quack... Quack
rubberDuck.display  # I'm swimming. I'm unable to fly. Squeak... Squeak

rubberDuck.quackable = Behaviour::MuteQuack.new
rubberDuck.display  # I'm swimming. I'm unable to fly. ***keeping silent***

rubberDuck.flyable= -> {'Rocket launch detected...'} 
rubberDuck.quackable= -> {'Cocka-doodle-doo'}
rubberDuck.display # I'm swimming. Rocket launch detected... Cocka-doodle-doo
