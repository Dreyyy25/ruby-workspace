class Mammal
  attr_reader :health

  def initialize
    @health = 150
  end

  def display_health
    puts "Health: #{@health}"
  end

  protected

  def change_health(amount)
    @health += amount
  end
end
