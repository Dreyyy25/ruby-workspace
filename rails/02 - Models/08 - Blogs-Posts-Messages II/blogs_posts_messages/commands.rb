#1. create 5 users
u1 = User.create(first_name: "Giann", last_name: "Marasigan", email_address: "giann@test.com")
u2 = User.create(first_name: "Andrey", last_name: "Jay", email_address: "andrey@test.com")
u3 = User.create(first_name: "Wendell", last_name: "Castro", email_address: "wendell@test.com")
u4 = User.create(first_name: "Alfredo", last_name: "Venturina", email_address: "iv@test.com")
u5 = User.create(first_name: "Sean", last_name: "Montecillo", email_address: "sean@test.com")

#2. create 5 blogs
b1 = Blog.create(name: "blog 1", description: "blog 1 for testing")
b2 = Blog.create(name: "blog 2", description: "blog 2 for testing")
b3 = Blog.create(name: "blog 3", description: "blog 3 for testing")
b4 = Blog.create(name: "blog 4", description: "blog 4 for testing")
b5 = Blog.create(name: "blog 5", description: "blog 5 for testing")

#3. assign first three blogs to user 1
u1.blogs << [b1, b2, b3]

#4. assign 4th blog to user 2
u2.owners.create(blog: b4)

#5. assign last blog to last user
u5.owners.create(blog: b5)

#6. third user owns all of the blogs that were created
u3.blogs << [b1, b2, b3, b4, b5]

#7. first user creates 3 posts for the blog with id = 2
3.times do |i|
    u1.posts.create(
        blog:b2,
        title: "Blog #{b2.id} Post Title ##{i+1}",
        content: "This is some dummy post content for testing purposes."
   )
end

#8.second user creates 5 posts for the last blog
5.times do |i|
    u2.posts.create(
        blog:b5,
        title: "Blog #{b5.id} Post Title ##{i+1}",
        content: "Content for post number #{i + 1} on the fifth blog."
   )
end

#9. 3rd user creates several posts for different blogs
blogs = [b1, b2, b3, b4, b5]
blogs.each do |blog|
    u3.posts.create(
        blog: blog,
        title: "Post for Blog #{blog.id} by User #{u3.id}",
        content: "This is a detailed post content written by the third user."
    )
end

#10. Have 3rd user create 2 messages for the first post and 3 messages for the second post created
p1 = Post.first
p2 = Post.second
2.times do |i|
    u3.messages.create(
        post: p1,
        author: u3.first_name,
        message: "Sample message by user #{u3.id} for post #{p1.id} = #{i+1}."
    )
end
3.times do |i|
    u3.messages.create(
        post: p2,
        author: u3.first_name,
        message: "Sample message by user #{u3.id} for post #{p2.id} = #{i+1}."
    )
end

#11. Have 4th user create 3 messages for the last post created
p5 = Post.last
3.times do |i|
    u4.messages.create(
        post: p5,
        author: u4.first_name,
        message: "Sample message by user #{u4.id} for post #{p5.id} = #{i+1}."
    )
end

#12. Change the owner of the 2nd post to the last user
Post.second.update(user: u5)

#13. Change the 2nd post's content to be something else
Post.second.update(content: "changing content to something else.")

#14. Retrieve all blogs owned by the 3rd user (make this work by simply doing: User.find(3).blogs).
User.find(3).blogs

#15. Retrieve all posts that were created by the 3rd user
User.find(3).posts

#16. Retrieve all messages left by the 3rd user
User.find(3).messages

#17. Retrieve all posts associated with the blog id 5 as well as who left these posts.
# Corrected Item #17
Blog.find(5).posts.includes(:user)

#18. Retrieve all messages associated with the blog id 5 along with all the user information of those who left the messages
Blog.find(5).messages.includes(:user).each do |m|
    puts "Message: '#{m.message}' | Left by: #{m.user.first_name} #{m.user.last_name} (#{m.user.email})"
end

#19. Grab all user information of those that own the first blog (make this work by allowing Blog.first.owners to work).
Blog.first.owners.each do |u|
    puts "Blog Owner: #{u.user.first_name} #{u.user.last_name} (#{u.user.email})"
end

#20. Change it so that the first blog is no longer owned by the first user.
Blog.first.owners.delete(User.first)