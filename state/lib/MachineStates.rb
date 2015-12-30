module MachineStates

  class << self
    attr_accessor :machine 
    def extended(klass)
      # Module's methods must be called on self.  
      # within this callback (not beacause they
      # are private)
      self.machine = klass
      self.machine.state= NoQuarterState
    end
  end

  module HasQuarterState 
    class << self
      def insert_quarter
        puts 'You can\'t insert another quarter'
      end
  
      def eject_quarter
        puts 'Quarter returned'
        ::MachineStates.machine.state= NoQuarterState
      end
  
      def turn_crank
        puts 'You turned...'
        ::MachineStates.machine.state= SoldState
      end
  
      def dispense
        puts 'No gumball dispensed'
      end
    end
  end
  
  module NoQuarterState
    class << self
      def insert_quarter
        puts 'You inserted a quarter'
        ::MachineStates.tap do |mod|
          mod.machine.state= if mod.machine.count.nonzero? 
                               HasQuarterState
                             else
                               puts 'Oops, out of gumballs!'
                               SoldOutState
                             end
        end
      end

      def eject_quarter
        puts 'You haven\'t inserted a quarter'
      end
  
      def turn_crank
        puts 'You turned...'
      end
  
      def dispence
        puts 'No gumball dispensed'
      end
    end
  end

  module SoldState
    class << self
      def insert_quarter
        puts 'Please wait, we\'re already giving you a gumball'
      end

      def eject_quarter
        puts 'Sorry, you\'ve already turned the crank'
      end

      def turn_crank
        puts 'Turning twice doesn\'t get you another gumball!'
      end
      
      def dispence
        puts 'Dispensing a gumball'
        ::MachineStates.tap do |mod|
          mod.machine.state= NoQuarterState
        end
        true
      end
    end
  end

  module SoldOutState
    class << self
      def insert_quarter
        puts 'The machine is sold out, take your quarter back'
      end

      def eject_quarter
        puts 'Quarter returned'
      end

      def turn_crank
        puts 'You can\'t turn the crank'
      end

      def dispence
        puts 'Though no gumball dispensed'
      end
    end
  end
end
