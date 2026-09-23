# array method definition
class Array
    def print_courses

        sanitized_array = self.find_all {|hash| hash.has_key?(:course) && hash.has_key?(:weeks)}

        unless sanitized_array.empty?
            length = sanitized_array.length
            puts "You have #{length} courses in the array"
            sanitized_array.each {|item| puts "The course is #{item[:course]} in #{item[:weeks]} weeks"}
        end

        return nil
    end
end

# usage
t1 = {course: "Web Fundamentals Track", weeks: "2"}
t2 = {course: "PHP Track", weeks: "4"}
t3 = {course: "JS Track", weeks: "4"}
t4 = {course: "Elective Track", weeks: "3"}

tracks = [t1, t2, t3, t4]

tracks.print_courses