require_relative 'Command'
require_relative '../receivers/Hottub'

class HottubOnCommand < Command
  def initialize
    super %w[on heat bubbles_on].map {|sym| Hottub.method(sym)}, 
          'Turns the hottub on, heats and starts bubbling'
  end
end

class HottubOffCommand < Command
  def initialize
    super %w[bubbles_off cool off].map {|sym| Hottub.method(sym)},
          'Stops bubbling, cools the hottub and turns it off'
  end
end
