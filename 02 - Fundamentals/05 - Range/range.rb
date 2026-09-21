# Setup ranges
numbers = (1..10)
letters = ('a'..'z')

puts "=== 1. .min ==="
# Returns the smallest/first value in the range
puts "Min of (1..10): #{numbers.min}"   # => 1
puts "Min of ('a'..'z'): #{letters.min}" # => "a"

puts "\n=== 2. .max ==="
# Returns the largest/highest value in the range
puts "Max of (1..10): #{numbers.max}"   # => 10
puts "Max of ('a'..'z'): #{letters.max}" # => "z"

puts "\n=== 3. .last ==="
# Returns the last object in the range (or an array of the last N objects)
puts "Last element of (1..10): #{numbers.last}"     # => 10
puts "Last 3 elements of (1..10): #{numbers.last(3).inspect}" # => [8, 9, 10]

puts "\n=== 4. .include?(value) ==="
# Returns true if the given value is inside the range, otherwise false
puts "Does (1..10) include 7? #{numbers.include?(7)}"      # => true
puts "Does (1..10) include 15? #{numbers.include?(15)}"    # => false
puts "Does ('a'..'z') include 'k'? #{letters.include?('k')}" # => true