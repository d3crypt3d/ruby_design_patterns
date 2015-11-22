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
