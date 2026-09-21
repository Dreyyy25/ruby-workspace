#1. Create an array of grades with the following values: 90, 92, 95, 84, 87, 98, 80. Print the average of all numbers in the array. Also, have the function return an array that only includes grades that are not 90’s (e.g. when you pass the array above, it should return an array with the values of 84, 87, 80. Hint: use reject or find_all method).
def process_grades grades
    return puts "No grades provided" if grades.empty?
    
    puts "Average: #{grades.sum.to_f / grades.length}"
    grades.reject { |grade| grade >= 90 && grade <= 99 }
end
grades = [90, 92, 95, 84, 87, 98, 80]
result = process_grades grades
p result

#2. Create an array with the following values: Grapes, Banana, Cherry, Apple, and Melon. Sort the array and print each fruit name. Have the program also return an array with names that are no longer than 5 characters.
def process_fruits fruits
  sorted_fruits = fruits.sort
  sorted_fruits.each { |fruit| puts fruit }
  sorted_fruits.select { |fruit| fruit.length <= 5 }
end

fruits = ["Grapes", "Banana", "Cherry", "Apple", "Melon"]
short_fruits = process_fruits fruits
p short_fruits

#3. Create an array that contains all 26 letters in the alphabet (this array must have 26 values). Shuffle it three times, then print the first letter of the array. If the first letter in the array is not a vowel, have it display a message.
alphabet = ('a'..'z').to_a
3.times { alphabet.shuffle! }

first = alphabet.first

puts "First letter: #{first}"
puts "The first letter '#{first}' is a consonant!" unless %w[a e i o u].include?(first)

#4. Generate an array with 12 random numbers between 1-100.
random_numbers = Array.new(12) { rand(1..100) }
p random_numbers

#5. Generate an array with 12 random numbers between 1-100 and have it be sorted (showing the largest number in the beginning). Display all the numbers in the array. Next, display the largest value from the array as well as the lowest value.
random_numbers = Array.new(12) { rand(1..100) }.sort.reverse!
p random_numbers
puts "Largest number: #{random_numbers.first}"
puts "Smallest number: #{random_numbers.last}"

#6. Generate a captcha (random characters) that is 7 characters long (hint: (65+rand(26)).chr returns a random character)
random_string = Array.new(7) { (65 + rand(26)).chr }.join
puts random_string

#7. Generate an array with 10 random strings that are each 7 characters long.
random_string = Array.new(10) do
    Array.new(7) { (65 + rand(26)).chr }.join
end
p random_string