class CoffeeWithHook < CaffeineBeverageWithHook
  private
  def brew
    'Dripping Coffee through filter'
  end

  def add_condiments
    'Adding Sugar and Milk'
  end

  def get_user_input
    super 'Would you like milk and sugar with your coffee'
  end 
end
