# array method definition
class Array
    def print_names
        # unless self.has_key?(:first_name) && self.has_key?(:last_name)
        #     return nil
        # end

        sanitized_array = self.find_all {|hash| hash.has_key?(:first_name) && hash.has_key?(:last_name)}

        unless sanitized_array.empty?
            length = sanitized_array.length
            puts "You have #{length} names in the array"
            sanitized_array.each {|item| puts "The name is '#{item[:first_name]} #{item[:last_name]}'"}
        end

        return nil

    end
end

# usage
a = {first_name: "Michael", last_name: "Choi"}
b = {first_name: "John", last_name: "Doe"}
c = {first_name: "Jane", last_name: "Doe"}
d = {first_name: "James", last_name: "Smith"}
e = {first_name: "Jennifer", last_name: "Smith"}
names = [a, b, c, d, e]

names.print_names