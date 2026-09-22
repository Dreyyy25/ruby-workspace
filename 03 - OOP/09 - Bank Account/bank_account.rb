class BankAccount
    @@accounts = 0

    def initialize()
        @account_number = 0
        @checking_amount = 1000
        @savings_amount = 5000
        @total_amount = 0
        @interest_rate = 0.01
        @@accounts += 1

        random_account_number()
    end 

    def show_account_number()
        puts "Account number: #{@account_number}"
        self
    end

    def show_checking_balance()
        puts "Checking Balance: #{@checking_amount}"
        self
    end

    def show_savings_balance()
        puts "Savings Balance: #{@savings_amount}"
        self
    end

    def show_total_balance()
        @total_amount = @checking_amount + @savings_amount
        puts "Total Balance: #{@total_amount}"
        self
    end

    def show_number_of_accounts()
        puts "There are currently #{@@accounts} accounts in this bank."
        self
    end

    def account_information()
        show_account_number()
        show_total_balance()
        show_checking_balance()
        show_savings_balance()
        puts "Interest rate: #{@interest_rate}"
    end

    def deposit(account, amount)
        if account == "checking"
           @checking_amount += amount 
           puts "\nYou have deposited #{amount} into your Checking account!"
           puts "Updated checking account balance: #{@checking_amount}\n"
           puts ""
        elsif account == "savings"
           @savings_amount += amount 
           puts "\nYou have deposited #{amount} into your Savings account!"
           puts "Updated savings account balance: #{@savings_amount}\n"
           puts ""
        else
            puts "\nInvalid Input!"
        end
    end

    def withdraw(account, amount)
        if account == "checking" && amount <= @checking_amount
            @checking_amount -= amount
           puts "\nYou have withdrawn #{amount} from your Checking account!"
           puts "Updated checking account balance: #{@checking_amount}\n"
           puts ""
        elsif account == "savings" && amount <= @savings_amount
            @savings_amount -= amount
           puts "\nYou have withdrawn #{amount} from your Savings account!"
           puts "Updated savings account balance: #{@savings_amount}\n"
           puts ""
        else
            puts "\nInsufficient funds or wrong account input"
        end
    end

    private 

    # Private function that generates a random 12 digit account number 
    def random_account_number()
        @account_number = rand(100_000_000_000..999_999_999_999)
    end

end 


account1 = BankAccount.new
account1.show_account_number()
account1.show_checking_balance()
account1.show_savings_balance()

account1.deposit("checking", 100)
account1.show_checking_balance()

account1.deposit("savings", 100)
account1.show_savings_balance()

account1.show_total_balance()

account1.withdraw("checking", 100)
account1.withdraw("savings", 10000)

account1.account_information()
