Dir["commands/*.rb"].each {|f| require_relative f}  

# RemoteCOntrol is going to be our invoker
class RemoteControl
  def initialize
    @on_commands, @off_commands = Array.new(7), Array.new(7) 
  end

  def set_command(slot, cmd_on, cmd_off)
    @on_commands[slot], @off_commands[slot] = cmd_on, cmd_off
  end
  
  def on_button_pushed(slot)
    @on_commands[slot].execute
  end

  def off_button_pushed(slot)
    @off_commands[slot].execute
  end

  def undo_button_pushed
    raise NotImplementedError
  end

  def command_description(slot)
    if @on_commands[slot] && @off_commands[slot]
      puts "ON button: #{@on_commands[slot].description}\n",
          "OFF button: #{@off_commands[slot].description}"
    end
  end
end  
