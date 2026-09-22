require_relative '../11 - Human/human'
require_relative './wizard'
require_relative './ninja'
require_relative './samurai'

puts "=== CREATING CHARACTERS ==="
merlin = Wizard.new
hanzo  = Ninja.new
jack   = Samurai.new
dummy  = Human.new

puts "Initial Human Health: #{dummy.health}" # 100
puts "Samurai Count: #{Samurai.how_many}"      # 1

puts "\n=== WIZARD TEST ==="
# Heal twice, then fireball the dummy
merlin.heal.heal.fireball(dummy)
puts "Wizard Health: #{merlin.health}" # 70 (50 base + 10 + 10)
puts "Dummy Health: #{dummy.health}"   # 80 (100 - 20)

puts "\n=== NINJA TEST ==="
# Steal health from dummy (attacks -10, steals +10), then escape (-15)
hanzo.steal(dummy).get_away
puts "Ninja Health: #{hanzo.health}"   # 95 (100 base + 10 - 15)
puts "Dummy Health: #{dummy.health}"   # 70 (80 - 10)

puts "\n=== SAMURAI TEST ==="
# Damage Samurai, then meditate and deal a death blow
jack.health = 20
jack.meditate.death_blow(dummy)
puts "Samurai Health: #{jack.health}" # 200
puts "Dummy Health: #{dummy.health}"   # 0

puts "\n=== CLASS METHOD TEST ==="
another_samurai = Samurai.new
puts "Total Samurais Created: #{Samurai.how_many}" # 2