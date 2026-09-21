colors = %w[violet blue green yellow]

puts "---------------------1"
puts colors.fetch(2)
puts "---------------------2"

colors.delete(2)
puts colors
puts "---------------------3"

puts colors.reverse
puts "---------------------4"

puts colors.length
puts "---------------------5"

puts colors.sort
puts "---------------------6"

puts colors.slice(3)
puts "---------------------7"

puts colors.shuffle
puts "---------------------8"

puts colors.join(" and ")
puts "---------------------9"

colors.insert(0, "red")
puts colors
puts "---------------------10"

selected = colors.values_at(0, 4).join(" and ")
puts selected + " = orange"
