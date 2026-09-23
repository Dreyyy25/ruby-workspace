module MyEnumerable
  def my_each
    for i in 0...length
      yield self[i]
    end
  end
end

class Array
  include MyEnumerable
end

[1, 2, 3, 4].my_each { |i| puts i }
puts "------------------------"
[1, 2, 3, 4].my_each { |i| puts i * 10 }