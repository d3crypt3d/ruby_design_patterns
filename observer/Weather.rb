# The WeatherData class is gonna be our subject. It simulates "talking" to the 
# weather station and notifying client's "devices". 

class WeatherData
  include Observable

  attr_reader :temperature, :humidity, :pressure

  def initialize(temperature, humidity, pressure)
    # super method should be called with empty parentheses, 
    # otherwise the method will be called with same arguments,
    # causing an argument list error
    super() 
    @temperature, @humidity, @pressure = temperature, humidity, pressure
  end

  def set_measurments(temperature, humidity, pressure)
    @temperature, @humidity, @pressure = temperature, humidity, pressure
    notify_observers
  end
end
