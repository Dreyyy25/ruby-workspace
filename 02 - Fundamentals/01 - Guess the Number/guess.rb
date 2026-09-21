def guess(number, answer)
    unless number == answer 
        if number > answer 
            puts "Too high!"
        else 
            puts "Too low!"
        end
        return false
    else 
        puts "You got it!"
        return true
    end
end

is_correct = false
answer = rand(1..50)

while is_correct == false do
    puts "What's the number?"
    user_answer = gets

    is_correct = guess(user_answer.to_i, answer)
end