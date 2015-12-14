class Command
  attr_reader :description

  def initialize(commands, klass, description)
    @commands = commands.map {|sym| klass.method(sym)} 
    @description = description
  end

  def execute
    # When a single proc is passed and when an array of them is passed
    @commands.map {|command| command.call}
  end
end
