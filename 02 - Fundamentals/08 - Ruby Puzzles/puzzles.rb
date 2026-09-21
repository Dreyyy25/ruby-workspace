# 1.
# numbers = [3, 5, 1, 2, 7, 9, 8, 13, 25, 32]

# def result(numbers)
#     numbers.find_all { |i| i > 10}
# end

# puts numbers.sum
# puts result(numbers)

# 2.
# names = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
# shuffled_names = names.shuffle

# def results(names)
#     names.find_all { |name| name.length > 5 }
# end

# puts "Shuffled Names:"
# shuffled_names.each { |name| puts name}

# puts "\nNames longer than 5 characters:"
# puts results(shuffled_names)

# 3. 
# alphabets = ("a".."z").to_a
# shuffled_chars = alphabets.shuffle

# puts shuffled_chars

# last_letter = shuffled_chars.last
# puts "\nLast letter: #{last_letter}"

# def vowel?(character)
#     if "aeiou".include?(character.downcase)
#         puts "The first letter: #{character} is a vowel"
#     end
# end

# first_letter = shuffled_chars.first
# vowel?(first_letter)

# 4. 
# numbers = []

# 10.times do
#     numbers << rand(55..100)
# end

# puts numbers

# 5.
# numbers = []

# 10.times do
#     numbers << rand(55..100)
# end

# numbers.sort!

# puts numbers
# puts "\nMinimum: #{numbers.min}"
# puts "Maximum: #{numbers.max}"

# 6. 
# string = ""

# 5.times do
#     string += (65 + rand(26)).chr
# end

# puts string

# 7. 
# strings = []

# 10.times do
#     string = ""

#     5.times do
#         string += (65 + rand(26)).chr
#     end

#     strings << string
# end

# puts strings