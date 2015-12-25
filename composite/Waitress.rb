class Waitress
  attr_writer :all_menus

  def print_menu
    @all_menus.each do |item|
      puts case item[0]
           when String then
             ["#{item[0]} #{item[1]}", '-'*20]
           when Hash then
             item.map { |h|
               ["#{h[:name]}#{'(v)' if h[:vegeterian]}, #{h[:price]}", "  -- #{h[:description]}"]
             }
           end
      puts ''
    end
  end
end
