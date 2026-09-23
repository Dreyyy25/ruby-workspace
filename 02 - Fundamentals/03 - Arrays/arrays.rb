animals = %w(cat dog bear lion tiger horse cow)
puts "Animals array: #{animals.inspect}"

# .at
puts "animals.at(0) = #{animals.at(0)}"

# .fetch
puts "animals.fetch(0) = #{animals.fetch(0)}"

# .delete
deleted_element = animals.delete("cow")
puts "Deleted element: #{deleted_element}"
puts "animals after .delete('cow'): #{animals.inspect}"

#.reverse
reversed_animals = animals.reverse
puts ".reverse copy: #{reversed_animals.inspect}"

# .length
puts "animals.length = #{animals.length}"

# .sort
sorted_animals = animals.sort
puts "animals.sort = #{sorted_animals.inspect}"

# .slice
sliced_animals = animals.slice(3,2)
puts "animals.slice(3, 2) = #{sliced_animals.inspect}"

# .shuffle
puts "animals.shuffle = #{animals.shuffle.inspect}"

# .join
puts "animals.join(', ') = #{animals.join(', ')}"

# .insert
animals.insert(2, "monkey", "whale")
puts "animals after .insert(2, 'monkey', 'whale') = #{animals.inspect}"

# values_at()
a = %w{cat dog bear}
result = a.values_at(0, 2).join(' and ')
puts "a = %w{cat dog bear}"
puts "a.values_at(1, 2).join(' and ') =>  #{result}"