class BankAccount
    attr_reader :account_number, :checking_balance, :saving_balance

    @@number_of_accounts = 0

    def initialize(checking = 0, saving = 0)
        @account_number = generate_account_number
        @checking_balance = checking
        @saving_balance = saving
        @interest_rate = 0.01
        @@number_of_accounts += 1
    end

    def self.number_of_accounts
        @@number_of_accounts
    end

    def deposit(account, amount)
        if account.to_s.downcase == "checking"
            @checking_balance += amount
        elsif account.to_s.downcase == "saving"
            @saving_balance += amount
        else
            puts "Invalid account type. Please specify 'checking' or 'saving'."
        end
        self
    end

    def withdraw(account, amount)
        if account.to_s.downcase == "checking"
            if @checking_balance >= amount
                @checking_balance -= amount
            else
                puts "Insufficient funds in checking account."
            end
        elsif account.to_s.downcase == "saving"
            if @saving_balance >= amount
                @saving_balance -= amount
            else
                puts "Insufficient funds in saving account."
            end
        else
            puts "Invalid account type. Please specify 'checking' or 'saving'."
        end
        self
    end

    def total_money
        @checking_balance + @saving_balance
    end

    def account_information
        puts "Account Number: #{@account_number}"
        puts "Total Money: #{total_money}"
        puts "Checking Account Balance: #{@checking_balance}"
        puts "Saving Account Balance: #{@saving_balance}"
        puts "Interest Rate: #{@interest_rate}"
        self
    end

    private

    def generate_account_number
        rand(10000000..99999999)
    end
end

#demo
account1 = BankAccount.new(100, 500)
account2 = BankAccount.new(200, 1000)

puts "Total Bank Accounts: #{BankAccount.number_of_accounts}"

account1.deposit("checking", 50)
account1.deposit("saving", 100)
account1.withdraw("checking", 200) #insufficient funds
account1.withdraw("checking", 30)

account1.account_information
