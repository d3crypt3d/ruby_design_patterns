require_relative 'Waitress'
require_relative 'Menu'
require_relative 'MenuItem'

waitress = Waitress.new

all_menus = Menu.new('ALL MENUS', 'All menus combined')
pancake_menu = Menu.new('PANCAKE HOUSE MENU', 'Breakfast')
diner_menu = Menu.new('DINER MENU', 'Lunch')
dessert_menu = Menu.new('DESSERT MENU', 'Dessert of course!')
cafe_menu = Menu.new('CAFE MENU', 'Dinner')
coffee_menu = Menu.new('COFFEE MENU', 'Stuff to go with your afternoon coffee')

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
diner_menu.add_child dessert_menu
cafe_menu.add_child coffee_menu

all_menus.add_child diner_menu 
all_menus.add_child cafe_menu
all_menus.add_child pancake_menu

waitress.all_menus= all_menus.collect_description
waitress.print_menu

# ALL MENUS All menus combined
# --------------------
# 
# PANCAKE HOUSE MENU Breakfast
# --------------------
# 
# K&B's Pancake Breakfast(v), 2.99
#   -- Pancakes with scrambled eggs, and toast
# Regular Pancake Breakfast, 2.99
#   -- Pancakes with fried eggs, sausage
# Blueberry Pancakes(v), 3.49
#   -- Pancakes made with fresh blueberries, and blueberry syrup
# Waffles(v), 3.59
#   -- Waffles, with your choice of blueberries or strawberries
# 
# CAFE MENU Dinner
# --------------------
# 
# Veggie Burger and Air Fries(v), 3.99
#   -- Veggie burger on a whole wheat bun, lettuce, tomato, and fries
# Soup of the day, 3.69
#   -- A cup of the soup of the day, with a side salad
# Burrito(v), 4.29
#   -- A large burrito, with whole pinto beans, salsa, guacamole
# 
# COFFEE MENU Stuff to go with your afternoon coffee
# --------------------
# 
# Coffee Cake(v), 1.59
#   -- Crumbly cake topped with cinnamon and walnuts
# Bagel, 0.69
#   -- Flavors include sesame, poppyseed, cinnamon raisin, pumpkin
# Biscotti(v), 0.89
#   -- Three almond or hazelnut biscotti cookies
# 
# DINER MENU Lunch
# --------------------
# 
# Vegetarian BLT(v), 2.99
#   -- (Fakin') Bacon with lettuce & tomato on whole wheat
# BLT, 2.99
#   -- Bacon with lettuce & tomato on whole wheat
# Soup of the day, 3.29
#   -- A bowl of the soup of the day, with a side of potato salad
# Pasta(v), 3.89
#   -- Spaghetti with Marinara Sauce, and a slice of sourdough bread
# Steamed Veggies and Brown Rice(v), 3.99
#   -- Steamed vegetables over brown rice
# Hotdog, 3.05
#   -- A hot dog, with saurkraut, relish, onions, topped with cheese
# 
# DESSERT MENU Dessert of course!
# --------------------
# 
# Apple Pie(v), 1.59
#   -- Apple pie with a flakey crust, topped with vanilla icecream
# Cheesecake(v), 1.99
#   -- Creamy New York cheesecake, with a chocolate graham crust
# Sorbet(v), 1.89
#   -- A scoop of raspberry and a scoop of lime

