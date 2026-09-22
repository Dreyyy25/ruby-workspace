class BankAccount
    attr_reader :account_number, :checkings_balance, :savings_balance
    @@number_of_accounts = 0

    def initialize
        @account_number = generate_account_number
        @checkings_balance = 0
        @savings_balance = 0
        @interest_rate = 0.01

        @@number_of_accounts += 1
    end

    def self.number_of_accounts
        @@number_of_accounts
    end

    def deposit(account_type, amount)
        # logic to add amount to checking or savings
        if account_type == "checkings"
            @checkings_balance += amount
        elsif account_type == "savings"
            @savings_balance += amount
        else
           return "error! Invalid Account."
        end
    end

    def withdraw(account_type, amount)
        # logic to subtract amount if sufficient funds, else return error
        case account_type
        when "checkings"
            return "Error. Insufficient Balance." if amount > @checkings_balance
            @checkings_balance -= amount
        when "savings"
            return "Error. Insufficient Balance." if amount > @savings_balance
            @savings_balance -= amount
        else
            "Error! Invalid Account."
        end
    end

    def total_balance
        # sum of checking and savings
        return "Total Balance in Bank (checkings and savings combined): #{@checkings_balance + @savings_balance}"
    end

    def account_information
        # puts account_number, total_balance, checking, savings, interest rate
        return "Account number: #{@account_number}, checkings balance: #{@checkings_balance}, savings balance: #{@savings_balance}, total balance: #{@checkings_balance + @savings_balance}, interest rate: #{@interest_rate}"
    end

    private
    def generate_account_number
        # generate a random number
        rand(100_000_000..999_999_999)
    end
end

# 1. Create two bank accounts
acc1 = BankAccount.new
acc2 = BankAccount.new

# Check total accounts count across the bank
puts "Total Accounts in Bank: #{BankAccount.number_of_accounts}" # => 2

# 2. Deposit money
acc1.deposit("checkings", 500)
acc1.deposit("savings", 1000)

# 3. Withdraw money (valid)
acc1.withdraw("checkings", 100)

# 4. Withdraw money (overdraft attempt - should fail)
puts acc1.withdraw("checkings", 1000) # => Error. Insufficient Balance.

# 5. Check balances and total info
puts acc1.total_balance
puts acc1.account_information

# 6. Verify attributes cannot be overwritten directly
begin
  acc1.checkings_balance = 999999
rescue NoMethodError => e
  puts "Protected! User cannot write attributes directly."
end