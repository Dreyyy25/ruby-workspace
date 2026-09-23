class Character
  attr_reader :manna

  def initialize
    @manna = 100
  end

  def show_stats
    puts "Manna: #{@manna}"
  end

  protected

  def change_manna(amount)
    @manna += amount
  end
end
