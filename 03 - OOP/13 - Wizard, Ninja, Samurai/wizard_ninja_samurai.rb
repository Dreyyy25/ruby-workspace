require_relative "human"

class Wizard < Human
    def initialize
        super
        @health = 50
        @intelligence = 25
    end

    def heal
        @health += 10
    end

    def fireball(obj)
        obj.health -= 20
    end
end

class Ninja < Human
    def initialize
        super
        @stealth = 175
    end

    def steal(obj)
        attack(obj)
        @health += 10
    end

    def get_away
        @health -= 15
    end
end

class Samurai < Human
    @@samurais = 0

    def initialize
        super
        @health = 200
        @@samurais += 1
    end

    def death_blow(obj)
        attack(obj)
        obj.health = 0
    end

    def meditate
        @health = 200
    end

    def self.how_many
        puts @@samurais
        @@samurais
    end
end
