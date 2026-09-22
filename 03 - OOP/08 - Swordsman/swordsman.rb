require_relative 'character'

class Swordsman < Character
    def initialize 
        @mana = 120
    end

    def slash
        @mana -= 5
        puts "The swordsman slashes with his sword. Mana #{@mana}"
    end

    def double_hit
        @mana -= 10
        puts "The swordsman hits with the hilt twice. Mana #{@mana}"
    end

    def combo_slash
        @mana -= 20
        puts "The swordsman unleashes a flurry of slashes. Mana #{@mana}"
    end

    def show_stats
        puts "This is a swordsman."
        super
    end
end

swordsman = Swordsman.new
3.times { swordsman.double_hit }
2.times { swordsman.combo_slash }
2.times { swordsman.slash }
swordsman.show_stats