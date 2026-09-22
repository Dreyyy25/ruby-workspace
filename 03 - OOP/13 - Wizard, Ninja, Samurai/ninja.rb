require_relative "human"

class Ninja < Human

    def initialize
        super
        @stealth = 175
    end

    def steal target
        if attack(target) == true
            @health += 10
            puts "The Ninja heals himself. New HP: #{@health}"
        end
    end

    def get_away
        @health -= 15
        puts "The Ninja vanishes in a cloud of smoke."
    end
end

n1 = Ninja.new
h1 = Human.new

n1.steal(h1)
n1.get_away