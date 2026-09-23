def guess_number(guess)
    number = 25

    if guess == number
        "You got it!" # implicit return
    
    elsif guess > number
        "Guess was too high."
    else
        "Guess was too low."
    end
end

def guess_number_unless(guess)
    number = 25

    unless guess != number
        "You got it!"
    else
        unless guess <= number
            "Guess was too high."
        else
            "Guess was too low."
        end
    end
end