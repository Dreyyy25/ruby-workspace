require_relative "../12 - Developer/developer.rb"

class Mid < Developer
  attr_accessor :intelligence

  def initialize
    super
    @intelligence = 85
  end

  def pair_programming(target)
    if target.class.ancestors.include?(Developer)
      @time -= 3
      @energy -= 3
      target.time -= 3
      target.energy -= 3
      true
    else
      false
    end
  end

  def break
    @energy = 100
  end
end
