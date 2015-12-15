class Observer
  def update(data)
    ["#{self.class} just has been updated:", data, '']
  end
end
