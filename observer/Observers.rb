require_relative 'Observer'

# 2 kinds of observers, just to simulate different clients activity

class DiffDisplay < Observer
  def initialize(temperature, humidity, pressure)
    @temperature, @humidity, @pressure = temperature, humidity, pressure
  end

  def update(updated_data)
    super ["The temperature has been changed by: #{@temperature - updated_data.temperature}",
          "The humidity has been changed by: #{@humidity - updated_data.humidity}",
          "The pressure has been changed by: #{(@pressure - updated_data.pressure).round(2)}"]
  end
end

class ForecastDisplay < Observer
  def update(updated_data)
    super ["Temperature: #{updated_data.temperature}", 
          "Humidity: #{updated_data.humidity}",
          "Pressure: #{updated_data.pressure}"]
  end
end
