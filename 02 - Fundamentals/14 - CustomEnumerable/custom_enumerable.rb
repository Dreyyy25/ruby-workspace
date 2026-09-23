module CustomEnumerable
  def my_each
    each { |item| yield item }
    self
  end

  def my_detect
    result = nil
    my_each do |item|
      if result.nil? && yield(item)
        result = item
      end
    end
    result
  end

  def my_find_all
    results = []
    my_each { |item| results << item if yield item }
    results
  end
end

class Array
  include CustomEnumerable
end

class Range
  include CustomEnumerable
end

[1, 2, 3, 4].my_each { |i| puts i }
puts "------------------------"
[1, 2, 3, 4].my_each { |i| puts i * 10 }
puts "------------------------"

puts (1..100).my_detect { |i| i % 5 == 0 && i % 7 == 0 }
puts (1..10).my_find_all { |i| i % 3 == 0 }.inspect