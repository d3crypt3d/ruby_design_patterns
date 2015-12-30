require_relative 'lib/MachineStates'
require_relative 'lib/GumballMachine'
require_relative 'account_protection_proxy'

machine = GumballMachine.new(8)
machine.extend(MachineStates)

proxy = AccountProtectionProxy.new(machine, 'billy boy')
proxy.eject_quarter
proxy.turn_crank
