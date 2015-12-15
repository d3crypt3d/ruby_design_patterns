require_relative 'PizzaStore'

ny_pizza_factory = PizzaStore.factory(:ny)
chicago_pizza_factory = PizzaStore.factory(:chicago)

ny_pizza1, ny_pizza2, ny_pizza3 = ny_pizza_factory.order_pizza(:pepperoni, :clam, :cheese)
# Preparing NY Style Pepperoni Pizza
# Tossing dough...
# Adding sauce...
# Adding toppings: Sliced pepperoni
# Bake for 25 minutes at 350
# Cutting the pizza into diagonal slices
# Place pizza in official PizzaStore box
# 
# Preparing NY Style Clam Pizza
# Tossing dough...
# Adding sauce...
# Adding toppings: Fresh Clams from Long Island Sound
# Bake for 25 minutes at 350
# Cutting the pizza into diagonal slices
# Place pizza in official PizzaStore box
# 
# Preparing NY Style Sauce and Cheese Pizza
# Tossing dough...
# Adding sauce...
# Adding toppings: Grated Reggiano Cheese
# Bake for 25 minutes at 350
# Cutting the pizza into diagonal slices
# Place pizza in official PizzaStore box

puts ny_pizza1.full_description
# ---- NY Style Pepperoni Pizza ----
# ThinCrustDough
# Marinara Sauce
# Sliced pepperoni

chicago_pizza1, chicago_pizza2, chicago_pizza3 = chicago_pizza_factory.order_pizza(:pepperoni, :clam, :cheese)
# Preparing Chicago Style Pepperoni Pizza
# Tossing dough...
# Adding sauce...
# Adding toppings: Sliced pepperoni
# Bake for 25 minutes at 350
# Cutting the pizza into square slices
# Place pizza in official PizzaStore box
# 
# Preparing Chicago Style Clam Pizza
# Tossing dough...
# Adding sauce...
# Adding toppings: Frozen Clams from Chesapeake Bay
# Bake for 25 minutes at 350
# Cutting the pizza into square slices
# Place pizza in official PizzaStore box
# 
# Preparing Chicago Style Sauce and Cheese Pizza
# Tossing dough...
# Adding sauce...
# Adding toppings: Shredded Mozzarella
# Bake for 25 minutes at 350
# Cutting the pizza into square slices
# Place pizza in official PizzaStore box

puts chicago_pizza2.full_description
# ---- Chicago Style Clam Pizza ----
# Extra thick crust dough
# Tomato sauce with plum tomatoes
# Frozen Clams from Chesapeake Bay
