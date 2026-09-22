class Thing

end

class Human

    attr_accessor :health

    def initialize()
        @strength = 3
        @stealth = 3
        @intelligence = 3
        @health = 100
    end

    def attack(target)
        if target.class.ancestors.include?(Human)
            target.health -= @strength
            puts "You attacked a human"
        else
            puts "You attacked a thing."
        end
    end
end

human1 = Human.new
human2 = Human.new 
thing1 = Thing.new

human1.attack(human2)
puts "Targets Health post Attack: #{human2.health}"

human1.attack(thing1)