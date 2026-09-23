require 'benchmark'

SIZE = 3_000_000
arr = (0...SIZE).to_a

puts "Benchmarking with array of #{SIZE} elements\n\n"

Benchmark.bm(25) do |bm|
  # For Loop
  bm.report("for loop:") do
    sum = 0
    for i in arr
      sum += i
    end
  end

  # While Loop
  bm.report("while loop:") do
    sum = 0
    i = 0
    len = arr.length
    while i < len
      sum += arr[i]
      i += 1
    end
  end

  # Array.each
  bm.report("each:") do
    sum = 0
    arr.each { |i| sum += i }
  end

  # Array.each_with_index
  bm.report("each_with_index:") do
    sum = 0
    arr.each_with_index { |val, idx| sum += val }
  end

  # Array.map
  bm.report("map (builds array):") do
    arr.map { |i| i * 1 }
  end

  # Array.inject
  bm.report("inject (React reduce):") do
    arr.inject(0) { |sum, i| sum + i }
  end

  # Array.sum
  bm.report("sum (built-in):") do
    arr.sum
  end

  # .times
  bm.report("times with index:") do
    total = 0
    SIZE.times { |i| total += arr[i] }
  end
end