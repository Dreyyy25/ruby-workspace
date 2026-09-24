# The lesson scrapes each roster from ESPN with Nokogiri, but espn.com can't be reached
# from this network. So we keep the lesson's teams and build each roster from name lists instead.
teams = [
  ["Atlanta Hawks", "Skyhawk", "Philips Arena"],
  ["Boston Celtics", "Lucky the Leprechaun", "TD Garden"],
  ["Brooklyn Nets", "BrooklyKnight", "Barclays Center"],
  ["Charlotte Hornets", "Hugo the Hornet", "Spectrum Center"],
  ["Chicago Bulls", "Benny the Bull", "United Center"],
  ["Cleveland Cavaliers", "Moondog", "Quicken Loans Arena"],
  ["Dallas Mavericks", "Champ", "American Airlines Center"],
  ["Denver Nuggets", "Rocky the Mountain Lion", "Pepsi Center"],
  ["Detroit Pistons", "Hooper", "The Palace of Auburn Hills"],
  ["Golden State Warriors", "Thunder", "Oracle Arena"],
  ["Houston Rockets", "Clutch", "Toyota Center"],
  ["Indiana Pacers", "Boomer the Panther", "Bankers Life Fieldhouse"],
  ["Los Angeles Clippers", "Chuck", "Staples Center"],
  ["Los Angeles Lakers", "Jack Nicholson", "Staples Center"],
  ["Memphis Grizzlies", "Griz", "FedExForum"],
  ["Miami Heat", "Burnie", "American Airlines Arena"],
  ["Milwaukee Bucks", "Bango", "BMO Harris Bradley Center"],
  ["Minnesota Timberwolves", "Crunch the Wolf", "Target Center"],
  ["New Orleans Pelicans", "Pierre the Pelican", "Smoothie King Center"],
  ["New York Knicks", "Spike Lee", "Madison Square Garden"],
  ["Oklahoma City Thunder", "Rumble the Bison", "Chesapeake Energy Arena"],
  ["Orlando Magic", "Stuff the Magic Dragon", "Amway Center"],
  ["Philadelphia 76ers", "Franklin the Dog", "Wells Fargo Center Philadelphia"],
  ["Phoenix Suns", "The Suns Gorilla", "Talking Stick Resort Arena"],
  ["Portland Trail Blazers", "Blaze the Trail Cat", "Moda Center"],
  ["Sacramento Kings", "Slamson the Lion", "Golden 1 Center"],
  ["San Antonio Spurs", "The Coyote", "AT&T Center"],
  ["Toronto Raptors", "Raptor", "Air Canada Centre"],
  ["Utah Jazz", "Jazz Bear", "Vivint Smart Home Arena"],
  ["Washington Wizards", "G. Wiz", "Verizon Center"]
]

first_names = ["James", "Kevin", "Chris", "Anthony", "Marcus", "Tyler", "Jalen", "Devin", "Luka", "Paul",
               "Kyle", "Jordan", "Derrick", "Brandon", "Andre", "Malik", "Isaiah", "Trey", "Cam", "Darius"]
last_names = ["Johnson", "Williams", "Brown", "Jones", "Miller", "Davis", "Wilson", "Moore", "Taylor", "Anderson",
              "Thomas", "Jackson", "White", "Harris", "Martin", "Thompson", "Robinson", "Clark", "Lewis", "Walker"]

# each team gets 12 players; the % keeps the index inside the list, so the names wrap around
teams.each_with_index do |team, index|
  Team.create(name: team[0], mascot: team[1], stadium: team[2])
  12.times do |number|
    first_name = first_names[(index + number) % first_names.length]
    last_name = last_names[(index * 3 + number) % last_names.length]
    Team.last.players.create(name: "#{first_name} #{last_name}")
  end
end

# a few players whose names start with Z, for the last to-do
Team.find_by(name: "Chicago Bulls").players.create(name: "Zach LaVine")
Team.find_by(name: "New Orleans Pelicans").players.create(name: "Zion Williamson")
Team.find_by(name: "San Antonio Spurs").players.create(name: "Zach Collins")
Team.find_by(name: "Memphis Grizzlies").players.create(name: "Ziaire Williams")
