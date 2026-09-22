require_relative 'developer'

class Junior < Developer

    @@count = 0

    def initialize
        super
        @energy += 50
        @@count += 1
    end

    def self.how_many
        puts @@count
    end
end

junior = Junior.new
junior2 = Junior.new

puts "Junior energy: #{junior.energy}"
Junior.how_many