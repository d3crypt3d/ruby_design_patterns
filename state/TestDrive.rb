require_relative 'lib/MachineStates'
require_relative 'lib/GumballMachine'

class TestDrive
  def initialize
    @machine = GumballMachine.new(8)
    @machine.extend(MachineStates)
  end

  def run
    puts 'Gumball machine is in NoQuarterState'
    @machine.eject_quarter
    @machine.turn_crank
    # Gumball machine is in NoQuarterState
    # You haven't inserted a quarter
    # You turned...
    # No gumball dispensed

    puts 'Setting the machine to HasQuarterState'
    @machine.insert_quarter
    @machine.insert_quarter
    # Setting the machine to HasQuarterState
    # You inserted a quarter
    # Please wait, we're already giving you a gumball
 
    puts 'Setting the machine back to NoQuarterState'
    @machine.eject_quarter
    @machine.eject_quarter
    # Setting the machine back to NoQuarterState
    # Quarter returned
    # You haven't inserted a quarter    

    puts 'Setting the machine to SoldState from NoQuarterState'
    @machine.insert_quarter
    @machine.turn_crank
    # Setting the machine to SoldState from NoQuarterState
    # You inserted a quarter
    # You turned...
    # Dispensing a gumball
    # A gumball comes rolling out the slot...
    # There are 7 balls in the machine

    puts "There are #{@machine.count} balls in the machine"
    # There are 7 balls in the machine

    puts 'Setting the machine to SoldOutState'
    @machine = GumballMachine.new(1)
    @machine.extend(MachineStates)
    @machine.insert_quarter
    @machine.turn_crank
    # Setting the machine to SoldOutState
    # You inserted a quarter
    # You turned...
    # Dispensing a gumball
    # A gumball comes rolling out the slot...

    puts "There are #{@machine.count} balls in the machine"
    # There are 0 balls in the machine 

    @machine.insert_quarter
    # You inserted a quarter
    # Oops, out of gumballs!   
    @machine.eject_quarter
    # Quarter returned
    @machine.turn_crank
    # You can't turn the crank
    # Though no gumball dispensed
    @machine.insert_quarter
    # The machine is sold out, take your quarter back
    @machine.eject_quarter
    # Quarter returned
  end
end
