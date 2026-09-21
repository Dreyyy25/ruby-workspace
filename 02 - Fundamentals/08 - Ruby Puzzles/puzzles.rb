# 1
def over10(nums)
  nums.find_all { |num| num > 10 }
end

nums = [3, 5, 1, 2, 7, 9, 8, 13, 25, 32]
sum = 0
nums.each { |num| sum += num }
puts "1. Sum: #{sum}"
puts "Numbers greater than 10: #{over10(nums).inspect}"
puts "------------------------"

# 2
def longnames(names)
  names.find_all { |name| name.length > 5 }
end

names = %w[John KB Oliver Cory Matthew Christopher]
shuffled = names.shuffle
puts "2. Shuffled names:"
shuffled.each { |name| puts name }
puts "Names longer than 5 characters: #{longnames(names).inspect}"
puts "------------------------"

# 3
alphabet = ("a".."z").to_a.shuffle
puts "3. First letter: #{alphabet.first}"
puts "Last letter: #{alphabet.last}"
if "aeiou".include?(alphabet.first)
  puts "The first letter is a vowel."
end
puts "------------------------"

# 4
nums = (1..10).collect { rand(55..100) }
puts "4. Random numbers: #{nums.inspect}"
puts "------------------------"

# 5
sorted = (1..10).collect { rand(55..100) }.sort
puts "5. Sorted numbers: #{sorted.inspect}"
puts "Minimum: #{sorted.min}"
puts "Maximum: #{sorted.max}"
puts "------------------------"

# 6
def random_string(length)
  (1..length).collect { (65 + rand(26)).chr }.join
end

puts "6. Random string: #{random_string(5)}"
puts "------------------------"

# 7
strings = Array.new(10) { random_string(5) }
puts "7. Random strings: #{strings.inspect}"