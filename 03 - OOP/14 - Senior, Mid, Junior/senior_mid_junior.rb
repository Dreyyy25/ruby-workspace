require_relative "developer"

class Senior < Developer
    attr_accessor :intelligence

    def initialize
        super
        @intelligence = 90
    end

    def interview
        @time -= 0.5
    end

    def assign(obj)
        obj.time += 2
    end
end

class Mid < Developer
    attr_accessor :intelligence

    def initialize
        super
        @intelligence = 85
    end

    def pair_programming(obj)
        @time -= 3
        @energy -= 3
        obj.time -= 3
        obj.energy -= 3
    end

    def break
        @energy = 100
    end
end

class Junior < Developer
    @@juniors = 0

    def initialize
        super
        @energy = 150
        @@juniors += 1
    end

    def self.how_many
        puts @@juniors
        @@juniors
    end
end
