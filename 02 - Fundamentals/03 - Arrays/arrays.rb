# Starting array
fruits = ["apple", "banana", "cherry", "date", "elderberry"]
puts "Original Array: #{fruits.inspect}"
puts "-" * 40

# 1. .at or .fetch
# .at returns nil for out-of-bounds index; .fetch raises an error (or returns a fallback)
puts "1. .at / .fetch:"
puts "   at(1): #{fruits.at(1)}"
puts "   fetch(3): #{fruits.fetch(3)}"
puts "   fetch(10, 'not found'): #{fruits.fetch(10, 'not found')}"

# 2. .values_at
# Retrieves multiple elements at specific indices as a new array
puts "\n2. values_at:"
selected = fruits.values_at(0, 2, 4)
puts "   values_at(0, 2, 4): #{selected.inspect}"
puts "   Formatted with .join: #{selected.join(' and ')}"

# 3. .slice
# Extracts an element or a range without modifying the original array
puts "\n3. .slice:"
puts "   slice(1..3): #{fruits.slice(1..3).inspect}"

# 4. .insert
# Inserts values at a specific index (mutates the array)
puts "\n4. .insert:"
fruits.insert(2, "blueberry")
puts "   After insert(2, 'blueberry'): #{fruits.inspect}"

# 5. .delete
# Removes all occurrences of a value (mutates the array)
puts "\n5. .delete:"
fruits.delete("banana")
puts "   After delete('banana'): #{fruits.inspect}"

# 6. .reverse
# Returns a new array with elements in reverse order
puts "\n6. .reverse:"
puts "   Reversed: #{fruits.reverse.inspect}"

# 7. .sort
# Returns a new array sorted alphabetically or numerically
puts "\n7. .sort:"
puts "   Sorted: #{fruits.sort.inspect}"

# 8. .shuffle
# Returns a new array with elements randomly permuted
puts "\n8. .shuffle:"
puts "   Shuffled: #{fruits.shuffle.inspect}"

# 9. .length
# Returns the total count of elements
puts "\n9. .length:"
puts "   Total elements: #{fruits.length}"

# 10. .join
# Converts array elements into a single string separated by a delimiter
puts "\n10. .join:"
puts "   Joined with commas: #{fruits.join(', ')}"