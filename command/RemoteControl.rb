Dir["commands/*.rb"].each {|f| require_relative f}  

# RemoteCOntrol is going to be our invoker
class RemoteControl
  def initialize
    @on_commands, @off_commands = Array.new(7), Array.new(7) 
    # Only the last action can be undone
    # We are going to keep the slot number and
    # the button type of the last command (true/false - ON/OFF) 
    @last_action = [0,true]
  end

  def set_command(slot, cmd_on, cmd_off)
    @on_commands[slot], @off_commands[slot] = cmd_on, cmd_off
  end
  
  def on_button_pushed(slot)
    set_the_mark(slot, true)
    @on_commands[slot].execute
  end

  def off_button_pushed(slot)
    set_the_mark(slot, false)
    @off_commands[slot].execute
  end

  def undo_button_pushed
    slot, on_pressed = @last_action
    command = on_pressed ? @off_commands[slot] : @on_commands[slot]
    @last_action[1] = !on_pressed
    command.execute
  end

  def command_description(slot)
    if @on_commands[slot] && @off_commands[slot]
      ["ON button: #{@on_commands[slot].description}\n",
           "OFF button: #{@off_commands[slot].description}"]
    end
  end

  private

  def set_the_mark(slot,type)
    @last_action[0,1] = slot, type
  end
end  

