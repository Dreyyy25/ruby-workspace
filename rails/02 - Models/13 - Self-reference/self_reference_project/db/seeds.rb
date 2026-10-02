Affiliation.destroy_all
Company.destroy_all

c1 = Company.create!(name: "Google")
c2 = Company.create!(name: "Apple")
c3 = Company.create!(name: "Microsoft")
c4 = Company.create!(name: "Amazon")
c5 = Company.create!(name: "Meta")

Affiliation.create!(company: c1, partner: c2)
Affiliation.create!(company: c1, partner: c3)
