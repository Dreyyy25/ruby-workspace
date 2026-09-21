# 1. Print 1-255
# puts (1..255).to_a


# 2. Print odd numbers between 1-255
# puts (1..255).reject { |i| i.even? }

# 3. Print Sum
# sum = 0
# (0..255).each do |num|
#     sum += num
#     puts "New number: #{num} Sum: #{sum}"
# end

# 4. Iterating through an array
# x = [1, 3, 5, 7, 9, 13].each {|num| puts num}

# 5. Find Max
# array = [-3, -5, -7]
# puts array.max

# 6. Get Average
# array = [2, 10, 3]
# average = array.sum / array.length.to_f # converted to float
# puts average

# 7. Array with Odd Numbers 
# puts y = (1..255).reject { |i| i.even? }

# 8. Greater Than Y
# array = [1, 3, 5, 7]; y = 3;
# puts array.count { |num| num > y }

# 9. Square the values
# x = [1, 5, 10, -2]
# puts squared = x.map! { |num| num**2 }

# 10. Eliminate Negative Numbers
# x = [1, 5, 10, -2]
# x.map! { |num| num < 0 ? 0 : num }
# puts x

# 11. Max, Min, and Average 
# x = [1, 5, 10, -2]

# result = {
#     max: x.max,
#     min: x.min,
#     average: x.sum.to_f / x.length
# }

# puts result

# 12. Shifting the Values in the Array
# x = [1, 5, 10, 7, -2]
# x.shift
# x.push(0)
# puts x

# 13. Number to String
# x = [-1, -3, 2]
# x = x.map { |num| num < 0 ? "Dojo" : num }
# puts x