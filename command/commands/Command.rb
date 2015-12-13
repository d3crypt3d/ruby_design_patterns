class Command
  attr_reader :description

  def initialize(commands, description)
    @commands, @description = commands, description
  end

  def execute
    @commands.inject([]) {|memo, command| memo << command.call}
    #@commands.map {|command| command.call}
  end
end
