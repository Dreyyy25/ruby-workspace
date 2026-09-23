require_relative "mammal"

class Dog < Mammal
  def pet
    change_health(5)
  end

  def walk
    change_health(-1)
  end

  def run
    change_health(-10)
  end
end

dog = Dog.new
# repeat the actions to check if the health changes
3.times { dog.walk }
2.times { dog.run }
dog.pet
dog.display_health
