# 1
def below90(grades)
  grades.find_all { |grade| grade < 90 }
end

grades = [90, 92, 95, 84, 87, 98, 80]
sum = 0
grades.each { |grade| sum += grade }
puts "Average: #{sum.to_f / grades.length}"
puts "Grades below 90: #{below90(grades).inspect}"
puts "------------------------"

# 2
def shortfruits(fruits)
  fruits.find_all { |fruit| fruit.length <= 5 }
end

fruits = %w[Grapes Banana Cherry Apple Melon].sort
fruits.each { |fruit| puts fruit }
puts "Fruits no longer than 5 characters: #{shortfruits(fruits).inspect}"
puts "------------------------"

# 3
alphabet = ("a".."z").to_a
3.times { alphabet = alphabet.shuffle }
puts "First letter: #{alphabet.first}"
if "aeiou".include?(alphabet.first) == false
  puts "The first letter is not a vowel."
end
puts "------------------------"

# 4
nums = (1..12).collect { rand(1..100) }
puts "Random numbers: #{nums.inspect}"
puts "------------------------"

# 5
sorted = (1..12).collect { rand(1..100) }.sort.reverse
puts "Sorted numbers: #{sorted.inspect}"
puts "Largest: #{sorted.max}"
puts "Lowest: #{sorted.min}"
puts "------------------------"

# 6
captcha = (1..7).collect { (65 + rand(26)).chr }.join
puts "Captcha: #{captcha}"
puts "------------------------"

# 7
strings = (1..10).collect do
  (1..7).collect { (65 + rand(26)).chr }.join
end
puts "Random strings: #{strings.inspect}"