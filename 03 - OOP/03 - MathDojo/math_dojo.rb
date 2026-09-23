class MathDojo
  def initialize
    @result = 0
  end

  def add(*numbers)
    # splat lets me pass many values or arrays
    @result += numbers.flatten.sum
    # return the object so i can chain another method
    self
  end

  def subtract(*numbers)
    @result -= numbers.flatten.sum
    self
  end

  def result
    @result
  end
end

challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result
puts challenge1

challenge2 = MathDojo.new
  .add(1)
  .add([3, 5, 7, 8], [2, 4.3, 1.25])
  .subtract([2, 3], [1.1, 2.3])
  .result
puts challenge2
