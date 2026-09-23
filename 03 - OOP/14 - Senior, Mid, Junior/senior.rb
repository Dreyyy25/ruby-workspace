require_relative "../12 - Developer/developer.rb"

class Senior < Developer
  attr_accessor :intelligence

  def initialize
    super
    @intelligence = 90
  end

  def interview
    @time -= 0.5
  end

  def assign(target)
    if target.class.ancestors.include?(Developer)
      target.time += 2
      true
    else
      false
    end
  end
end
