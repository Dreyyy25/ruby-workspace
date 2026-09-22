require_relative '../06 - Shaman/character'

class Swordsman < Character
    def initialize
        super()
        @manna = 120
    end

    def slash
        @manna -= 5
        self
    end

    def double_hit
        @manna -= 10
        self
    end

    def combo_slash
        @manna -= 20
        self
    end

    def show_stats
        puts "This is Swordsman"
        super
    end
end

swordsman = Swordsman.new
swordsman.double_hit.double_hit.double_hit.combo_slash.combo_slash.slash.slash.show_stats