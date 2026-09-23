class Developer
    attr_accessor :knowledge, :time, :energy

    def initialize
        @knowledge = 80
        @time = 8
        @energy = 100
    end

    def code_review(obj)
        if obj.class.ancestors.include?(Developer)
            obj.knowledge += 10
            true
        else
            false
        end
    end
end
