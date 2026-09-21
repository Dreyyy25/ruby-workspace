# 1. Print 1 to 15
# 1.upto(15) { |i| puts i }

# 2. Print even numbers between 1 to 15
# puts (1..15).reject { |i| i.odd? }

# 3. Print Haha
# intensity = ""
# (1..15).each do |num|
#     intensity += "ha"
#     puts "Laugh Intensity: #{num} Saying: #{intensity}"
# end

# 4. Iterating Array
# array = [1, 3, 10, 2, 7].each { |num| puts num }

# 5. Find Min
# array = [-3, -5, -7]
# puts array.min

# 6. Get Final Grade
# grades = [77, 80, 85, 88]
# final_grade = grades.sum / grades.length.to_f
# puts "#{final_grade}%"

# 7. List Even Numbers Array 
# puts list = (1..100).reject { |i| i.odd? }

# 8. Count Passing Scores 
# scores = [10, 5, 8, 7, 9]; passing_score = 8;
# puts scores.count { |num| num > passing_score }

# 9. Triple the values 
# x = [2, 1, 6, -3]
# puts cubed = x.map! { |num| num**3 }

# 10. Digit to Word 
# x = [1, 0, 0, -2]
# x.map! { |num| num == 0 ? "zero" : num }
# puts x

# 11. First, Last, Size 
# x = [1, 5, 10, -2]
# result = {
#     first: x.first,
#     last: x.last,
#     size: x.size
# }

# puts result

# 12. Moving Values 
# x = [2, 6, 11, 8, -2]
# x.shift
# x.push(2)
# puts x