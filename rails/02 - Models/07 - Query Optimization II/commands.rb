# 1. Retrieve all players, then write a program that will loop 
# through each player and display their team name, mascot, and stadium. 
# How many queries have we done?

players = Player.all
players.each do |player|
    puts "#{player.name} | #{player.team.name} | #{player.team.mascot} | #{player.team.stadium}"
end

# 2.Retrieve all players and write a program to loop 
# through each player and their team name, mascot, and 
# stadium using .includes. How many queries have we done now?

players = Player.includes(:team).all
players.each do |player|
    puts "#{player.name} | #{player.team.name} | #{player.team.mascot} | #{player.team.stadium}"
end

# 3 Retrieve all players from the 'Chicago Bulls' by using .includes
Player.includes(:team).where("teams.name = 'Chicago Bulls'").references(:team)

# 4 Retrieve all players along with the team name that plays at the 'Staples Center'
Player.joins(:team).where("teams.stadium = 'Staples Center'").select("players.*, teams.name")

# 5 Retrieve all teams that have any player that start their name with the letter 'Z' by using .includes and .joins
Team.joins(:players).where("players.name LIKE 'Z%'")
Team.includes(:players).where("players.name LIKE 'Z%'").references(:players)