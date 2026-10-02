Subscriber.find_or_create_by!(names: "Alice Smith") do |s|
  s.contact_num = "09123456789"
  s.is_enabled = 1
end

Subscriber.find_or_create_by!(names: "Bob Jones") do |s|
  s.contact_num = "09234567890"
  s.is_enabled = 0
end

Subscriber.find_or_create_by!(names: "Charlie Brown") do |s|
  s.contact_num = "09345678901"
  s.is_enabled = 1
end

Subscriber.find_or_create_by!(names: "Diana Prince") do |s|
  s.contact_num = "09456789012"
  s.is_enabled = 0
end

Subscriber.find_or_create_by!(names: "Edward Norton") do |s|
  s.contact_num = "09567890123"
  s.is_enabled = 1
end

