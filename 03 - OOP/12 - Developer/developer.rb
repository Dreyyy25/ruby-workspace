class Developer
    attr_accessor :knowledge

    def initialize 
        @energy = 100
        @knowledge = 80
        @time = 8
    end

    def code_review target
        if target.class.ancestors.include?(Developer)
            target.knowledge += 5
            puts "The target's code has been reviewed. Knowledge: #{target.knowledge}"
        else
            puts "The target is not a developer."
        end
    end
end

d1 = Developer.new
d2 = Developer.new

d1.code_review(d2)