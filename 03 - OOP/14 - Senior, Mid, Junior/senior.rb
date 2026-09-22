require_relative '../12 - Developer/developer'

class Senior < Developer
    attr_reader :intelligence

    def initialize
        super()
        @intelligence = 90
    end

    def interview
        @time -= 0.5
        self
    end

    def assign(target)
        if target.class.ancestors.include?(Developer)
            target.time += 2
        end
        self
    end
end