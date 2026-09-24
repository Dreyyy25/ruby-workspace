# 1. Create 5 Users

User.create([
  {
    first_name: "John",
    last_name: "Smith",
    email: "john.smith@example.com",
    password: "password123"
  },
  {
    first_name: "Jane",
    last_name: "Doe",
    email: "jane.doe@example.com",
    password: "password123"
  },
  {
    first_name: "Michael",
    last_name: "Brown",
    email: "michael.brown@example.com",
    password: "password123"
  },
  {
    first_name: "Sarah",
    last_name: "Wilson",
    email: "sarah.wilson@example.com",
    password: "password123"
  },
  {
    first_name: "David",
    last_name: "Taylor",
    email: "david.taylor@example.com",
    password: "password123"
  }
])

# 2. Create 5 blogs
Blog.create([
  {
    name: "The Coding Journey",
    description: "Thoughts, lessons, and experiences from learning how to code."
  },
  {
    name: "Adventures in Ruby",
    description: "Exploring Ruby and Rails through projects, challenges, and discoveries."
  },
  {
    name: "Tech & Development",
    description: "Articles about software development, programming, and technology."
  },
  {
    name: "Life Outside the Code",
    description: "Stories, experiences, and reflections about life beyond programming."
  },
  {
    name: "The Developer's Notebook",
    description: "A collection of notes, ideas, and lessons from the world of development."
  }
])

# 3 Have the first 3 blogs be owned by the first user
BlogUser.create(blog:Blog.find(1), user: User.find(1))
BlogUser.create(blog:Blog.find(2), user: User.find(1))
BlogUser.create(blog:Blog.find(3), user: User.find(1))

# 4 Have the 4th blog you create be owned by the second user
BlogUser.create(blog:Blog.find(4), user: User.find(2))

# 5 Have the 5th blog you create be owned by the last user
BlogUser.create(blog:Blog.find(5), user: User.last)

# 6 Have the third user own all of the blogs that were created.
BlogUser.all.update(user: User.third).save

# 7 Have the first user create 3 posts for the blog with an id of 2. 
Post.create(title: "Title 1", content: "Content 1", user: User.first, blog: Blog.find(2))
Post.create(title: "Title 2", content: "Content 2", user: User.first, blog: Blog.find(2))
Post.create(title: "Title 3", content: "Content 3", user: User.first, blog: Blog.find(2))

# 8 Have the second user create 5 posts for the last Blog.
Post.create(title: "Title 4", content: "Content 4", user: User.second, blog: Blog.last)
Post.create(title: "Title 5", content: "Content 5", user: User.second, blog: Blog.last)
Post.create(title: "Title 6", content: "Content 6", user: User.second, blog: Blog.last)
Post.create(title: "Title 7", content: "Content 7", user: User.second, blog: Blog.last)
Post.create(title: "Title 8", content: "Content 8", user: User.second, blog: Blog.last)

# 9. Have the 3rd user create several posts for different blogs
Post.create([
  { title: "Getting Started with Ruby", content: "Ruby is a simple and enjoyable programming language.", user: User.find(3), blog: Blog.find(1) },
  { title: "Understanding Rails Models", content: "Rails models make it easier to work with database records.", user: User.find(3), blog: Blog.find(2) },
  { title: "Why Learn Programming?", content: "Programming teaches you how to break complex problems into smaller pieces.", user: User.find(3), blog: Blog.find(3) },
  { title: "Taking a Break from Coding", content: "Taking regular breaks can help you stay focused and productive.", user: User.find(3), blog: Blog.find(4) }
])

# 10 Have the 3rd user create 2 messages for the first post created and 3 messages for the second post created
Message.create([
    {content: "Hello", user: User.find(3), post: Post.first},
    {content: "Hi", user: User.find(3), post: Post.first},
    {content: "Hi", user: User.find(3), post: Post.second},
    {content: "Bonjour", user: User.find(3), post: Post.second},
    {content: "Konnichiwa", user: User.find(3), post: Post.second},
])

# 11 Have the 4th user create 3 messages for the last post you created.
Message.create([
    {content: "How are you", user: User.fourth, post: Post.last},
    {content: "Genki desu ka", user: User.fourth, post: Post.last},
    {content: "Xiexie", user: User.fourth, post: Post.last}
])

# 12 Change the owner of the 2nd post to the last user.
Post.second.update(user: User.last)

# 13 Change the 2nd post's content to be something else.
Post.second.update(content: "Changed")

# 14 Retrieve all blogs owned by the 3rd user (make this work by simply doing: User.find(3).blogs).
User.find(3).blogs

#15 Retrieve all posts that were created by the 3rd user
Post.where(user: User.find(3))

# 16 Retrieve all messages left by the 3rd user
Message.where(user: User.find(3))

#17 Retrieve all posts associated with the blog id 5 as well as who left these posts.
Post.joins(:user).where(blog: Blog.find(5)).select("posts.*, users.first_name, users.last_name")

#18 Retrieve all messages associated with the blog id 5 along with all the user information of those who left the messages
Message.joins(:post, :users).where(post: { blog: Blog.find(5) }).select("messages.*, users.first_name, users.last_name")

#19 Grab all user information of those that own the first blog (make this work by allowing Blog.first.owners to work).
Blog.first.owners

# 20 Change it so that the first blog is no longer owned by the first user.
Blog.first.owners.delete(User.first)
