class MobilePhone
    def initialize()
        @sim_card_number = 0
        @text_balance = 100
        @call_balance = 100
        @sms_deduction_rate = 1
        @call_deduction_rate = 1.5

        random_sim_card_number()
    end

    def show_sim_card_number()
        puts "SIM card number: #{@sim_card_number}"
        self
    end

    def show_text_balance()
        puts "Text Balance: #{@text_balance}"
        self
    end

    def show_call_balance()
        puts "Call Balance: #{@call_balance}"
        self
    end

    def show_number_of_texts()
        puts "Text Balance: #{@text_balance}"
        self
    end

    def show_number_of_calls()
        puts "Call Balance: #{@call_balance}"
        self
    end

    def sim_information()
        show_sim_card_number()
        show_call_balance()
        puts "SMS deduction rate: #{@sms_deduction_rate}"
        puts "Call deduction rate: #{@call_deduction_rate}"
    end

    def load(account, amount)
        if account == "text"
            @text_balance += amount
            puts "\nYou have loaded #{amount} into your Text balance!"
            puts "Updated text balance: #{@text_balance}\n"
        elsif account == "call"
            @call_balance += amount
            puts "\nYou have loaded #{amount} into your Call balance!"
            puts "Updated call balance: #{@call_balance}\n"
        else
            puts "\nInvalid Input!"
        end
    end

    def communicate(type, amount)
        if type == "text" && amount * @sms_deduction_rate <= @text_balance
            @text_balance -= amount * @sms_deduction_rate
            puts "\nYou have sent #{amount} text message/s!"
            puts "Updated text balance: #{@text_balance}\n"
        elsif type == "call" && amount * @call_deduction_rate <= @call_balance
            @call_balance -= amount * @call_deduction_rate
            puts "\nYou have made a #{amount} minute call!"
            puts "Updated call balance: #{@call_balance}\n"
        else
            puts "\nInsufficient load balance or wrong input!"
        end
    end

    private

    # Private function that generates a random 12 digit SIM card number
    def random_sim_card_number()
        @sim_card_number = rand(100_000_000_000..999_999_999_999)
    end
end


phone1 = MobilePhone.new

phone1.show_sim_card_number()
phone1.show_text_balance()
phone1.show_call_balance()

phone1.load("text", 50)
phone1.show_text_balance()

phone1.load("call", 50)
phone1.show_call_balance()

phone1.communicate("text", 10)
phone1.show_text_balance()

phone1.communicate("call", 10)
phone1.show_call_balance()

phone1.sim_information()