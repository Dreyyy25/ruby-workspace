# ==========================================
# SETUP TEST DATA
# ==========================================
u1 = User.create(first_name: "John", last_name: "Doe")
u2 = User.create(first_name: "Jane", last_name: "Smith")
u3 = User.create(first_name: "Bob", last_name: "Johnson")
u4 = User.create(first_name: "Alice", last_name: "Williams")

# Make Jane (u2) and Bob (u3) friends with John (u1)
u1.friends << u2
u1.friends << u3


# ==========================================
# 1. User.first should retrieve the first user information
# ==========================================
User.first


# ==========================================
# 2. User.first.friends displays all friend info (first_name and last_name)
# ==========================================
User.first.friends.pluck(:first_name, :last_name)


# ==========================================
# 3. Retrieve all users who are NOT a friend of the first User
# ==========================================
User.where.not(id: User.first.friend_ids << User.first.id)