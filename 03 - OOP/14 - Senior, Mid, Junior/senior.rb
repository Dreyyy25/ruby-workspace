require_relative "developer"

class Senior < Developer
    def initialize 
        super
        @intelligence = 90
    end

    def interview
        @time -= 0.5
        puts "The Senior Dev conducts an interview. New Time: #{@time}"
    end

    def assign target
        if target.class.ancestors.include?(Developer)
            target.time += 2
            puts "The Senior Dev assigns a task. Target Time: #{target.time}"
        end
    end
end

d1 = Developer.new
s1 = Senior.new

s1.interview
s1.assign(d1)