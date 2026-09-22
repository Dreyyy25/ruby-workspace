class BankAccount
    @@accounts = 0

    def initialize 
        @account_number = rand(100_000_000..999_999_999)
        @checking_balance = 0
        @savings_balance = 0
        @interest_rate = 0.01
        @@accounts += 1
    end

    def get_account_number
        puts "Account Number: #{@account_number}"
    end

    def get_checking
        puts "Checking Balance: #{@checking_balance}"
    end

    def get_savings
        puts "Savings Balance: #{@savings_balance}"
    end

    def get_total
        puts "Savings: #{@savings_balance} | Checking: #{@checking_balance} | Total: #{@savings_balance + @checking_balance}"
    end

    def get_account_information 
        puts "Account Number: #{@account_number}"
        puts "Savings: #{@savings_balance} | Checking: #{@checking_balance} | Total: #{@savings_balance + @checking_balance}"
        puts "Interest Rate: #{@interest_rate}"
    end

    def deposit amount, account
        if account == "checking"
            @checking_balance += amount
            puts "New Checking Balance: #{@checking_balance}"
        else 
            puts "No account specified. Defaulting to Savings..." if account != "savings"
            @savings_balance += amount
            puts "New Savings Balance: #{@savings_balance}"
        end
    end

    def withdraw amount, account
        if account == "checking"
            if @checking_balance < amount
                puts "Insufficient Checking Balance"
                return
            end

            @checking_balance -= amount
            puts "New Checking Balance: #{@checking_balance}"
        else 
            if @savings_balance < amount
                puts "Insufficient Savings Balance"
                return
            end
            puts "No account specified. Defaulting to Savings..." if account != "savings"
            @savings_balance -= amount
            puts "New Savings Balance: #{@savings_balance}"
        end
    end
end

b1 = BankAccount.new
b1.get_account_number
b1.get_checking
b1.get_savings

b1.deposit(5000, "savings")
b1.deposit(1000, "checking")
b1.deposit(1000, "savigns")

b1.withdraw(500, "savings")
b1.withdraw(500, "checking")
b1.withdraw(100000, "savings")
b1.withdraw(100000, "checking")

b1.get_total

b1.get_account_information

b1.checking_balance = 100000
b1.get_checking