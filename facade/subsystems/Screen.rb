require_relative 'Subsystem'

class Screen < Subsystem
  def up
    "#{@description} going up"
  end

  def down
    "#{@description} going down"
  end
end
