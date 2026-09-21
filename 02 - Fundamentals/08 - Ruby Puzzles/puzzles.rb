#1. Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. Print the sum of all numbers in the array. Also have the function return an array that only include numbers that are greater than 10 (e.g. when you pass the array above, it should return an array with the values of 13,25,32 - hint: use reject or find_all method).
def process_array arr
    puts arr.sum
    arr.find_all { |num| num > 10 }
end
x = [3, 5, 1, 2, 7, 9, 8, 13, 25, 32]
result = process_array x
p result 

#2. Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher. Shuffle the array and print the name of each person. Have the program also return an array with names that are longer than 5 characters.
arr = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
puts arr.shuffle!
arr.select! { |element| element.length > 5}
p arr

#3. Create an array that contains all 26 letters in the alphabet (this array must have 26 values). Shuffle the array and display the last letter of the array. Have it also display the first letter of the array. If the first letter in the array is a vowel, have it display a message.
alphabet = ('a'...'z').to_a
alphabet.shuffle!
first = alphabet.first
last = alphabet.last

#display + display message if first letter is vowel
puts "First letter: #{first}"
puts "Last letter: #{last}"
puts "The first letter '#{first}' is a vowel!" if %w[a e i o u].include?(first)

#4. Generate an array with 10 random numbers between 55-100.
random_numbers = Array.new(10) { rand(55...100) }
p random_numbers

#5. Generate an array with 10 random numbers between 55-100 and have it be sorted (showing the smallest number in the beginning). Display all the numbers in the array. Next, display the minimum value in the array as well as the maximum value
random_numbers = Array.new(10) { rand(55...100) }.sort!
p random_numbers
puts "Minimum Value: #{random_numbers.first}"
puts "Maximum Value: #{random_numbers.last}"

#6. Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character)
random_string = Array.new(5) { (65 + rand(26)).chr }.join
puts random_string

#7. Generate an array with 10 random strings that are each 5 characters long
random_string = Array.new(10) do
    Array.new(5) { (65 + rand(26)).chr }.join
end
p random_string