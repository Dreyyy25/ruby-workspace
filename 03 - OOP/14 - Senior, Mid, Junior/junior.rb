require_relative "../12 - Developer/developer.rb"

class Junior < Developer
  @@junior_count = 0

  def initialize
    super
    @energy = 150
    @@junior_count += 1
  end

  def self.how_many
    puts @@junior_count
  end
end
