team1 = Team.find_or_create_by!(name: "Red") do |t|
  t.responsibility = "Penetration testing"
end

team2 = Team.find_or_create_by!(name: "Blue") do |t|
  t.responsibility = "Vulnerability testing"
end

team3 = Team.find_or_create_by!(name: "Purple") do |t|
  t.responsibility = "Security auditing"
end

Member.find_or_create_by!(name: "Alice Smith", team: team1) do |m|
  m.role = "Penetration Tester"
end

Member.find_or_create_by!(name: "Bob Jones", team: team1) do |m|
  m.role = "Security Analyst"
end

Member.find_or_create_by!(name: "Charlie Brown", team: team2) do |m|
  m.role = "Vulnerability Analyst"
end

Member.find_or_create_by!(name: "Diana Prince", team: team2) do |m|
  m.role = "Security Engineer"
end

Member.find_or_create_by!(name: "Edward Norton", team: team3) do |m|
  m.role = "Lead Auditor"
end

Member.find_or_create_by!(name: "Fiona Gallagher", team: team3) do |m|
  m.role = "Compliance Specialist"
end

