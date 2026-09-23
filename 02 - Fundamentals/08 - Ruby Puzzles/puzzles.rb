# puzzle 1
arr = [3, 5, 1, 2, 7, 9, 8, 13, 25, 32]
def sum_and_greater_than_10(arr)
    puts "Sum: #{arr.sum}"
    arr.find_all {|val| val > 10}
end
puts "Greater than 10: #{sum_and_greater_than_10(arr).inspect}"

# puzzle 2
names = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
def shuffle_and_longer_than_5(arr)
    shuffled = arr.shuffle
    shuffled.each {|name| puts name}
    shuffled.find_all {|name| name.length > 5}
end
puts "Longer than 5: #{shuffle_and_longer_than_5(names).inspect}"

# puzzle 3
letters = ("a".."z").to_a.shuffle
puts "Last letter: #{letters.last}"
puts "First letter: #{letters.first}"
vowels = %w{a e i o u}
if vowels.include?(letters.first)
    puts "The first letter '#{letters.first}' is a vowel!"
end

# puzzle 4
random_numbers = (1..10).map { rand(55..100) }
puts "10 random numbers (55-100): #{random_numbers.inspect}"

# puzzle 5
sorted_random = (1..10).map { rand(55..100) }.sort
puts "Sorted random numbers: #{sorted_random.inspect}"
puts "Min: #{sorted_random.min}"
puts "Max: #{sorted_random.max}"

# puzzle 6
str = (1..5).map { (65 + rand(26)).chr }.join
puts "Random 5-character string: #{str}"

# puzzle 7
random_strings = (1..10).map { (1..5).map { (65 + rand(26)).chr }.join }
puts "10 random strings: #{random_strings.inspect}"
