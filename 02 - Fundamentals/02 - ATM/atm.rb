def withdraw (digits)
    number = 1000

    unless digits >= 200 && digits <= number && digits <= 10000
        if digits >= 10000
            puts "Error. Maximum is 10000."
        elsif digits <= 200
            puts "Error. Minimum is 200."
        elsif digits > number
            puts "Error. Insuifficient balance."
        end
    else 
        puts "Success. Your balance is now #{number - digits}."
    end
end

withdraw(10000)