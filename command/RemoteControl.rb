class RemoteControl
  def initialize
    @commands = Array.new(7) 
  end

  def set_command(slot, cmd)
    @commands[slot] = cmd
  end
  
  def on_button_pushed(slot)
    raise NotImplementedError
  end

  def off_button_pushed(slot)
    raise NotImplementedError
  end

  def undo
    raise NotImplementedError
  end
end  
