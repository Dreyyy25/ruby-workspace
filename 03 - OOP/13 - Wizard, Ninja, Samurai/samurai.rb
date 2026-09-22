require_relative 'human'

class Samurai < Human 

    @@count = 0

    def initialize
        super 
        @health += 100
        @@count += 1
    end

    def death_blow(obj)
        if obj.class.ancestors.include?(Human)
            obj.health -= obj.health
            true
        else
            false
        end
    end

    def meditate
        @health = 200
    end

    def self.how_many
        puts @@count
    end
end

sam = Samurai.new
sam2 = Samurai.new

puts "Samurai health: #{sam.health}"
puts "Samurai 2 health: #{sam2.health}"

Samurai.how_many

sam.attack(sam2)
puts "Samurai 2 health after normal attack: #{sam2.health}"

sam2.meditate
puts "Samurai 2 health after meditate: #{sam2.health}"

sam.death_blow(sam2)
puts "Samurai 2 health after death blow: #{sam2.health}"

Samurai.how_many