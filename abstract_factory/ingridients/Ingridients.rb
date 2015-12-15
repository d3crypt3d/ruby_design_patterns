# Rather then creating a bunch of classes
# we are going to keep all ingridients in 
# a module

module Ingridients
  def dough
    {
      thin: 'ThinCrustDough',
      thick: 'Extra thick crust dough'
    }
  end

  def sauce
    {
      plum: 'Tomato sauce with plum tomatoes',
      marinara: 'Marinara Sauce'
    }
  end

  def cheese
    {
      mozzarella: 'Shredded Mozzarella',
      parmesan: 'Shredded Parmesan',
      reggiano: 'Grated Reggiano Cheese'
    }
  end

  def veggies
    {
      spinach: 'Spinach',
      redpepper: 'RedPepper',
      onion: 'Onion',
      mushrooms: 'Mushrooms',
      garlic: 'Garlic',
      blackolives: 'BlackOlives',
      eggplant: 'Eggplant'
    }
  end

  def clams
    {
      frozen: 'Frozen Clams from Chesapeake Bay',
      fresh: 'Fresh Clams from Long Island Sound'
    }
  end
end
