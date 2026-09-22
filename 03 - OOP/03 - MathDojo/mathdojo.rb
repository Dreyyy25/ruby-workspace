class MathDojo
    
    def initialize
        @result = 0
    end

    def add(*params)
        @result += params.flatten.sum # Added flatten to merge arrays
        self
    end

    def subtract(*params)
        @result -= params.flatten.sum # Added flatteb to merge arrays
        self
    end

    def result
        puts @result
    end

end 

challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result 