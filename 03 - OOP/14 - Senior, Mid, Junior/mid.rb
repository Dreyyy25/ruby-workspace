require_relative 'developer'

class Mid < Developer

    def initialize
        super
        @knowledge += 5
    end

    def pair_programming(obj)
        if obj.class.ancestors.include?(Developer)
            @time -= 3
            @energy -= 3
            obj.time -= 3
            obj.energy -= 3
            true
        else
            false
        end
    end

    def break
        @energy = 100
    end
end

mid = Mid.new
mid2 = Mid.new

puts "Mid knowledge: #{mid.knowledge}"
puts "Mid time: #{mid.time}"
puts "Mid energy: #{mid.energy}"

mid.pair_programming(mid2)

puts "Mid time after pair programming: #{mid.time}"
puts "Mid energy after pair programming: #{mid.energy}"
puts "Mid 2 time after pair programming: #{mid2.time}"
puts "Mid 2 energy after pair programming: #{mid2.energy}"

mid.break
puts "Mid energy after break: #{mid.energy}"