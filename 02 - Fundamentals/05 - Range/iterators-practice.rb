puts "=== 1. .any? ==="
# Returns true if the block returns a truthy value for AT LEAST ONE element.
words = ["ant", "bear", "cat"]
has_long_word = words.any? { |word| word.length >= 4 }
puts "Any word length >= 4? #{has_long_word}" # => true
puts "Any word starts with 'z'? #{words.any? { |w| w.start_with?('z') }}" # => false

puts "\n=== 2. .each ==="
# Iterates over every element in the collection without modifying or returning a new array.
print "Printing words with separator: "
words.each { |word| print word, "--" } # => ant--bear--cat--
puts "\n"

puts "\n=== 3. .collect (also known as .map) ==="
# Returns a NEW array containing the result of running the block on every element.
squared_numbers = (1..4).collect { |i| i * i }
puts "Squared (1..4): #{squared_numbers.inspect}" # => [1, 4, 9, 16]

cats = (1..4).collect { "cat" }
puts "Replaced with 'cat': #{cats.inspect}" # => ["cat", "cat", "cat", "cat"]

puts "\n=== 4. .detect / .find ==="
# Returns the VERY FIRST element for which the block condition is true (returns nil if none match).
first_common_multiple = (1..100).detect { |i| i % 5 == 0 && i % 7 == 0 }
puts "First number divisible by both 5 and 7 (1..100): #{first_common_multiple}" # => 35

no_match = (1..10).find { |i| i % 5 == 0 && i % 7 == 0 }
puts "First match in (1..10): #{no_match.inspect}" # => nil

puts "\n=== 5. .find_all / .select ==="
# Returns an array of ALL elements for which the block condition is true.
multiples_of_3 = (1..10).find_all { |i| i % 3 == 0 }
puts "Multiples of 3 (1..10): #{multiples_of_3.inspect}" # => [3, 6, 9]

evens = (1..10).select { |i| i.even? }
puts "Even numbers (1..10): #{evens.inspect}" # => [2, 4, 6, 8, 10]

puts "\n=== 6. .reject ==="
# The exact opposite of .select — keeps elements for which the block returns false/nil.
not_multiples_of_3 = (1..10).reject { |i| i % 3 == 0 }
puts "Numbers NOT divisible by 3 (1..10): #{not_not_multiples_of_3 = not_multiples_of_3.inspect}" # => [1, 2, 4, 5, 7, 8, 10]

puts "\n=== 7. .upto ==="
# Integer iterator: loops from self UP TO the specified limit number.
print "Counting from 5 upto 10: "
5.upto(10) { |i| print i, " " } # => 5 6 7 8 9 10
puts "\n"