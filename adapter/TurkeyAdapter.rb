class TurkeyAdapter
  def initialize(turkey)
    @turkey = turkey
  end

  def quack
    @turkey.gobble
  end

  # Since the turkey is able to fly a short distance only
  # we need it to do the same 5 times 
  def fly
    (0..4).map { @turkey.fly }
  end
end
