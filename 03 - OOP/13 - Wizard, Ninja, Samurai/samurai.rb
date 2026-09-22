require_relative "human"

class Samurai < Human
    @@samurai_count = 0

    def initialize
        super
        @health = 200
        @@samurai_count += 1
    end

    def death_blow target
        if target.class.ancestors.include?(Human)
            target.health = 0
            puts "The Samurai performs a death blow, killing its target. Target HP: #{target.health}"
        else
            puts "The Samurai misses a death blow."
        end
    end

    def medidate 
        @health = 200
        puts "The Samurai taps into a state of zen and inner peace. New HP: #{@health}"
    end

    def how_many
        puts "There are #{@@samurai_count} Samurai/s."
    end
end

s1 = Samurai.new
s2 = Samurai.new

s1.death_blow(s2)
s2.medidate
s2.how_many