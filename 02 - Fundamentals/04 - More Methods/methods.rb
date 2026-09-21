inventory = ["Sword", "Potion", "Shield", "Bow", "Helmet", "Boots", "Map"]

# .at or .fetch
# puts inventory.at(2)
# puts inventory.fetch(4)

# .delete
# inventory.delete("Map")
# puts inventory

# .reverse
# puts inventory.reverse

# .length
# puts inventory.length

# .sort
# puts inventory.sort

# .slice
# puts inventory.slice(1, 3)

# .shuffle
# puts inventory.shuffle

# .join
# puts inventory.join(", ")

# .insert
# puts inventory.insert(1, "Axe")

# values_at()
# puts inventory.values_at(0, 2, 4)

# Chained Methods 
# .values_at + .join
# puts inventory.values_at(0, 2, 4).join(" + ")

# .sort + .join
# puts inventory.sort.join(", ")

# .slice + .reverse + .join
# puts inventory.slice(1, 4).reverse.join(" -> ")

# .shuffle + .slice + .join
# puts inventory.shuffle.slice(0, 3).join(" + ")

# .sort + .slice + .join
# puts inventory.sort.slice(0, 3).join(" and ")