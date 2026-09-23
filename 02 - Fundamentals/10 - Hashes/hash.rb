info = { first_name: "Coding", last_name: "Dojo" }
puts info.delete(:last_name)
puts info
puts "------------------------"

empty = {}
puts empty.empty?
puts info.empty?
puts "------------------------"

puts info.has_key?(:first_name)
puts info.has_key?(:last_name)
puts "------------------------"

puts info.has_value?("Coding")
puts info.has_value?("Dojo")