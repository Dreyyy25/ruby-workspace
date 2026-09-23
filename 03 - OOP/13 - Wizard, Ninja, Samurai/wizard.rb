require_relative "../11 - Human/human.rb"

class Wizard < Human
  def initialize
    super
    @health = 50
    @intelligence = 25
  end

  def heal
    @health += 10
  end

  def fireball(target)
    if target.class.ancestors.include?(Human)
      target.health -= 20
      true
    else
      false
    end
  end
end