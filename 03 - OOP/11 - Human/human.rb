class Human 
    attr_accessor :health

    def initialize 
        @health = 100
        @strength = 3
        @stealth = 3
        @intelligence = 3
    end

    def attack target
        if target.class.ancestors.include?(Human)
            target.health -= 5
            puts "The attack lands. Target HP: #{target.health}"
        else 
            puts "The attack fails. Maybe the target isn't human?"
        end
    end
end

h1 = Human.new
h2 = Human.new
h1.attack(h2)