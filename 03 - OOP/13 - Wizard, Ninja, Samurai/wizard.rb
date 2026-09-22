require_relative 'human'

class Wizard < Human 

    def initialize
        super 
        @health -= 50
        @intelligence += 22
    end 

    def heal
        @health += 10
        self
    end

    def fireball(obj)
        if obj.class.ancestors.include?(Human)
            obj.health -= 20
            true
        else
            false
        end
    end
end

wiz = Wizard.new
wiz2 = Wizard.new

puts "Wizard health: #{wiz.health}"
puts "Wizard intelligence: #{wiz.intelligence}"

wiz.heal
puts "After healing: #{wiz.health}"

wiz.fireball(wiz2)
puts "Wizard 2 health after fireball: #{wiz2.health}"

puts "Wizard attack:"
wiz.attack(wiz2)
puts "Wizard 2 health after attack: #{wiz2.health}"
