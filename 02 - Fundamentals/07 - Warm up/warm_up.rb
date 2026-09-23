# print 1 to 15
(1..15).each {|n| puts n}

# print even numbers between 1 to 15
(2..15).step(2) {|n| puts n}

# print haha
(1..15).each {|n| puts "Laugh Intensity: #{n} Saying: \"#{'ha' * n}\""}

# iterating array
x = [1, 3, 10, 2, 7]
x.each {|n| puts n}

# find min
def print_min(arr)
    puts arr.min
end
print_min([-3, -5, -7])

# get final grade
def print_final_grade(grades)
    if grades.empty?
        return puts "0%"
    end

    puts "#{grades.sum.to_f / grades.length}%"
end
print_final_grade([77, 80, 85, 88])

# list even numbers array
list = (2..100).step(2).to_a
puts "list: #{list.inspect}"

# count passing scores
def count_passing_scores(scores, passing_score)
    scores.count {|val| val >= passing_score}
end
puts count_passing_scores([10, 5, 8, 7, 9], 8)

# triple the values
x = [2, 1, 6, -3]
x.map! {|val| val**3}
puts "Tripled array: #{x.inspect}"

# digit to word
x = [1, 0, 0, -2]
x.map! {|val| val.zero? ? "zero":val}
puts "Digit to word array: #{x.inspect}"

# first, last, size
def first_last_size(arr)
    {
        first: arr.first,
        last: arr.last,
        size: arr.size
    }
end
puts "Hash: #{first_last_size([1, 5, 10, -2])}"

# moving values
x = [2, 6, 11, 8, -2]
x.rotate!(1)
puts "Moved array: #{x.inspect}"
