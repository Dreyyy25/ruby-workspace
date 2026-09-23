t1 = {course: "Web Fundamentals Track", weeks: "2"}
t2 = {course: "PHP Track", weeks: "4"}
t3 = {course: "JS Track", weeks: "4"}
t4 = {course: "Elective Track", weeks: "3"}

tracks = [t1, t2, t3, t4]

def print_tracks(tracks)
  puts "You have #{tracks.length} courses in the 'tracks' array"
  tracks.each do |track|
    puts "The course is '#{track[:course]}' in #{track[:weeks]} weeks"
  end
end

print_tracks(tracks)