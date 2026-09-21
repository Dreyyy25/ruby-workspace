balance = 1000
def withdraw(amount, balance)
    min = 200
    max = 10000

    unless amount >= min 
        puts "Amount entered is less than the minimum. (#{min})"
        return
    end

    unless amount <= max 
        puts "Amount entered is more than the maximum. (#{max})"
        return
    end

    unless amount <= balance
        puts "Amount is more than your balance. (#{balance})"
        return
    end

    balance -= amount
    puts "Your new balance is #{balance}"
    return balance
end

i = true
while i == true do
    puts "Withdraw how much?"
    amount = gets
    result = withdraw(amount.to_i, balance)

    balance = result unless result.nil?
end

