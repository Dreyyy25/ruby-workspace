# 1. Print 1-255
1.upto(255) { |i| print i, " " }
puts
puts "------------------------"

# 2. Print odd numbers between 1-255
puts (1..255).select(&:odd?).inspect
puts "------------------------"

# 3. Print Sum
sum = 0
0.upto(255) { |i| sum += i; puts "New number: #{i} Sum: #{sum}" }
puts "------------------------"

# 4. Iterate through an array
x = [1, 3, 5, 7, 9, 13]
x.each { |value| puts value }
puts "------------------------"

# 5. Find Max
def find_max(values)
  values.max
end

puts find_max([-3, -5, -7])
puts "------------------------"

# 6. Get Average
def average(values)
  values.sum.to_f / values.length
end

puts average([2, 10, 3])
puts "------------------------"

# 7. Array with Odd Numbers
y = (1..255).select(&:odd?)
puts y.inspect
puts "------------------------"

# 8. Greater Than Y
def greater_than(values, y)
  values.count { |value| value > y }
end

puts greater_than([1, 3, 5, 7], 3)
puts "------------------------"

# 9. Square the Values
def square_values(values)
  values.map! { |value| value * value }
end

puts square_values([1, 5, 10, -2]).inspect
puts "------------------------"

# 10. Eliminate Negative Numbers
def eliminate_negatives(values)
  values.map! { |value| if value.negative? then 0 else value end }
end

puts eliminate_negatives([1, 5, 10, -2]).inspect
puts "------------------------"

# 11. Max, Min, and Average
def stats(values)
  { max: values.max, min: values.min, average: average(values) }
end

puts stats([1, 5, 10, -2]).inspect
puts "------------------------"

# 12. Shifting the Values in the Array
def shift_values(values)
  values.rotate << 0
end

puts shift_values([1, 5, 10, 7, -2]).inspect
puts "------------------------"

# 13. Number to String
def replace_negatives(values)
  values.map { |value| if value.negative? then "Dojo" else value end }
end

puts replace_negatives([-1, -3, 2]).inspect
