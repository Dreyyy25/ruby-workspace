# 1. 
# grades = [90, 92, 95, 84, 87, 98, 80]
# average = grades.sum.to_f / grades.length
# puts "Average: #{average.round(2)}"

# def results(grades)
#     grades.find_all { |i| i < 90}
# end

# puts results(grades)

# 2. 
# fruits = ["Grapes", "Banana", "Cherry", "Apple", "Melon"]
# fruits.sort!
# puts "Sorted List:"
# puts fruits

# new_fruits = fruits.find_all { |fruit| fruit.length <= 5  }
# puts "\nNew Fruits:"
# puts new_fruits

# 3. 
# chars = ("a".."z").to_a
# 3.times do 
#     chars.shuffle!
# end
# puts chars
# puts "\nFirst Letter: #{chars.first}"

# def consonant?(char)
#     unless "aeiou".include?(char.downcase)
#         puts "The first letter: #{char} is a consonant!"
#     end
# end
# consonant?(chars.first)

# 4. 
# puts random_nums = Array.new(12) { rand(1..100) }

# 5. 
# random_nums = Array.new(12) { rand(1..100) }
# sorted_nums = random_nums.sort.reverse
# puts sorted_nums
# puts "\nFirst Num: #{sorted_nums.first} || Last Num: #{sorted_nums.last}"

# 6. 
# captcha = ""
# 7.times do 
#     captcha += (65 + rand(26)).chr
# end 
# puts captcha

# 7.
# strings = []

# 10.times do 
#     string = ""

#     7.times do 
#         string += (65 + rand(26)).chr
#     end

#     strings << string 
# end
# puts strings