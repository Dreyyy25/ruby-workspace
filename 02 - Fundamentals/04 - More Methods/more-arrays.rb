# Starting array
colors = ["red", "green", "blue", "yellow", "purple"]
puts "Original Array: #{colors.inspect}"
puts "-" * 50

# 1. .at or .fetch
# .at returns nil if index doesn't exist; .fetch raises an error or uses a fallback
puts "1. .at / .fetch"
puts "   at(1): #{colors.at(1)}"
puts "   fetch(3): #{colors.fetch(3)}"
puts "   fetch(99, 'missing'): #{colors.fetch(99, 'missing')}"

# 2. .delete
# Deletes matching elements directly from the array and returns the deleted value
puts "\n2. .delete"
deleted_item = colors.delete("yellow")
puts "   Deleted element: #{deleted_item.inspect}"
puts "   Array after delete: #{colors.inspect}"

# 3. .reverse
# Returns a new array with elements in reverse order
puts "\n3. .reverse"
puts "   Reversed: #{colors.reverse.inspect}"

# 4. .length
# Returns the total count of elements
puts "\n4. .length"
puts "   Total elements: #{colors.length}"

# 5. .sort
# Returns a new array sorted alphabetically or numerically
puts "\n5. .sort"
puts "   Sorted: #{colors.sort.inspect}"

# 6. .slice
# Extracts a portion of the array using an index range or (start, length)
puts "\n6. .slice"
puts "   slice(1..2): #{colors.slice(1..2).inspect}"

# 7. .shuffle
# Returns a new array with elements randomized
puts "\n7. .shuffle"
puts "   Shuffled: #{colors.shuffle.inspect}"

# 8. .join
# Combines elements into a single string separated by a delimiter
puts "\n8. .join"
puts "   Joined with ' - ': #{colors.join(' - ')}"

# 9. .insert
# Adds elements at a specific index, pushing existing elements to the right
puts "\n9. .insert"
colors.insert(2, "orange")
puts "   After insert(2, 'orange'): #{colors.inspect}"

# 10. values_at
# Takes multiple indices and returns an array containing values at those indices
puts "\n10. values_at"
selected = colors.values_at(0, 2, 4)
puts "   values_at(0, 2, 4): #{selected.inspect}"
puts "   Combined output: #{selected.join(' and ')}"