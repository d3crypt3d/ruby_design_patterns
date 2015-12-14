module Hottub
  @is_turned_on = true
  @temperature

  def self.on
    @is_turned_on = true
    'Hottub is turned on'
  end

  def self.off
    @is_turned_off = false
    'Hottub is turned off'
  end

  def self.bubbles_on
    'Hottub is bubbling!' 
  end

  def self.bubbles_off
    'Hottub is not bubbling' 
  end

  def self.jets_on
    'Hottub jets are on' if @is_turned_on
  end

  def self.jets_off
    'Hottub jest are off' if @is_turned_on
  end

  def self.set_temperature(temp)
    @temperature = temp
  end

  def self.heat
    @temperature = 105
    'Hottub is heating to a steaming 105 degrees'
  end

  def self.cool
    @temperature = 98
    'Hottub is cooling to 98 degrees'
  end
end
