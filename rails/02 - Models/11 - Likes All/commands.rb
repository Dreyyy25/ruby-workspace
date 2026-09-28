# Add new Like model with polymorphic (user = who gave the like)
rails g model Like user:references "likeable:references{polymorphic}"
rake db:migrate

# Forum, Question, and Answer now all have
# has_many :likes, as: :likeable
# User has
# has_many :received_likes, as: :likeable, class_name: "Like"

# Add a Like to a User, Forum, Question and Answer
Like.create(user: User.first, likeable: User.second)
Like.create(user: User.second, likeable: Forum.first)
Like.create(user: User.first, likeable: Question.first)
Like.create(user: User.third, likeable: Answer.first)
User.second.received_likes
Forum.first.likes
Question.first.likes
Answer.first.likes

# Update: a like has no text, so move each like to something else
User.second.received_likes.first.update(likeable: User.fourth)
Forum.first.likes.first.update(likeable: Forum.second)
Question.first.likes.first.update(likeable: Question.second)
Answer.first.likes.first.update(likeable: Answer.second)

# Delete a like from each
User.fourth.received_likes.first.destroy
Forum.second.likes.first.destroy
Question.second.likes.first.destroy
Answer.second.likes.first.destroy
