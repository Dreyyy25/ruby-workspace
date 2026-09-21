def guess_number guess
    number = 25
    unless guess != number 
        return "You got it!"
    end

    unless guess < number
        return "Guess was too high!"
    end

    "Guess was too low!"
end

print "Enter your guess: "
user_guess = gets.chomp.to_i

puts guess_number(user_guess)