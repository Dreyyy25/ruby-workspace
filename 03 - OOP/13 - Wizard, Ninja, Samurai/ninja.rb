require_relative 'human'

class Ninja < Human 

    def initialize
        super 
        @stealth += 172
    end

    def steal(obj)
        if obj.class.ancestors.include?(Human)
            obj.health -= 10
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

ninja = Ninja.new
ninja2 = Ninja.new

puts "Ninja stealth: #{ninja.stealth}"
puts "Ninja health: #{ninja.health}"

ninja.steal(ninja2)
puts "Ninja health after steal: #{ninja.health}"
puts "Ninja 2 health after being stolen from: #{ninja2.health}"

ninja.get_away
puts "Ninja health after getting away: #{ninja.health}"

puts "Ninja attack:"
ninja.attack(ninja2)
puts "Ninja 2 health after attack: #{ninja2.health}"
