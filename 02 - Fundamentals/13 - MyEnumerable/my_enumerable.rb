module MyEnumerable
    def my_each
        for i in 0...self.length #... is exlusive at the end in the range
            yield(self[i])
        end
        self #return original array to allow method chaining after .my_each
    end
end

class Array
    include MyEnumerable
end

[1, 2, 3, 4].my_each { |i| puts i } # => 1 2 3 4
[1, 2, 3, 4].my_each { |i| puts i * 10 } # => 10 20 30 40

