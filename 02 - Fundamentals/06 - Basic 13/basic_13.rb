# print 1-255
(1..255).each { |n| puts n}

# print odd numbers between 1-255
# incrementng by 2 will always be odd if starting on an odd number, same for even
{1..255}.step(2) { |n| puts n}

# print sum 0-255
sum = 0
(0..255).each {|n| puts "Sum: #{sum+=n}"}

# iterate through an array
x = [1, 3, 5, 7, 9, 13]
x.each {|n| puts n}

# find max
def print_max(arr)
    puts arr.max
end
print_max([1, 2, 3])

# get average 
def print_avg(arr)
    if arr.empty
        return 0
    end

    puts arr.sum.to_f / arr.length
end
print_avg([1, 2, 3])

# array with odd numbers
y = (1..255).step(2).to_a
puts "y: #{y.inspect}"

# greater than y
def greater_than_y(arr, y)
    arr.count {|val| val > y}
end
puts greater_than_y([1, 3, 5, 7], 3)

# square the values
x = [1, 5, 10, -2]
x.map! {|val| val*val} #! mutates the original arr
puts "Squared array: #{x.inspect}"

# eliminate negative numebrs
x = [1, 5, 10, -2]
x.map! {|val| val.negative? 0:val}
puts "New array: #{x.inspect}"

# max, min, and average
def max_min_avg(arr)
    {
        max: arr.max,
        min: arr.min
        avg: arr.sum/arr.length
    }
end
puts "Hash: #{max_min_average([1, 5, 10, -2])}"

# shifting the values in an array
x = [1, 5, 10, 7, -2]
x.shift
x.push(0)
puts "Shifted array: #{x.inspect}"

# number to string
x = [-1, -3, 2]
x.map! {|val| val.negative? ? "Dojo":val} 
puts "Numbers to strings: #{x.inspect}"
