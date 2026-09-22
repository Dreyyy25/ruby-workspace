require_relative 'developer'

class Senior < Developer

    @@count = 0

    def initialize
        super
        @knowledge += 10
        @@count += 1
    end

    def interview
        @time -= 0.5
    end

    def assign(obj)
        if obj.class.ancestors.include?(Developer)
            obj.time += 2
            true
        else
            false
        end
    end
end

senior = Senior.new
senior2 = Senior.new

puts "Senior knowledge: #{senior.knowledge}"
puts "Senior time: #{senior.time}"

senior.interview
puts "Senior time after interview: #{senior.time}"

senior.assign(senior2)
puts "Senior 2 time after being assigned: #{senior2.time}"