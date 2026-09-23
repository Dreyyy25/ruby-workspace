require "benchmark"

# Number of iterations to get statistically reliable execution times
ITERATIONS = 50_000

# -------------------------------------------------------------
# 1. Implementation Definitions
# -------------------------------------------------------------

# 1. Original Map + Range
def impl_range_map
  (1..10).map { (1..7).map { (65 + rand(26)).chr }.join }
end

# 2. Array.new preallocation with .chr and .join
def impl_array_new
  Array.new(10) { Array.new(7) { (65 + rand(26)).chr }.join }
end

# 3. Array.new with ('a'..'z').to_a.sample
def impl_sample_range
  Array.new(10) { Array.new(7) { ("a".."z").to_a.sample }.join }
end

# 4. String buffer with capacity preallocation and << integer codepoint
def impl_string_buffer
  Array.new(10) do
    str = String.new(capacity: 7)
    7.times { str << (65 + rand(26)) }
    str
  end
end

METHODS = {
  "1. (1..10).map + (1..7).map (Original)"       => method(:impl_range_map),
  "2. Array.new + .chr.join"                    => method(:impl_array_new),
  "3. Array.new + ('a'..'z').to_a.sample"       => method(:impl_sample_range),
  "4. String buffer (capacity: 7) + <<"         => method(:impl_string_buffer)
}

# -------------------------------------------------------------
# 2. Sample Output Verification
# -------------------------------------------------------------
puts "============================================================"
puts "                SAMPLE OUTPUT VERIFICATION                  "
puts "============================================================"
METHODS.each do |name, fn|
  sample = fn.call
  puts "\n[#{name}]"
  puts "First 3 strings : #{sample.first(3).inspect}"
  puts "Total strings   : #{sample.length}"
  puts "String length   : #{sample.first.length}"
end

# -------------------------------------------------------------
# 3. Memory Allocation Profiling (Objects per single execution)
# -------------------------------------------------------------
puts "\n============================================================"
puts "             MEMORY PROFILING (Allocated Objects)           "
puts "============================================================"
puts "Measuring objects allocated per SINGLE run (averaged over 1,000 runs):"
puts "-" * 60
printf "%-42s | %s\n", "Implementation", "Allocated Objects / Run"
puts "-" * 60

memory_results = {}
RUNS_FOR_MEM = 1_000

METHODS.each do |name, fn|
  GC.start
  before_objects = GC.stat(:total_allocated_objects)
  RUNS_FOR_MEM.times { fn.call }
  after_objects = GC.stat(:total_allocated_objects)

  avg_objects = (after_objects - before_objects).to_f / RUNS_FOR_MEM
  memory_results[name] = avg_objects
  printf "%-42s | %8.1f objects\n", name, avg_objects
end

# -------------------------------------------------------------
# 4. Speed Benchmark (50,000 Iterations)
# -------------------------------------------------------------
puts "\n============================================================"
puts "             TIME BENCHMARK (#{ITERATIONS.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse} Iterations)          "
puts "============================================================"

time_results = {}

Benchmark.bm(45) do |bm|
  METHODS.each do |name, fn|
    GC.start
    t = bm.report(name) do
      ITERATIONS.times { fn.call }
    end
    time_results[name] = t.real
  end
end

# -------------------------------------------------------------
# 5. Final Summary & Speed Ranking
# -------------------------------------------------------------
puts "\n============================================================"
puts "                     FINAL RANKINGS                         "
puts "============================================================"

sorted_by_time = time_results.sort_by { |_, time| time }
fastest_time = sorted_by_time.first[1]

puts "\n--- SPEED RANKING (Fastest to Slowest) ---"
sorted_by_time.each_with_index do |(name, time), idx|
  speed_ratio = time / fastest_time
  printf "%d. %-42s : %6.3fs  (%.2fx slower than #1)\n", idx + 1, name, time, speed_ratio
end

sorted_by_mem = memory_results.sort_by { |_, objs| objs }
lowest_mem = sorted_by_mem.first[1]

puts "\n--- MEMORY RANKING (Least to Most Allocations) ---"
sorted_by_mem.each_with_index do |(name, objs), idx|
  mem_ratio = objs / lowest_mem
  printf "%d. %-42s : %6.1f objs (%.2fx more allocations than #1)\n", idx + 1, name, objs, mem_ratio
end
puts "============================================================\n"
