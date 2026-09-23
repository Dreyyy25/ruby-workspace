require_relative "character"

class Swordsman < Character
  def initialize
    # set the swordsmans starting manna here
    @manna = 120
  end

  def slash
    change_manna(-5)
  end

  def double_hit
    change_manna(-10)
  end

  def combo_slash
    change_manna(-20)
  end

  def show_stats
    puts "This is Swordsman"
    puts "Manna: #{@manna}"
  end
end

swordsman = Swordsman.new
3.times { swordsman.double_hit }
2.times { swordsman.combo_slash }
2.times { swordsman.slash }
swordsman.show_stats
