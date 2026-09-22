require_relative "developer"

class Mid < Developer
    def initialize
        super
        @intelligence = 85
    end

    def pair_programming partner
        if partner.class.ancestors.include?(Developer)
            partner.time -= 3
            partner.energy -= 3
            @time -= 3
            @energy -= 3
            puts "The Mid Developer and a partner programs together. Self (Time: #{@time}, Energy: #{@energy}) | Partner (Time: #{partner.time}, Energy: #{partner.energy})"
        end
    end
    
    def break 
        @energy = 100
        puts "The Mid Developer took a break. Energy: #{@energy}"
    end
end

m1 = Mid.new
d1 = Developer.new

m1.pair_programming(d1)
m1.break