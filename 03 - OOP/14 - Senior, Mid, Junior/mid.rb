require_relative '../12 - Developer/developer'

class Mid < Developer
    attr_reader :intelligence
    
    def initialize
        super()
        @intelligence = 85
    end

    def pair_programming(target)
        @time -= 3
        @energy -= 3
        if target.class.ancestors.include?(Developer)
            target.time -= 3
            target.energy -= 3
        end
        self
    end

    def take_break
        @energy = 100
        self
    end
end