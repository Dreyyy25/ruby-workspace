class MathDojo
    attr_accessor :result

    def initialize
        @result = 0
    end

    def add *numbers
        @result += total_numbers(numbers) 
        self
    end

    def subtract *numbers
        @result -= total_numbers(numbers)
        self
    end

    private def total_numbers *numbers
        total = 0
        numbers.each {
            |element|
            if element.class == Array
                total += total_numbers(*element)
            else
                total += element
            end
        }
        total
    end
end

challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15
puts challenge1
puts challenge2