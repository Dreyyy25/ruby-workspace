def guess_number (guess)
    number = 25

    unless guess == number
        if guess > number
            puts "Guess was too high!"
        else guess < number
            puts "Guess was too low!"
        end
    else
        puts "You got it right!"
    end
end

guess_number(25)