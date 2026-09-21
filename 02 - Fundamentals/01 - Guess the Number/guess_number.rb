def guess_number guess
  number = 25

  unless guess == number
    return "Guess was too high!" unless guess < number

    return "Guess was too low!"
  end

  "You got it!"
end

puts guess_number 25