require_relative '../11 - Human/human'

class Samurai < Human
    @@samurai_count = 0
    def initialize
        super()
        @health = 200

        @@samurai_count += 1
    end

    def death_blow(target)
        if target.class.ancestors.include?(Human)
            target.health = 0
        end
        self
    end

    def meditate
        @health = 200
        self
    end

    def self.how_many
        @@samurai_count
    end
end