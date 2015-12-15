require_relative 'Observers'
require_relative 'Subject'
require_relative 'Weather'

weatherSubject = WeatherData.new(15, 65, 30.4)

firstObserver = DiffDisplay.new(20, 60, 40.2)
secondObserver = ForecastDisplay.new

weatherSubject.register_observer(firstObserver)
weatherSubject.register_observer(secondObserver)

weatherSubject.set_measurments(30, 55, 50.1)
# DiffDisplay just has been updated:
# The temperature has been changed by: -10
# The humidity has been changed by: 5
# The pressure has been changed by: -9.9
# 
# ForecastDisplay just has been updated:
# Temperature: 30
# Humidity: 55
# Pressure: 50.1
