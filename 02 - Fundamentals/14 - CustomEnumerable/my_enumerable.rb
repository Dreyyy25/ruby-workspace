module CustomEnumerable
    def my_each(arr = self)
        if arr.class == Array
            for i in 0...arr.size
                yield arr[i]
            end
        else 
            current = self.begin
            while current <= self.end
                yield current
                current += 1
            end
        end
    end

    def my_detect
        my_each(self) { 
            |element|
            result = yield(element)
            return result if result == true 
        } 
    end

    def my_find_all
        results = []
        my_each(self) { 
            |element|
            result = yield(element)
            results.push(element) if result == true 
        } 
        return results
    end
end

class Array
    include CustomEnumerable
end
class Range
    include CustomEnumerable
end

[1,2,3,4].my_each { |i| puts i }
[1,2,3,4].my_each { |i| puts i * 10 }
puts (1..100).my_detect { |i| i %5 == 0 and i % 7 == 0 } # => 35
p (1..10).my_find_all { |i| i % 3 == 0 } # => [3, 6, 9]