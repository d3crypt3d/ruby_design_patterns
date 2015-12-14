require_relative 'Client'
require_relative 'RemoteControl'

ir_control = RemoteControl.new
ir_control.set_command(0, LightOnCommand.new, LightOffCommand.new) 
ir_control.set_command(1, CeilingFanOnCommand.new, CeilingFanOffCommand.new) 
ir_control.set_command(2, GarageDoorUpCommand.new, GarageDoorDownCommand.new) 
ir_control.set_command(3, StereoOnWithCDCommand.new, StereoOffCommand.new) 
ir_control.set_command(4, TVOnCommand.new, TVOffCommand.new) 
ir_control.set_command(5, HottubOnCommand.new, HottubOffCommand.new) 

client = Client.new
client.remote_control = ir_control
client.run

# 1 PAIR OF BUTTONS:
# ON button: Turns the light on in the living room
# OFF button: Turns the light off in the living room
# --pushing the ON button--
# light is on
# --pushing the OFF button--
# light is off
# 
# 2 PAIR OF BUTTONS:
# ON button: Turns the ceiling fan on, sets the high speed
# OFF button: Turns the ceiling fan off
# --pushing the ON button--
# ceiling fan is on high
# --pushing the OFF button--
# ceiling fan is off
# 
# 3 PAIR OF BUTTONS:
# ON button: Opens the garage door and turns the light on
# OFF button: Closes the garage door and turns the light off
# --pushing the ON button--
# garage door is up
# garage light is on
# --pushing the OFF button--
# garage door is down
# garage light is off
# 
# 4 PAIR OF BUTTONS:
# ON button: Turns the stereo on, sets for CD input and sets the volume
# OFF button: Turns the stereo off
# --pushing the ON button--
# stereo is on
# stereo is set for CD input
# Stereo volume is set to 11
# --pushing the OFF button--
# stereo is off
# 
# 5 PAIR OF BUTTONS:
# ON button: Turns the TV on
# OFF button: Turns the TV off
# --pushing the ON button--
# TV is on
# Channel is set to VCR
# --pushing the OFF button--
# TV is off
# 
# 6 PAIR OF BUTTONS:
# ON button: Turns the hottub on, heats and starts bubbling
# OFF button: Stops bubbling, cools the hottub and turns it off
# --pushing the ON button--
# Hottub is turned on
# Hottub is heating to a steaming 105 degrees
# Hottub is bubbling!
# --pushing the OFF button--
# Hottub is not bubbling
# Hottub is cooling to 98 degrees
# Hottub is turned off
# 
# TEST THE UNDO BUTTON:
# --pushing the ON button--
# ceiling fan is on high
# --pushing the undo button--
# ceiling fan is off
# --pushing the OFF button--
# Hottub is not bubbling
# Hottub is cooling to 98 degrees
# Hottub is turned off
# --pushing the undo button--
# Hottub is turned on
# Hottub is heating to a steaming 105 degrees
# Hottub is bubbling!

