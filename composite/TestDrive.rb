require_relative 'lib/Waitress'
require_relative 'lib/Menu'
require_relative 'lib/MenuItem'

class TestDrive
  def initialize
    @waitress = Waitress.new
    @all_menus = Menu.new('ALL MENUS', 'All menus combined')

    @breakfast_items = [['K&B\'s Pancake Breakfast', 
                         'Pancakes with scrambled eggs, and toast', 
                         true,
                         2.99],
                        ['Regular Pancake Breakfast', 
                         'Pancakes with fried eggs, sausage', 
                         false,
                         2.99],
                        ['Blueberry Pancakes',
                         'Pancakes made with fresh blueberries, and blueberry syrup',
                         true,
                         3.49],
                        ['Waffles',
                         'Waffles, with your choice of blueberries or strawberries',
                         true,
                         3.59]]

    @diner_items =     [['Vegetarian BLT',
                         '[Fakin\'] Bacon with lettuce & tomato on whole wheat', 
                         true, 
                         2.99],
                        ['BLT',
                         'Bacon with lettuce & tomato on whole wheat', 
                         false, 
                         2.99],
                        ['Soup of the day',
                         'A bowl of the soup of the day, with a side of potato salad', 
                         false, 
                         3.29],
                        ['Hotdog',
                         'A hot dog, with saurkraut, relish, onions, topped with cheese',
                         false, 
                         3.05],
                        ['Steamed Veggies and Brown Rice',
                         'Steamed vegetables over brown rice', 
                         true, 
                         3.99],
                        ['Pasta',
                         'Spaghetti with Marinara Sauce, and a slice of sourdough bread',
                         true, 
                         3.89]]

    @dessert_items =   [['Apple Pie',
                         'Apple pie with a flakey crust, topped with vanilla icecream',
                         true,
                         1.59],
                        ['Cheesecake',
                         'Creamy New York cheesecake, with a chocolate graham crust',
                         true,
                         1.99],
                        ['Sorbet',
                         'A scoop of raspberry and a scoop of lime',
                         true,
                         1.89]]

    @cafe_items =      [['Veggie Burger and Air Fries',
                         'Veggie burger on a whole wheat bun, lettuce, tomato, and fries',
                         true, 
                         3.99],
                        ['Soup of the day',
                         'A cup of the soup of the day, with a side salad',
                         false, 
                         3.69],
                        ['Burrito',
                         'A large burrito, with whole pinto beans, salsa, guacamole',
                         true, 
                         4.29]]

    @coffee_items =    [['Coffee Cake',
                         'Crumbly cake topped with cinnamon and walnuts',
                         true,
                         1.59],
                        ['Bagel',
                         'Flavors include sesame, poppyseed, cinnamon raisin, pumpkin',
                         false,
                         0.69],
                        ['Biscotti',
                         'Three almond or hazelnut biscotti cookies',
                         true,
                         0.89]]
  end

  def run
    @all_menus.add_child create_diner_menu 
    @all_menus.add_child create_cafe_menu
    @all_menus.add_child create_breakfast_menu

    @waitress.all_menus= @all_menus.collect_description

    @waitress.print_menu
  end

  private
  def create_breakfast_menu
    pancake_menu = Menu.new('PANCAKE HOUSE MENU', 'Breakfast')

    @breakfast_items.inject(pancake_menu, &method(:menu_creator))
  end

  def create_diner_menu
    diner_menu = Menu.new('DINER MENU', 'Lunch')

    @diner_items.inject(diner_menu, &method(:menu_creator))

    # With a dessert :)
    dessert_menu = Menu.new('DESSERT MENU', 'Dessert of course!')

    @dessert_items.inject(dessert_menu, &method(:menu_creator)) 

    diner_menu.add_child dessert_menu
  end

  def create_cafe_menu
    cafe_menu = Menu.new('CAFE MENU', 'Dinner')
    
    @cafe_items.inject(cafe_menu, &method(:menu_creator))

    # With a coffee
    coffee_menu = Menu.new('COFFEE MENU', 'Stuff to go with your afternoon coffee')

    @coffee_items.inject(coffee_menu, &method(:menu_creator))

    cafe_menu.add_child coffee_menu
  end

  def menu_creator(menu,arr)
    menu.add_child MenuItem.new(arr[0],arr[1],arr[2],arr[3])
  end
end
