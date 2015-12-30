require 'forwardable'

class GumballMachine
  extend Forwardable

  attr_reader :count
  attr_writer :state

  def initialize(num_gumballs)
    @count = num_gumballs
  end

  def_delegators :@state, :insert_quarter, :eject_quarter,
                          :insert_quarter, :eject_quarter

  def turn_crank
    @state.turn_crank
    release_ball if @state.dispence
  end

  def refill(num_gumballs)
    @count = num_gumballs
  end

  private
  def release_ball
    puts 'A gumball comes rolling out the slot...'
    @count -= 1 unless @count.zero?
  end
end
