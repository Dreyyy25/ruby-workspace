require_relative "../11 - Human/human.rb"

class Ninja < Human
  def initialize
    super
    @stealth = 175
  end

  def steal(target)
    if attack(target)
      @health += 10
      true
    else
      false
    end
  end

  def get_away
    @health -= 15
  end
end