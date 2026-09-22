class Developer
  attr_accessor :knowledge, :time, :energy
  def initialize
    @knowledge = 80
    @time = 9
    @energy = 100
  end
  def code_review(obj)
    # check if the passed object's class is Developer or inherits from the Developer class
    if obj.class.ancestors.include?(Developer)
      obj.knowledge += 1
      # remember that we don't need to write "return" in ruby
      # stating true below will automatically return the boolean true
      true
    else
      false
    end
  end
end