require_relative 'Waitress'
require_relative 'Menu'
require_relative 'MenuItem'

class TestDrive
  def initialize
    @waitress = Waitress.new
    @all_menus = Menu.new('ALL MENUS', 'All menus combined')
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
    pancake_menu.add_child MenuItem.new('K&B\'s Pancake Breakfast', 
                                        'Pancakes with scrambled eggs, and toast', 
                                        true,
                                        2.99)
    pancake_menu.add_child MenuItem.new('Regular Pancake Breakfast', 
                                        'Pancakes with fried eggs, sausage', 
                                        false,
                                        2.99)
    pancake_menu.add_child MenuItem.new('Blueberry Pancakes',
                                        'Pancakes made with fresh blueberries, and blueberry syrup',
                                        true,
                                        3.49)
    pancake_menu.add_child MenuItem.new('Waffles',
                                        'Waffles, with your choice of blueberries or strawberries',
                                        true,
                                        3.59)
  end

  def create_diner_menu
    diner_menu = Menu.new('DINER MENU', 'Lunch')
    diner_menu.add_child MenuItem.new('Vegetarian BLT',
                                      '(Fakin\') Bacon with lettuce & tomato on whole wheat', 
                                      true, 
                                      2.99)
    diner_menu.add_child MenuItem.new('BLT',
                                      'Bacon with lettuce & tomato on whole wheat', 
                                      false, 
                                      2.99)
    diner_menu.add_child MenuItem.new('Soup of the day',
                                      'A bowl of the soup of the day, with a side of potato salad', 
                                      false, 
                                      3.29)
    diner_menu.add_child MenuItem.new('Hotdog',
                                      'A hot dog, with saurkraut, relish, onions, topped with cheese',
                                      false, 
                                      3.05)
    diner_menu.add_child MenuItem.new('Steamed Veggies and Brown Rice',
                                      'Steamed vegetables over brown rice', 
                                      true, 
                                      3.99)
    diner_menu.add_child MenuItem.new('Pasta',
                                      'Spaghetti with Marinara Sauce, and a slice of sourdough bread',
                                      true, 
                                      3.89)
    # With dessert :)
    dessert_menu = Menu.new('DESSERT MENU', 'Dessert of course!')
    dessert_menu.add_child MenuItem.new('Apple Pie',
                                        'Apple pie with a flakey crust, topped with vanilla icecream',
                                        true,
                                        1.59)
    dessert_menu.add_child MenuItem.new('Cheesecake',
                                        'Creamy New York cheesecake, with a chocolate graham crust',
                                        true,
                                        1.99)
    dessert_menu.add_child MenuItem.new('Sorbet',
                                        'A scoop of raspberry and a scoop of lime',
                                        true,
                                        1.89) 
    diner_menu.add_child dessert_menu
  end

  def create_cafe_menu
    cafe_menu = Menu.new('CAFE MENU', 'Dinner')
    
    cafe_menu.add_child MenuItem.new('Veggie Burger and Air Fries',
                                     'Veggie burger on a whole wheat bun, lettuce, tomato, and fries',
                                     true, 
                                     3.99)
    cafe_menu.add_child MenuItem.new('Soup of the day',
                                     'A cup of the soup of the day, with a side salad',
                                     false, 
                                     3.69)
    cafe_menu.add_child MenuItem.new('Burrito',
                                     'A large burrito, with whole pinto beans, salsa, guacamole',
                                     true, 
                                     4.29)

    # With coffee
    coffee_menu = Menu.new('COFFEE MENU', 'Stuff to go with your afternoon coffee')
    coffee_menu.add_child MenuItem.new('Coffee Cake',
                                       'Crumbly cake topped with cinnamon and walnuts',
                                       true,
                                       1.59)
    coffee_menu.add_child MenuItem.new('Bagel',
                                       'Flavors include sesame, poppyseed, cinnamon raisin, pumpkin',
                                       false,
                                       0.69)
    coffee_menu.add_child MenuItem.new('Biscotti',
                                       'Three almond or hazelnut biscotti cookies',
                                       true,
                                       0.89)
    cafe_menu.add_child coffee_menu
  end
end
