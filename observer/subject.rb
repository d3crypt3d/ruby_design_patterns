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
