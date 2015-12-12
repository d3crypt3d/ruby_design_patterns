class Hottub
  def initialize
    @is_turned_on = true
    @temperature
  end

  def on
    @is_turned_on = true
  end

  def off
    @is_turned_off = false
  end

  def bubbles_on
    'Hottub is bubbling!' if @is_turned_on
  end

  def bubbles_off
    'Hottub is not bubbling' if @is_turned_off
  end

  def jets_on
    'Hottub jets are on' if @is_turned_on
  end

  def jets_off
    'Hottub jest are off' if @is_turned_on
  end

  def set_temperature(temp)
    @temperature = temp
  end

  def heat
    @temperature = 105
    'Hottub is heating to a steaming 105 degrees'
  end

  def cool
    @temperature = 98
    'Hottub is cooling to 98 degrees'
  end
end
