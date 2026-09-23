require_relative "mammal"

class Lion < Mammal
  def initialize
    # set the lions starting health here
    @health = 170
  end

  def fly
    change_health(-10)
  end

  def attack_town
    change_health(-50)
  end

  def eat_humans
    change_health(20)
  end

  def display_health
    puts "This is a lion"
    puts "Health: #{@health}"
  end
end

lion = Lion.new
3.times { lion.attack_town }
2.times { lion.eat_humans }
2.times { lion.fly }
lion.display_health
