class WeatherData
    include Observable

    attr_reader :temperature, :humidity, :pressure

    def initialize(temperature, humidity, pressure)
        super()
        @temperature, @humidity, @pressure = temperature, humidity, pressure
    end

    def setMeasurments(temperature, humidity, pressure)
        @temperature, @humidity, @pressure = temperature, humidity, pressure
        notifyObservers
    end
end
