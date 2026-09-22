require_relative '../11 - Human/human'

class Wizard < Human
    def initialize
        super()
        @health = 50
        @intelligence = 25
    end

    def heal
        @health += 10
        self
    end

    def fireball(target)
        if target.class.ancestors.include?(Human)
            target.health -= 20
        end
        self
    end
end