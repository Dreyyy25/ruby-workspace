require_relative 'mammal'

class Dog < Mammal
    def walk 
        @health -= 1
        puts "The dog walked. Health: #{@health}"
    end
    
    def run 
        @health -= 10
        puts "The dog ran. Health: #{@health}"
    end

    def pet
        @health += 5
        puts "The dog received pets. Health: #{@health}"
    end
end

doggy = Dog.new
3.times { doggy.walk }
2.times { doggy.run }
doggy.pet
doggy.display_health