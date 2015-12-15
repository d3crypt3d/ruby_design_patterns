# A module with a subject's functionality. Gonna be used as a mixin.

module Observable
  def initialize
    @observers = []
  end

  def register_observer(obj)
    @observers << obj
  end

  def remove_observer(obj)
    @observers.delete(obj)
  end

  def notify_observers
    @observers.each { |observer| puts observer.update(self) }
  end
end
