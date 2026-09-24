# 1  Create 5 users
User.create([
  {
    username: "john_doe",
    email: "john@example.com",
    password: "password123"
  },
  {
    username: "jane_smith",
    email: "jane@example.com",
    password: "password123"
  },
  {
    username: "mike_wilson",
    email: "mike@example.com",
    password: "password123"
  },
  {
    username: "sarah_lee",
    email: "sarah@example.com",
    password: "password123"
  },
  {
    username: "david_kim",
    email: "david@example.com",
    password: "password123"
  }
])

# Create 5 forums
Forum.create([
  {
    title: "Ruby Programming",
    description: "A forum for discussing Ruby programming, syntax, and best practices."
  },
  {
    title: "Rails Development",
    description: "Discuss Ruby on Rails development, Active Record, controllers, and views."
  },
  {
    title: "Database Design",
    description: "Questions and discussions about SQL, database design, and normalization."
  },
  {
    title: "Web Development",
    description: "General discussions about frontend and backend web development."
  },
  {
    title: "Programming Help",
    description: "Ask questions and get help with programming problems."
  }
])

# Have the first 3 forums be created by the first user
Creator.create([
    {user: User.first, forum: Forum.first},
    {user: User.first, forum: Forum.second},
    {user: User.first, forum: Forum.third},
])

# Have the 4th forum you create be created by the second user
Creator.create(user: User.second, forum: Forum.find(4))

# Have the 5th forum you create be created by the last user
Creator.create(user: User.last, forum: Forum.find(5))

# Have the third user own all of the forums that were created.
Creator.all.update(user: User.third)

# Have the first user create 3 questions for the forum with an id of 2. 
Question.create([
    {forum: Forum.find(2), user: User.first, content: "How to do this"},
    {forum: Forum.find(2), user: User.first, content: "How to do that"},
    {forum: Forum.find(2), user: User.first, content: "How to remove this"}
])

# Have the second user create 5 questions for the last forum.
Question.create([
    {forum: Forum.last, user: User.second, content: "How to do this"},
    {forum: Forum.last, user: User.second, content: "How to do that"},
    {forum: Forum.last, user: User.second, content: "How to remove this"},
    {forum: Forum.last, user: User.second, content: "How to remove that"},
    {forum: Forum.last, user: User.second, content: "How to change this"},
])

# Have the 3rd user create several questions for different forum.
Question.create([
    {forum: Forum.find(1), user: User.third, content: "How to do this"},
    {forum: Forum.find(2), user: User.third, content: "How to do that"},
    {forum: Forum.find(3), user: User.third, content: "How to remove this"},
    {forum: Forum.find(4), user: User.third, content: "How to remove that"},
    {forum: Forum.find(5), user: User.third, content: "How to change this"},
])

# Have the 3rd user create 2 answers for the first question created and 3 answers for the second question created
Answer.create([
    {question: Question.first, user: User.third, content: "Hi"},
    {question: Question.first, user: User.third, content: "Hello"},
    {question: Question.second, user: User.third, content: "Hi"},
    {question: Question.second, user: User.third, content: "Hello"},
    {question: Question.second, user: User.third, content: "What's up"},
])

# Have the 4th user create 3 answers for the last question you created.
Answer.create([
    {question: Question.last, user: User.find(4), content: "Hi"},
    {question: Question.last, user: User.find(4), content: "Hello"},
    {question: Question.last, user: User.find(4), content: "Nothing much"}
])

# Change the creator of the 2nd question to the last user.
Question.find(2).update(user: User.last)

# Change the 2nd question's content to be something else.
Question.find(2).update(content: "Something changed")

# etrieve all forums created by the 3rd user (make this work by simply doing: User.find(3).forums).
User.find(3).forums

# Retrieve all questions that were created by the 3rd user 
User.find(3).questions

# Retrieve all answers left by the 3rd user 
User.find(3).answers

# Retrieve all questions associated with the forum id 5 as well as who left these questions.
Question.joins(:user).where(forum: Forum.find(5)).select("questions.*, users.username")

# Retrieve all answers associated with the forum id 5 along with all the user information of those who left the answers
Answer.joins(:question, :user).where(question: { forum: Forum.find(5) }).select("answers.*, users.username")

# Grab all user information of those that own the first forum (make this work by allowing Forum.first.creators to work).
Forum.first.creators

# Change it so that the first forum is no longer created by the first user.
Forum.first.creators.delete(User.first)