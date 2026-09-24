# ==========================================
# SETUP TEST DATA
# ==========================================
c1 = Company.create(name: "Apple")
c2 = Company.create(name: "Microsoft")
c3 = Company.create(name: "Nvidia")
c4 = Company.create(name: "Google")

# Set Microsoft and Nvidia as partners of Apple
c1.partners << c2
c1.partners << c3


# ==========================================
# 1. Company.first retrieves the first company information
# ==========================================
Company.first


# ==========================================
# 2. Company.first.partners displays all partner information (including name)
# ==========================================
Company.first.partners.pluck(:name)


# ==========================================
# 3. Retrieve all companies who are NOT a partner with the first Company
# ==========================================
Company.where.not(id: Company.first.partner_ids << Company.first.id)