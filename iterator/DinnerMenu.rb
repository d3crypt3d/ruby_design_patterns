class DinnerMenu
  attr_accessor :name, :description, :vegeterian, :price

  def initialize(name, description, vegeterian, price)
    @name, @description, @vegeterian, @price = name, description, vegeterian, price
  end

  # We must implement a meaningful <=> operator if we want
  # to use Enumerable#max, #min, or #sort without blocks,
  # an item with a biggest price will be returned
  def <=>(other_menu)
    @price <=> other_menu.price
  end
end
