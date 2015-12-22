require_relative 'DinnerMenuIterator'
require_relative 'DinnerMenu'
require_relative 'Waitress'

waitress = Waitress.new
menu_iterator = DinnerMenuIterator.new
# Our iterator is able to process different kinds of aggregates:
# objects
menu_iterator.add_item DinnerMenu.new('Vegetarian BLT', "(Fakin') Bacon with lettuce & tomato on whole wheat", true, 2.99)
menu_iterator.add_item DinnerMenu.new('BLT', 'Bacon with lettuce & tomato on whole wheat', false, 2.50)
menu_iterator.add_item DinnerMenu.new('Steamed Veggies and Brown Rice', 'Steamed vegetables over brown rice', true, 3.99)
# hashes
menu_iterator.add_item( {name: 'Soup of the day',
                         description: 'Soup of the day, with a side of potato salad',
                         vegeterian: false, price: 3.29} )
menu_iterator.add_item( {name: 'Hotdog',
                         description: 'A hot dog, with saurkraut, relish, onions, topped with cheese',
                         vegeterian: false, price: 3.05} )
# arrays, we assume having a convention for the data order 
menu_iterator.add_item ['Pasta', 'Spaghetti with Marinara Sauce, and a slice of sourdough bread', true, 3.89]

waitress.dinner_menu= menu_iterator

waitress.print_menu
# name: Vegetarian BLT
# description: (Fakin') Bacon with lettuce & tomato on whole wheat
# vegeterian: true
# price: $2.99
# 
# name: BLT
# description: Bacon with lettuce & tomato on whole wheat
# vegeterian: false
# price: $2.99
# 
# name: Soup of the day
# description: Soup of the day, with a side of potato salad
# vegeterian: false
# price: $3.29
# 
# name: Hotdog
# description: A hot dog, with saurkraut, relish, onions, topped with cheese
# vegeterian: false
# price: $3.05
# 
# name: Steamed Veggies and Brown Rice
# description: Steamed vegetables over brown rice
# vegeterian: true
# price: $3.99
# 
# name: Pasta
# description: Spaghetti with Marinara Sauce, and a slice of sourdough bread
# vegeterian: true
# price: $3.89
waitress.print_vegeterian_menu
# name: Vegetarian BLT
# description: (Fakin') Bacon with lettuce & tomato on whole wheat
# vegeterian: true
# price: $2.99
# 
# name: Steamed Veggies and Brown Rice
# description: Steamed vegetables over brown rice
# vegeterian: true
# price: $3.99
# 
# name: Pasta
# description: Spaghetti with Marinara Sauce, and a slice of sourdough bread
# vegeterian: true
# price: $3.89
waitress.print_most_expensive
# name: Steamed Veggies and Brown Rice
# description: Steamed vegetables over brown rice
# vegeterian: true
# price: $3.99

waitress.print_cheapest
# name: BLT
# description: Bacon with lettuce & tomato on whole wheat
# vegeterian: false
# price: $2.5
