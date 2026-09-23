class BankAccount
  # this keeps track of all the accounts
  @@accounts = 0

  attr_reader :account_number, :checking, :savings

  def initialize
    @account_number = make_account
    @checking = 0.0
    @savings = 0.0
    @interest_rate = 0.01
    @@accounts += 1
  end

  def checking_account
    @checking
  end

  def savings_account
    @savings
  end

  def deposit(amount, account)
    balance = balance_for(account)
    set_balance(account, balance + amount)
  end

  def withdraw(amount, account)
    balance = balance_for(account)
    return "Insufficient funds." if amount > balance

    set_balance(account, balance - amount)
  end

  def total
    @checking + @savings
  end

  def total_money
    total
  end

  def account_information
    puts "Account number: #{@account_number}"
    puts "Total: #{total}"
    puts "Checking: #{@checking}"
    puts "Savings: #{@savings}"
    puts "Interest rate: #{@interest_rate}"
  end

  class << self
    def accounts
      @@accounts
    end
  end

  private

  # make the account number inside the class so it cant be changed outside
  def make_account
    rand(100_000_000..999_999_999)
  end

  def balance_for(account)
    # get the balance for the account that was passed
    if account == :checking
      @checking
    else
      @savings
    end
  end

  def set_balance(account, amount)
    # update the right account balance
    if account == :checking
      @checking = amount
    else
      @savings = amount
    end
  end
end

account = BankAccount.new
account.deposit(100, :checking).deposit(50, :savings)
account.account_information
