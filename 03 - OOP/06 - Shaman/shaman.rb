require_relative 'character'
class Shaman < Character
    def heal
        @mana += 10
        puts "The Shaman healed his wounds. Mana: #{@mana}"
    end

    def attack 
        @mana -= 2
        puts "The Shaman casts a spell to attack you. Mana: #{@mana}"
    end

    def teleport
        @mana -= 3
        puts "The Shaman teleports across the field. Mana: #{@mana}"
    end
end

shaman = Shaman.new
3.times { shaman.attack }
2.times { shaman.teleport }
shaman.heal
shaman.show_stats
