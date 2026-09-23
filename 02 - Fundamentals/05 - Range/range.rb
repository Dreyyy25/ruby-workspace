my_range_numbers = (1..5)
my_range_characters = ("a".."z")

#print as is
puts my_range_numbers

#print class name
puts "the class name is #{my_range_numbers.class}"

#print sequence
puts "Sequence: #{my_range_numbers.to_a.inspect}"

#convert to array and print class name
puts "The class name is #{my_range_numbers.to_a.class}"

#conver to string and print class name
puts "The class name is #{my_range_numbers.to_s.class}"

#print first index
puts "The first index of the range is #{my_range_numbers.first}"

#print alphabet
puts "Alphabet: #{my_range_characters.to_a.inspect}"

# save the array and test various array methods

my_array = my_range_numbers.to_a

puts "my_array.min = #{my_array.min}"
puts "my_array.max = #{my_array.max}"
puts "my_array.last = #{my_array.last}"
puts "my_array.include?(3): #{my_array.include?(3)}"