# A module with a subject's functionality. Gonna be used as a mixin.

module Observable
    def initialize
        @observers = []
    end

    def registerObserver(obj)
        @observers << obj
    end

    def removeObserver(obj)
        @observers.delete(obj)
    end

    def notifyObservers
        @observers.each { |i| i.update(self) }
    end
end
