# 1 
puts "Number 1"
arr1 = [3,5,1,2,7,9,8,13,25,32]
def print_filter(arr)
    puts "SUM: #{arr.sum}"
    return arr.find_all { |number| number > 10 }
end
puts print_filter(arr1)

# 2
puts "Number 2"
arr2 = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
def shuffle_print(arr)
    puts "SHUFFLED: #{arr.shuffle}"
    return arr.find_all { |name| name.length > 5 }
end
puts shuffle_print(arr2)

# 3
puts "Number 3"
arr3 = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
def first_last(arr)
    arr.shuffle!
    puts "FIRST: #{arr[0]} | LAST: #{arr[arr.length - 1]}"
    puts "I'm a vowel!" if ["a", "e", "i", "o", "u"].include?(arr[0])
end
first_last(arr3)

# 4 
puts "Number 4"
arr4 = Array.new(10) { rand(55..100) }

# 5
puts "Number 5"
arr4 = Array.new(10) { rand(55..100) }
def sort_max_min(arr)
    arr.sort!
    puts "55-100 Array: #{arr}"
    puts "MAX: #{arr.max} | MIN: #{arr.min}"
end
sort_max_min(arr4)

# 6
puts "Number 6"
letters = (Array.new(5) { (65+rand(26)).chr }).join('')
puts letters

# 7 
puts "Number 7"
def gen_string()
    return (Array.new(5) { (65+rand(26)).chr }).join('')
end
arr7 = Array.new(10){ gen_string }
p arr7