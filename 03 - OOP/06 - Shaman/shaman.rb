require_relative "character"

class Shaman < Character
  def heal
    change_manna(10)
  end

  def attack
    change_manna(-2)
  end

  def teleport
    change_manna(-3)
  end
end

shaman = Shaman.new
3.times { shaman.attack }
2.times { shaman.teleport }
shaman.heal
shaman.show_stats
