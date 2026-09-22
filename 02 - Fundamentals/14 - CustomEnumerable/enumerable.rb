module CustomEnumerable
  def my_each
    # your code here!
    for i in 0...self.length
        yield self[i] # Added a yield to jump out of the loop
    end
    self
  end
end

class Array
   include CustomEnumerable
end

[1,2,3,4].my_each { |i| puts i } # => 1 2 3 4
[1,2,3,4].my_each { |i| puts i * 10 } # => 10 20 30 40