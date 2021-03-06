require_relative 'PizzaStore'

pizza_factory = PizzaStore.new

pizza_factory.order_pizza :chicago_clam
# Preparing Chicago Style Deep Dish Clam Pizza
# Tossing dough...
# Adding sauce...
# Adding toppings: Shredded Mozarella Cheese, Frozen Clams from Chesapeake Bay
# Bake for 25 minutes at 350
# Cutting the pizza into square slices
# Place pizza in official PizzaStore box

pizza_factory.order_pizza :ny_pepperoni
# Preparing NY Style Pepperoni Pizza
# Tossing dough...
# Adding sauce...
# Adding toppings: Grated Reggiano Cheese, Sliced Pepperoni, Garlic, Onion, Mushrooms, Red Pepper
# Bake for 25 minutes at 350
# Cutting the pizza into diagonal slices
# Place pizza in official PizzaStore box

pizza_factory.order_pizza :ny_clam
# Preparing NY Style Clam Pizza
# Tossing dough...
# Adding sauce...
# Adding toppings: Grated Reggiano Cheese, Fresh Clams from Long Island Sound
# Bake for 25 minutes at 350
# Cutting the pizza into diagonal slices
# Place pizza in official PizzaStore box

pizza = pizza_factory.order_pizza :chicago_veggie
# Preparing Chicago Style Deep Dish Veggie Pizza
# Tossing dough...
# Adding sauce...
# Adding toppings: Shredded Mozarella Cheese, Black Olives, Spinach, Eggplant
# Bake for 25 minutes at 350
# Cutting the pizza into square slices
# Place pizza in official PizzaStore box

puts pizza.full_description
# ---- Chicago Style Deep Dish Veggie Pizza ----
# Extra Thick Crust Dough
# Plum Tomato Sauce
# Shredded Mozarella Cheese
# Black Olives
# Spinach
# Eggplant

