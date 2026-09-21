# 1 
puts "Number 1"
arr1 = [90, 92, 95, 84, 87, 98, 80]
def grade_filter(arr)
    puts "AVG: #{arr.sum.fdiv(arr.length)}"
    return arr.find_all { |number| number >= 90 }
end
puts grade_filter(arr1)

# 2
puts "Number 2"
arr2 = ["Grapes", "Banana", "Cherry", "Apple", "Melon"]
def shuffle_print(arr)
    puts "SORTED: #{arr.sort}"
    return arr.find_all { |name| name.length <= 5 }
end
p shuffle_print(arr2)

# 3
puts "Number 3"
arr3 = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
def first_last(arr)
    3.times { arr.shuffle! }
    puts "FIRST: #{arr[0]}"
    puts "I'm not a vowel!" unless ["a", "e", "i", "o", "u"].include?(arr[0])
end
first_last(arr3)

# 4 
puts "Number 4"
arr4 = Array.new(12) { rand(1..100) }

# 5
puts "Number 5"
arr4 = Array.new(12) { rand(1..100) }
def sort_max_min(arr)
    arr.sort! {|a,b| b<=>a}
    puts "1-100 Array: #{arr}"
    puts "MAX: #{arr.max} | MIN: #{arr.min}"
end
sort_max_min(arr4)

# 6
puts "Number 6"
letters = (Array.new(7) { (65+rand(26)).chr }).join('')
puts letters

# 7 
puts "Number 7"
def gen_string()
    return (Array.new(7) { (65+rand(26)).chr }).join('')
end
arr7 = Array.new(10){ gen_string }
p arr7