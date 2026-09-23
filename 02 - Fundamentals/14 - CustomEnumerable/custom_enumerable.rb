module CustomEnumerable
    def my_each
        for i in 0...self.length #... is exlusive at the end in the range
            yield(self[i])
        end
        self
    end

    def my_detect
        self.my_each { |item|
            if yield(item)
                return item
            end
        }
        nil
    end

    def my_find_all
        # final_arr = []
        # for i in 0...self.length 
        #     if yield(self[i])
        #         final_arr.push(self[i])
        #     end
        # end
        # final_arr
        final_arr = []
        self.my_each {|item| #item is the element itself not the index
            if yield(item)
                final_arr.push(item)
            end
        }
    end
end

class Array
    include MyEnumerable
end

[1, 2, 3, 4].my_each { |i| puts i } # => 1 2 3 4
[1, 2, 3, 4].my_each { |i| puts i * 10 } # => 10 20 30 40