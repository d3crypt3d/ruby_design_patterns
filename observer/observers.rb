class DiffDisplay
    def initialize(temperature, humidity, pressure)
        @temperature, @humidity, @pressure = temperature, humidity, pressure
    end

    def update(updated_data)
        puts "The temperature has been changed by #{@temperature - updated_data.temperature}"
        puts "The humidity has been changed by #{@humidity - updated_data.humidity}"
        puts "The pressure has been changed by #{(@pressure - updated_data.pressure).round(2)}"
    end
end

class ForecastDisplay
    def update(updated_data)
        puts "Temperature: #{updated_data.temperature}, "\
        "humidity: #{updated_data.humidity}, pressure: #{updated_data.pressure}"
    end
end
