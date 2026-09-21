obj = {name: "John Doe", age: 30, role: "Employee" }
puts obj
puts obj.delete(:age)
puts obj.empty?
puts obj.has_key?(:role)
puts obj.has_value?("Employee")