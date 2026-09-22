require_relative "developer"

class Junior < Developer
    @@junior_count = 0

    def initialize 
        super
        @energy = 150
        @@junior_count += 1
    end

    def how_many 
        puts "There are #{@@junior_count} junior/s."
    end
end

j1 = Junior.new
j2 = Junior.new

j1.how_many

