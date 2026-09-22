class Thing

end

class Developer

    attr_accessor :knowledge

    def initialize()
        @knowledge = 80
        @time = 8
        @energy = 100
    end

    def code_review(target)
       if target.class.ancestors.include?(Developer)
            target.knowledge += 10
            puts "You reviewed the Junior's code."
       else
            puts "You did not review anything."
       end
    end
end

senior = Developer.new
junior = Developer.new
thing1 = Thing.new

senior.code_review(junior)
puts "The Junior learned something: #{junior.knowledge}"

senior.code_review(thing1)