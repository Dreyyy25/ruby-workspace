# Clean up database to allow running script cleanly multiple times
Answer.destroy_all
Question.destroy_all
Creator.destroy_all
Forum.destroy_all
User.destroy_all

# 1. Create 5 users (Matching ERD fields: username, email_address, password)
u1 = User.create(username: "GiannM", email_address: "giann@test.com", password: "password123")
u2 = User.create(username: "AndreyJ", email_address: "andrey@test.com", password: "password123")
u3 = User.create(username: "WendellC", email_address: "wendell@test.com", password: "password123")
u4 = User.create(username: "AlfredoV", email_address: "iv@test.com", password: "password123")
u5 = User.create(username: "SeanM", email_address: "sean@test.com", password: "password123")

# 2. Create 5 forums (Matching ERD fields: title, description)
f1 = Forum.create(title: "Forum 1", description: "Forum 1 for testing")
f2 = Forum.create(title: "Forum 2", description: "Forum 2 for testing")
f3 = Forum.create(title: "Forum 3", description: "Forum 3 for testing")
f4 = Forum.create(title: "Forum 4", description: "Forum 4 for testing")
f5 = Forum.create(title: "Forum 5", description: "Forum 5 for testing")

# 3. Have the first 3 forums be created by the first user
u1.forums << [f1, f2, f3]

# 4. Have the 4th forum created by the second user
u2.creators.create(forum: f4)

# 5. Have the 5th forum created by the last user
u5.creators.create(forum: f5)

# 6. Have the third user own all of the forums that were created
u3.forums << [f1, f2, f3, f4, f5]

# 7. First user creates 3 questions for the forum with id = 2
3.times do |i|
  u1.questions.create(
    forum: f2,
    content: "Forum #{f2.id} Question ##{i + 1}: What is Active Record?"
  )
end

# 8. Second user creates 5 questions for the last forum
5.times do |i|
  u2.questions.create(
    forum: f5,
    content: "Forum #{f5.id} Question ##{i + 1}: How do associations work?"
  )
end

# 9. 3rd user creates several questions for different forums
forums = [f1, f2, f3, f4, f5]
forums.each do |forum|
  u3.questions.create(
    forum: forum,
    content: "Question for Forum #{forum.id} asked by User #{u3.id}."
  )
end

# 10. Have 3rd user create 2 answers for the 1st question and 3 answers for the 2nd question created
q1 = Question.first
q2 = Question.second

2.times do |i|
  u3.answers.create(
    question: q1,
    content: "Sample answer ##{i + 1} by User #{u3.id} for Question #{q1.id}."
  )
end

3.times do |i|
  u3.answers.create(
    question: q2,
    content: "Sample answer ##{i + 1} by User #{u3.id} for Question #{q2.id}."
  )
end

# 11. Have 4th user create 3 answers for the last question created
q_last = Question.last

3.times do |i|
  u4.answers.create(
    question: q_last,
    content: "Sample answer ##{i + 1} by User #{u4.id} for Question #{q_last.id}."
  )
end

# 12. Change the creator/owner of the 2nd question to the last user
Question.second.update(user: u5)

# 13. Change the 2nd question's content to be something else
Question.second.update(content: "Changing question content to something else.")

# 14. Retrieve all forums created by the 3rd user
User.find(3).forums

# 15. Retrieve all questions that were created by the 3rd user
User.find(3).questions

# 16. Retrieve all answers left by the 3rd user
User.find(3).answers

# 17. Retrieve all questions associated with forum id 5 as well as who left these questions
Forum.find(5).questions.includes(:user)

# 18. Retrieve all answers associated with forum id 5 along with user info of those who left the answers
Forum.find(5).answers.includes(:user).each do |a|
  puts "Answer: '#{a.content}' | Left by: #{a.user.username} (#{a.user.email_address})"
end

# 19. Grab user info of those that own the first forum via Forum.first.creators
Forum.first.creators.includes(:user).each do |c|
  puts "Forum Creator: #{c.user.username} (#{c.user.email_address})"
end

# 20. Change it so that the first forum is no longer created by the first user
Forum.first.creators.find_by(user: User.first)&.destroy