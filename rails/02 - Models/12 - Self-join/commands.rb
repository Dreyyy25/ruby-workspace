# User.first should retrieve the first user information
User.first

# User.first.friends should display all the friend information of the first user (this should include the first name and last name of all the friends of User.first).
User.first.friends

# Find out how you can retrieve all users who are NOT a friend with the first User.
Friendship.where.not(friend: User.first)