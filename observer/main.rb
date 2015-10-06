require_relative 'observers'
require_relative 'subject'
require_relative 'weather'

weatherSubject = WeatherData.new(15, 65, 30.4)

firstObserver = DiffDisplay.new(20, 60, 40.2)
secondObserver = ForecastDisplay.new

weatherSubject.registerObserver(firstObserver)
weatherSubject.registerObserver(secondObserver)

weatherSubject.setMeasurments(30, 55, 50.1)
