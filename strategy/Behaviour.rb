module Behaviour
  module Flyable
    def self.fly_with_wings
      'I\'m flying.'
    end

    def self.fly_no_way
      'I\'m unable to fly.'
    end
  end

  module Quackable
    def self.quack
      'Quack... Quack'
    end

    def self.squeak
      'Squeak... Squeak'
    end

    def self.mute_quack
      '***keeping silent***'
    end
  end 
end
