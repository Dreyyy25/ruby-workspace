me = {first_name: "Alfredo", middle_name: "Cabral", last_name: "Venturina", suffix: "IV"}

puts "Original hash: #{me}"

puts "Is hash empty? #{me.empty?}"
puts "Does hash have key :suffix? #{me.has_key?(:suffix)}"
puts "Does hash have value IV? #{me.has_value?("IV")}"
puts "Delete key :suffix with value: #{me.delete(:suffix)}"
puts "Does hash have key :suffix? #{me.has_key?(:suffix)}"
puts "Does hash have value IV? #{me.has_value?("IV")}"
puts "Reassign hash to an empty hash {}"
me = {}
puts "Is hash empty? #{me.empty?}"