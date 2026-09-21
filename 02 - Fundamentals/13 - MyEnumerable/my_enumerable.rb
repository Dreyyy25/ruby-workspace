module MyEnumerable
    def my_each
        return to_enum(:my_each) unless block_given?

        for i in 0...self.length
            yield(self[i])
        end

        self # Enumerable methods conventionally return the original collection when iterating
    end
end
class Array
    include MyEnumerable
end
[1,2,3,4].my_each { |i| puts i } # => 1 2 3 4
[1,2,3,4].my_each { |i| puts i * 10 } # => 10 20 30 40