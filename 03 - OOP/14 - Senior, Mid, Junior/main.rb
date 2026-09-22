require_relative '../12 - Developer/developer'
require_relative './senior'
require_relative './mid'
require_relative './junior'

puts "=== CREATING DEVELOPERS ==="
sr = Senior.new
mid = Mid.new
jr1 = Junior.new
jr2 = Junior.new

puts "Initial Junior Count: #{Junior.how_many}" # => 2

puts "\n=== SENIOR TEST ==="
puts "Sr initial time: #{sr.time}" # => 8
sr.interview
puts "Sr time after interview: #{sr.time}" # => 7.5

sr.assign(jr1)
puts "Jr1 time after assignment: #{jr1.time}" # => 10

puts "\n=== MID TEST ==="
puts "Mid initial energy/time: #{mid.energy} / #{mid.time}"
puts "Jr1 initial energy/time: #{jr1.energy} / #{jr1.time}"

mid.pair_programming(jr1)
puts "Mid energy/time after pair programming: #{mid.energy} / #{mid.time}" # => 97 / 5
puts "Jr1 energy/time after pair programming: #{jr1.energy} / #{jr1.time}" # => 147 / 7

mid.take_break
puts "Mid energy after break: #{mid.energy}" # => 100