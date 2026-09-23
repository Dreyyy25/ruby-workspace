require_relative "character"

class Shaman < Character
    def heal
        @manna += 10
        self
    end

    def attack
        @manna -= 2
        self
    end

    def teleport
        @manna -= 3
        self
    end
end

shaman = Shaman.new
shaman.attack.attack.attack.teleport.teleport.heal.show_stats
