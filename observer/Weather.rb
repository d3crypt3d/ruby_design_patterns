# The WeatherData is gonna be our subject. It simulates "talking" to the 
# weather station and notifying clients "devices". 

class WeatherData
    include Observable

    attr_reader :temperature, :humidity, :pressure

    def initialize(temperature, humidity, pressure)
        # should be called with empty parentheses, 
        # or it'll call the method with same arguments,
        # causing an argument list error
        super() 
        @temperature, @humidity, @pressure = temperature, humidity, pressure
    end

    def setMeasurments(temperature, humidity, pressure)
        @temperature, @humidity, @pressure = temperature, humidity, pressure
        notifyObservers
    end
end
