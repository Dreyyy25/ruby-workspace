h = { first_name: "Coding", last_name: "Dojo" }

# 1. .delete(key)
deleted_value = h.delete(:last_name)
puts "Deleted Value: #{deleted_value}"
puts "Hash after delete: #{h}"

# 2. .empty?
puts "Is 'h' empty? #{h.empty?}"
empty_hash = {}
puts "Is 'empty_hash' empty? #{empty_hash.empty?}"

# 3. .has_key?(key)
puts "Has key :first_name? #{h.has_key?(:first_name)}"
puts "Has key :last_name? #{h.has_key?(:last_name)}"

# 4. .has_value?(value)
puts "Has value 'Coding'? #{h.has_value?('Coding')}"
puts "Has value 'Dojo'? #{h.has_value?('Dojo')}"