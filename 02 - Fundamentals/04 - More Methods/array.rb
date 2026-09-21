arr = ["T-Rex", "Triceratops", "Brachiosaurus"]

# .at
puts ".at: #{arr.at(1)}"

# .fetch
puts ".fetch: #{arr.fetch(1)}"

# .delete
puts ".delete: #{arr.delete("Brachiosaurus")}"

# .reverse
puts ".reverse: #{arr.reverse}"

# .length
puts ".length: #{arr.length}"

# .sort 
puts ".sort: #{arr.sort}"

# .slice
puts ".slice: #{arr.slice(2)}"

# .shuffle
puts ".shuffle #{arr.shuffle}"

# .join
puts ".join #{arr.join(", ")}"

# .insert
puts ".insert #{arr.insert(2, "Pteranodon")}"

# .values_at()
puts ".values_at #{arr.values_at(1,2)}"