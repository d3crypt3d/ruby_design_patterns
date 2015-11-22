class Duck
    attr_accessor :flyable, :quackable

    def initialize(flyable, quackable)
        @flyable = flyable
        @quackable = quackable
    end

    def display
        puts "#{swim}\n#{performFly}\n#{performQuack}"             
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
