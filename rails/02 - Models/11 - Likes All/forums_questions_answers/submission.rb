# ==========================================
# 1. CREATE LIKES FOR ALL 4 MODELS
# ==========================================

# Like a User (User 1 likes User 2)
u1 = User.first
u2 = User.second
u1.likes.create(likeable: u2)

# Like a Forum (User 1 likes Forum 1)
f1 = Forum.first
u1.likes.create(likeable: f1)

# Like a Question (User 1 likes Question 1)
q1 = Question.first
u1.likes.create(likeable: q1)

# Like an Answer (User 1 likes Answer 1)
a1 = Answer.first
u1.likes.create(likeable: a1)


# ==========================================
# 2. RETRIEVE LIKES FOR ALL 4 MODELS
# ==========================================

User.second.received_likes
Forum.first.likes
Question.first.likes
Answer.first.likes


# ==========================================
# 3. UPDATE LIKES FOR ALL 4 MODELS
# ==========================================

# Change User 1's like from User 2 to User 3
u1.likes.find_by(likeable: User.second).update(likeable: User.third)

# Change User 1's like from Forum 1 to Forum 2
u1.likes.find_by(likeable: Forum.first).update(likeable: Forum.second)

# Change User 1's like from Question 1 to Question 2
u1.likes.find_by(likeable: Question.first).update(likeable: Question.second)

# Change User 1's like from Answer 1 to Answer 2
u1.likes.find_by(likeable: Answer.first).update(likeable: Answer.second)


# ==========================================
# 4. DELETE LIKES FOR ALL 4 MODELS
# ==========================================

# Delete like on User
User.third.received_likes.first.destroy

# Delete like on Forum
Forum.second.likes.first.destroy

# Delete like on Question
Question.second.likes.first.destroy

# Delete like on Answer
Answer.second.likes.first.destroy