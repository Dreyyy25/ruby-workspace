class MobilePhone
    attr_reader :simcard_number, :call_balance, :sms_balance

    def initialize
        @simcard_number = generate_simcard_number
        @call_balance = 0
        @sms_balance = 0
        @sms_deduction_rate = 1
        @call_deduction_rate = 1.5
    end

    def load(load_type, amount)
        # logic to add amount to sms balance or call balance
        if load_type == "sms"
            @sms_balance += amount
        elsif load_type == "call"
            @call_balance += amount
        else
           return "error! Invalid load type."
        end
    end

    def communicate(load_type)
        # logic to subtract amount if sufficient funds, else return error
        case load_type
        when "sms"
            return "Error. Insufficient Balance." if @sms_deduction_rate > @sms_balance
            @sms_balance -= @sms_deduction_rate
        when "call"
            return "Error. Insufficient Balance." if @call_deduction_rate > @call_balance
            @call_balance -= @call_deduction_rate
        else
            "Error! Invalid communication type."
        end
    end

    def sim_information
        # puts simcard number, call balance, sms balance, and deduction rates
        return "Simcard number: #{@simcard_number}, call balance: #{@call_balance}, sms balance: #{@sms_balance}, call deduction rate: #{@call_deduction_rate}, sms deduction rate: #{@sms_deduction_rate}"
    end

    private
    def generate_simcard_number
        # generate a random number
        rand(100_000_000..999_999_999)
    end
end

# --- TEST SUITE ---

# 1. Instantiate phone
phone = MobilePhone.new
puts "Generated SIM Card Number: #{phone.simcard_number}"

# 2. Check initial balances
puts "Initial SMS balance: #{phone.sms_balance}"   # => 0
puts "Initial Call balance: #{phone.call_balance}" # => 0

# 3. Attempt to communicate with 0 balance (Should return error)
puts phone.communicate("sms")  # => Error. Insufficient Balance.
puts phone.communicate("call") # => Error. Insufficient Balance.

# 4. Load balance
phone.load("sms", 5)
phone.load("call", 10)

puts "SMS balance after load: #{phone.sms_balance}"   # => 5
puts "Call balance after load: #{phone.call_balance}" # => 10

# 5. Use services
phone.communicate("sms")  # Deducts 1 -> 4
phone.communicate("call") # Deducts 1.5 -> 8.5

puts "SMS balance after text: #{phone.sms_balance}"    # => 4
puts "Call balance after call: #{phone.call_balance}"  # => 8.5

# 6. Display full SIM information
puts phone.sim_information

# 7. Encapsulation check (User cannot modify attributes directly)
begin
  phone.sms_balance = 100
rescue NoMethodError
  puts "Protected! User cannot write attributes directly."
end