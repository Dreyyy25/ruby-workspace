require_relative "human"

class Wizard < Human
    def initialize 
        super
        @health = 50
        @intelligence = 25
    end

    def heal 
        @health += 10
        puts "The Wizard casts a healing spell. New HP: #{@health}"
    end

    def fireball target
        if target.class.ancestors.include?(Human)
            target.health -= 20
            puts "The Wizard conjures a fireball and blasts it toward the target. Target HP: #{target.health}"
        end
    end
end

w1 = Wizard.new
h1 = Human.new

w1.heal
w1.fireball(h1)