class Beverage
  # Descriptions method can be decorated with a module's one
  attr_reader :description, :size 

  def initialize
    @size_table = {:short => 0.5, :tall => 1, :grande => 1.5, :venti => 2}
    @size = :tall
  end

  def set_size(size)
    raise 'should be either of :short, :tall, :grande or :venti' unless 
      @size_table.has_key?(size)
    @size = size
  end

  def full_description
    "#{self.description} $#{total_price}"
  end

  private
  # This method also can be decorated with a module's one
  def get_cost
    @cost
  end

  def total_price
    (get_cost * @size_table[@size]).round(2) 
  end
end
