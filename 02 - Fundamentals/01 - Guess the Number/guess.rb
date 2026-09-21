def guess_number (guess)
    number = 25
    unless guess > number
        puts "Guess was too low!"
    end 

    unless guess < number
        puts "Guess was too high!"
    end

    unless guess != number
        puts "You got it right!"
    end
end

guess_number(25)