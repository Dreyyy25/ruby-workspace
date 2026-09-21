def withdraw digits
    number = 1000
    max_limit = 10000
    min_limit = 200
    unless digits <= max_limit
        return "Error. Maximum is #{max_limit}"
    end

    unless digits >= min_limit
        return "Error. Minimum is #{min_limit}."
    end
    
    unless digits <= number
        return "Error. Insufficient Balance."
    end

    return "Success. Your balance is now #{number - digits}."
end

print "Enter your withdrawal amount: "
user_withdraw = gets.chomp.to_i

puts withdraw(user_withdraw)