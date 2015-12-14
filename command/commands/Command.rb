class Command
  attr_reader :description

  def initialize(*commands, description)
    @commands, @description = commands, description
  end

  def execute
    # When a single proc is passed and when an array of them is passed
    @commands.flatten.map {|command| command.call}
  end
end
