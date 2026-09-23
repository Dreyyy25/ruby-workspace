class MobilePhone
    attr_reader :sim_card_number, :text_balance, :call_balance

    def initialize(text_balance = 0, call_balance = 0)
        @sim_card_number = generate_sim_card_number
        @text_balance = text_balance
        @call_balance = call_balance
        @sms_deduction_rate = 1
        @call_deduction_rate = 1.5
    end

    def load(type, amount)
        if type.to_s.downcase == "text"
            @text_balance += amount
        elsif type.to_s.downcase == "call"
            @call_balance += amount
        else
            puts "Invalid type. Please specify 'text' or 'call'."
        end
        self
    end

    def communicate(type)
        if type.to_s.downcase == "text"
            if @text_balance >= @sms_deduction_rate
                @text_balance -= @sms_deduction_rate
            else
                puts "Error: Insufficient load balance."
            end
        elsif type.to_s.downcase == "call"
            if @call_balance >= @call_deduction_rate
                @call_balance -= @call_deduction_rate
            else
                puts "Error: Insufficient load balance."
            end
        else
            puts "Invalid communication type. Please specify 'text' or 'call'."
        end
        self
    end

    def sim_information
        puts "SIM Card Number: #{@sim_card_number}"
        puts "Call Balance: #{@call_balance}"
        puts "SMS Deduction Rate: #{@sms_deduction_rate}"
        puts "Call Deduction Rate: #{@call_deduction_rate}"
        self
    end

    private

    def generate_sim_card_number
        rand(1000000000..9999999999)
    end
end
