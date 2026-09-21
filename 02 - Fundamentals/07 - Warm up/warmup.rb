#1. Print 1 to 15
1.upto(15) { |i| puts i }

#2. Print even numbers between 1 to 15
1.upto(255) { |i| puts i if i.even? }

#3. Print Haha
laugh = ""

1.upto(15) do |i|
    laugh += "ha"
    puts "Laugh Intensity: #{i} Saying: \"#{laugh}\""
end

#4. Iterating array
arr = [1, 3, 10, 2, 7]
arr.each { |element| puts element}

#5. Find Min
def print_min arr
    puts arr.min
end
print_min([1, 3, 5, 7, 9, 13])
print_min([-3, -5, -7])
print_min([-3, 0, 5, -10])

#6. Get Final Grade
def print_average_grade grades
  return puts "No grades available" if grades.empty?

  sum = 0
  grades.each { |grade| sum += grade }

  average = sum.to_f / grades.length
  puts "Average grade: #{average}%"
end

# Base Case
print_average_grade [77, 80, 85, 88]

# Edge / Complicated Cases
print_average_grade [100, 90, 80]
print_average_grade [75]

#7. List Even Numbers Array
y = (1...100).select(&:even?)
p y

#8. Count Passing Scores
def count_greater_than arr, y
    puts arr.count { |num| num >= y}
end
count_greater_than([10, 5, 8, 7, 9], 8)

#9. Triple the values 
x = [1, 5, 10, -2]
x.map! { |num| num * num * num}
p x

#10. Digit to Word
x = [1, 0, 0, -2]
x.map! { |num| num.zero? ? 'zero' : num}
p x 

#11. First, Last Size
def first_last_size x 
    return {} if x.empty?

    {
        first: x.first,
        last: x.last,
        size: x.size
    }
end
p first_last_size([1, 5, 10, -2])

#12. Moving Values
x = [2, 6, 11, 8, -2]

x.shift 
x << 0
p x