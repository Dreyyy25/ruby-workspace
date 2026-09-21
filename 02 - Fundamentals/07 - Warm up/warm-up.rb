# 1. Print 1 to 15
1.upto(15) { |number| puts number }
puts "------------------------"

# 2. Print even numbers between 1 to 15
(1..15).select(&:even?).each { |number| puts number }
puts "------------------------"

# 3. Print Haha
saying = ""
1.upto(15) do |intensity|
  saying += "ha"
  puts "Laugh Intensity: #{intensity} Saying: \"#{saying}\""
end
puts "------------------------"

# 4. Iterating array
numbers = [1, 3, 10, 2, 7]
numbers.each { |number| puts number }
puts "------------------------"

# 5. Find Min
def find_min(values)
  values.min
end

puts find_min([-3, -5, -7])
puts "------------------------"

# 6. Get Final Grade
def final_grade(grades)
  grades.sum.to_f / grades.length
end

puts "#{final_grade([77, 80, 85, 88])}%"
puts "------------------------"

# 7. List Even Numbers Array
list = (1..100).select(&:even?)
puts list.inspect
puts "------------------------"

# 8. Count Passing Scores
def count_passing_scores(scores, passing_score)
  scores.count { |score| score >= passing_score }
end

puts count_passing_scores([10, 5, 8, 7, 9], 8)
puts "------------------------"

# 9. Triple the values
def triple_values(values)
  values.map { |value| value * value * value }
end

puts triple_values([2, 1, 6, -3]).inspect
puts "------------------------"

# 10. Digit to Word
def zero_to_word(values)
  values.map { |value| if value == 0 then "zero" else value end }
end

puts zero_to_word([1, 0, 0, -2]).inspect
puts "------------------------"

# 11. First, Last, Size
def array_details(values)
  { first: values.first, last: values.last, size: values.size }
end

puts array_details([1, 5, 10, -2]).inspect
puts "------------------------"

# 12. Moving Values
def move_values(values)
  values.rotate
end

puts move_values([2, 6, 11, 8, -2]).inspect