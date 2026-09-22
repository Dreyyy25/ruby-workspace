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
            target.health -= 10
            puts "The attack lands. Target HP: #{target.health}"
            true
        else 
            puts "The attack fails. Maybe the target isn't human?"
            false
        end
    end
end