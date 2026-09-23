require_relative "../11 - Human/human.rb"

class Samurai < Human
  @@samurai_count = 0

  def initialize
    super
    @health = 200
    @@samurai_count += 1
  end

  def death_blow(target)
    if target.class.ancestors.include?(Human)
      target.health = 0
      true
    else
      false
    end
  end

  def meditate
    @health = 200
  end

  def self.how_many
    puts @@samurai_count
  end
end