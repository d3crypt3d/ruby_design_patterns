class MenuItem < Menu
  attr_reader :price

  def initialize(name, description, vegeterian, price)
    super name, description
    @vegeterian, @price = vegeterian, price
  end

  def is_vegeterian?
    @vegeterian
  end
end
