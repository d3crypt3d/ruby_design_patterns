class CaffeineBeverageWithHook
  def prepare_recipe
    puts "---Preparing #{self.class.to_s.gsub('WithHook','')}---", 
         boil_water, brew, pour_in_cup

    puts add_condiments if customer_wants_condiments?
    puts ''
  end

  private
  def boil_water
    'Boiling water'
  end

  def pour_in_cup
    'Pouring into cup'
  end

  def brew
    raise "Called abstract method: #{__method__}"
  end

  def add_condiments
    raise "Called abstract method: #{__method__}"
  end

  def customer_wants_condiments?
    get_user_input.downcase.start_with?('y')
  end

  def get_user_input(prompt)
    puts "#{prompt} (y/n)?"
    gets.chomp 
  end
end
