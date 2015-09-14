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

class Duck
    attr_accessor :flyable, :quackable

    def initialize(flyable, quackable)
        @flyable = flyable
        @quackable = quackable
    end

    def display
        puts "I'm an instance of the #{self.class} class.\n#{swim}\n#{performFly}\n#{performQuack}"
    end

    private

    def swim
        'I\'m swimming.'
    end

    def performFly
        @flyable.fly
    end

    def performQuack
        @quackable.quack
    end
end 

redHeadDuck = Duck.new(FlyWithWings.new, Quack.new)
rubberDuck = Duck.new(FlyNoWay.new, Squeak.new)

redHeadDuck.display
rubberDuck.display

rubberDuck.quackable = MuteQuack.new
rubberDuck.display
