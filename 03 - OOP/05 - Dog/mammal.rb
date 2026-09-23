class Mammal
  attr_reader :health

  def initialize
    @health = 150
  end

  def display_health
    puts "Health: #{@health}"
  end

  protected

  # the child classes can change health but users cant change it directly
  def change_health(amount)
    @health += amount
  end
end
