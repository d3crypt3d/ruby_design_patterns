# Having a method been executed withing a class,
# we, of course, can gain the internal state of the fan 
#
# Tending to be a ceiling fan in the living room :)
module CeilingFan

  LOW, MEDIUM, HIGH = 1, 2, 3

  #def initialize
  #  @level = 0
  #end

  def self.high
    @level = HIGH
    'ceiling fan is on high'
  end

  def self.medium
    @level = MEDIUM
    'ceiling fan is on medium'
  end

  def self.low
    @level = LOW
    'ceiling fan is on low'
  end

  def self.off
    @level = 0
    'ceiling fan is off'
  end

  def self.get_speed
    @level
  end
end
