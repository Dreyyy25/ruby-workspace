# Add new Comment model with polymorphic (user = who wrote the comment)
rails g model Comment content:text user:references "commentable:references{polymorphic}"
rake db:migrate

# Blog, Post, and Message now all have
# has_many :comments, as: :commentable
# User has
# has_many :received_comments, as: :commentable, class_name: "Comment"

# Add a Comment to a User, Blog, Post and Message
Comment.create(user: User.first, commentable: User.second, content: "Jane is a great writer!")
Comment.create(user: User.second, commentable: Blog.first, content: "Love this blog!")
Comment.create(user: User.first, commentable: Post.first, content: "Very useful list.")
Comment.create(user: User.third, commentable: Message.first, content: "I agree with this message.")
User.second.received_comments
Blog.first.comments
Post.first.comments
Message.first.comments

# Update a comment on each
User.second.received_comments.first.update(content: "Jane is an amazing writer!")
Blog.first.comments.first.update(content: "I really love this blog!")
Post.first.comments.first.update(content: "Very useful list, thank you.")
Message.first.comments.first.update(content: "I completely agree with this message.")

# Delete a comment from each
User.second.received_comments.first.destroy
Blog.first.comments.first.destroy
Post.first.comments.first.destroy
Message.first.comments.first.destroy
