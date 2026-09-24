# ==========================================
# 1. ADD COMMENTS FOR ALL 4 MODELS
# ==========================================

# Add a comment to a User
user_comment = User.first.comments.create(content: "Great user activity score!")

# Add a comment to a Blog
blog_comment = Blog.first.comments.create(content: "This blog covers excellent web dev topics.")

# Add a comment to a Post
post_comment = Post.first.comments.create(content: "Interesting post on Active Record.")

# Add a comment to a Message
message_comment = Message.first.comments.create(content: "Please clarify this message content.")


# ==========================================
# 2. READ / RETRIEVE COMMENTS
# ==========================================

User.first.comments
Blog.first.comments
Post.first.comments
Message.first.comments


# ==========================================
# 3. UPDATE COMMENTS FOR ALL 4 MODELS
# ==========================================

# Update User comment
User.first.comments.first.update(content: "Updated user feedback score.")

# Update Blog comment
Blog.first.comments.first.update(content: "Updated blog description notes.")

# Update Post comment
Post.first.comments.first.update(content: "Updated post review comment.")

# Update Message comment
Message.first.comments.first.update(content: "Updated message clarification.")


# ==========================================
# 4. DELETE COMMENTS FOR ALL 4 MODELS
# ==========================================

# Delete comment from User
User.first.comments.first.destroy

# Delete comment from Blog
Blog.first.comments.first.destroy

# Delete comment from Post
Post.first.comments.first.destroy

# Delete comment from Message
Message.first.comments.first.destroy