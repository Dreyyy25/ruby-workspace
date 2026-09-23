def withdraw(value)

    number = 1000

    unless value >= 200 && value <= number && value <= 10000    
        unless value <= 10000
            "Error. Maximum is 10000."
        else
            unless value < 200
                "Error. Insufficient balance."
            else
                "Error. Minimum is 200."
            end
        end
    else
        total = number - value
        "Success. Your balance is now #{total}."
    end
end