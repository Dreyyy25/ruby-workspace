# Company.first should retrieve the first company information
Company.first

# Company.first.partners should display all the partner information of the first company (this should include the name of all the partners of Company.first).
Company.first.affliations

# Find out how you can retrieve all companies who are NOT a partner with the first Company.
Affiliation.where.not(partner: Company.first)