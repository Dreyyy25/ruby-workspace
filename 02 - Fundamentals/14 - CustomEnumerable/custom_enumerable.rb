module CustomEnumerable
    def my_each
        return to_enum(:my_each) unless block_given?

        for item in self
            yield(item)
        end

        self # Enumerable methods conventionally return the original collection when iterating
    end

    def my_detect
        return to_enum(:my_detect) unless block_given?

        my_each do |item|
            return item if yield(item)
        end

        nil
    end

    def my_find_all
        return to_enum(:my_find_all) unless block_given?
        
        results = []
        my_each do |item|
            if yield(item)
                results.push(item)
            end
        end

        results
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