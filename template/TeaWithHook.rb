class TeaWithHook < CaffeineBeverageWithHook
  private
  def brew
    'Steeping the tea'
  end

  def add_condiments
    'Adding lemon'
  end

  def get_user_input
    super 'Would you like lemon with your tea'
  end
end
