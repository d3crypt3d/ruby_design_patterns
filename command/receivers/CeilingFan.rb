class CeilingFan

  LOW, MEDIUM, HIGH = 1, 2, 3

  def initialize
    @level = 0
  end

  def high
    @level = HIGH
    'ceiling fan is on high'
  end

  def medium
    @level = MEDIUM
    'ceiling fan is on medium'
  end

  def low
    @level = LOW
    'ceiling fan is on low'
  end

  def off
    @level = 0
    'ceiling fan is off'
  end

  def get_speed
    @level
  end
end
