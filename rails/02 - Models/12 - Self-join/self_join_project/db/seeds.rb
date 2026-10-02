Friendship.destroy_all
User.destroy_all

user1 = User.create!(first_name: "Alice", last_name: "Smith", email_address: "alice@example.com", age: 25)
user2 = User.create!(first_name: "Bob", last_name: "Jones", email_address: "bob@example.com", age: 30)
user3 = User.create!(first_name: "Charlie", last_name: "Brown", email_address: "charlie@example.com", age: 28)
user4 = User.create!(first_name: "Diana", last_name: "Prince", email_address: "diana@example.com", age: 27)
user5 = User.create!(first_name: "Ethan", last_name: "Hunt", email_address: "ethan@example.com", age: 35)

Friendship.create!(user: user1, friend: user2)
Friendship.create!(user: user1, friend: user3)
