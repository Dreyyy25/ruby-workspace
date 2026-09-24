# Add new Comment model with polymorphic
rails g model Like likable:references{polymorphic} user:references

# Assume Forum, User, Question, and Answer now all have 
#   has_many :likes, as: :likeable

# Enter console
rails console

# Add Like to Forum
Like.create(likeable: Forum.first, user: User.first)
Forum.first.likes

# Add Like to User
Like.create(likeable: User.last, user: User.first)
User.last.likes

# Add Like to Question
Like.create(likeable: Question.find(2), user: User.first)
User.find(2).likes

# Add Like to Answer
Like.create(likeable: Answer.second, user: User.first)
Answer.second.likes
