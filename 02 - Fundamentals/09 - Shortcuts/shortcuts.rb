#1.

grades = [90, 92, 95, 84, 87, 98, 80]

def process_grades(arr)
    puts "Average: #{arr.sum.to_f / arr.length}"

    new_arr = arr.reject {|grade| grade >= 90}
end

#2.
fruits = ["Grapes", "Banana", "Cherry", "Apple", "Melon"]

def sort_array(arr)
    new_arr = arr.sort
    puts new_arr.inspect
    new_arr.reject {|item| item.length > 5}
end

#3.
alphabet = ("a".."z").to_a.shuffle.shuffle.shuffle

#4
random = (1..12).map {rand(1..100)} #one liner instead of for loop and arr.push

#5
random = (1..12).map {rand(1..100)}
random.sort!.reverse!
puts random.inspect
puts random.first
puts random.last

#6
captcha = (1..7).map {(65+rand(26)).chr}.join
puts captcha

#7 hint: (65+rand(26)).chr
# array = (1..10).map {(1..7).map {(65+rand(26)).chr}.join} - SLOWER (my original implementation) - slower than Array.new() since it creates a new range obj on every iteration
array = Array.new(10) {Array.new(7) {(65+rand(26)).chr}.join} # FASTER - doesn't use range objects at all and pre-allocates memory
puts array.inspect

# ORIGINAL AI OUTPUTS WITHOUT HINTS:
# array = Array.new(10) { Array.new(7) { ['a'..'z'].to_a.sample }.join } - THIS IS THE SLOWEST

# FASTEST IMPLEMENTATION ACCORDING TO AI:
# array = Array.new(10) do
#   str = String.new(capacity: 7)
#   7.times { str << (65 + rand(26)) }
#   str
# end


