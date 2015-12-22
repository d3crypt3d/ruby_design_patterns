# The waitress only "knows" methods names
# that items are able respond to
class Waitress
  attr_writer :dinner_menu

  def print_menu
    @dinner_menu.each(&self.method(:print)) 
  end

  def print_vegeterian_menu
    @dinner_menu.select {|i| i.vegeterian}.each(&self.method(:print))
  end

  private
  def print(item)
    puts "name: #{item.name}",
         "description: #{item.description}",
         "vegeterian: #{item.vegeterian}",
         "price: $#{item.price}",
         '' 
  end
end
