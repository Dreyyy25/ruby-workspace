# Add new Comment model with polymorphic
rails g model Comment commentable:references{polymorphic} content:string

# Assume Blog, User, Post, and Message now all have 
#   has_many :comments, as: :commentable

# Enter console
rails console

# Add Comment to Blog
Comment.create(commentable: Blog.first, content: "This a great blog!")
Blog.first.comments

# Add Comment to User
Comment.create(commentable: User.find(3), content: "You're a good writer.")
User.find(3).comments

# Add Comment to Post
Comment.create(commentable: Post.last, content: "Informational post!")
Post.last.comments

# Add Comment to Message
Comment.create(commentable: Message.second, content: "omg i agree")
Message.second.comments
