require_relative 'Observers'
require_relative 'Subject'
require_relative 'Weather'

weatherSubject = WeatherData.new(15, 65, 30.4)

firstObserver = DiffDisplay.new(20, 60, 40.2)
secondObserver = ForecastDisplay.new

weatherSubject.register_observer(firstObserver)
weatherSubject.register_observer(secondObserver)

weatherSubject.set_measurments(30, 55, 50.1)
