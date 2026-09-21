animals = %w[cat dog bear]

puts animals.at(1)
puts "---------------------1"
puts animals.fetch(2)
puts "---------------------2"

# animals.delete("dog")
puts animals.reverse
puts "---------------------3"
puts animals.length
puts "---------------------4"
puts animals.sort
puts "---------------------5"
puts animals.slice(0, 2)
puts "---------------------6"
puts animals.shuffle
puts "---------------------7"
puts animals.join(" and ")
puts "---------------------8"

animals.insert(1, "fox")
puts animals
puts "---------------------9"

selected_animals = animals.values_at(0, 2)
puts selected_animals.join(" and ")
puts "---------------------10"