class MobilePhone
    def initialize
        @phone_number = rand(9_000_000_000..9_999_999_999)
        @texts = 0
        @calls = 0
        @text_rate = 1
        @call_rate = 1.5
    end

    def get_number
        puts "Phone Number: #{@phone_number}"
    end

    def get_texts
        puts "Text Balance: #{@texts}"
    end

    def get_calls
        puts "Call Balance: #{@calls}"
    end

    def get_sim_information
        puts "Phone Number: #{@phone_number}"
        puts "Text Balance: #{@texts}"
        puts "Text Deduction Rate: #{@text_rate}"
        puts "Call Balance: #{@calls}"
        puts "Call Deduction Rate: #{@call_rate}"
    end

    def load amount, account
        if account == "text"
            @texts += amount
            puts "New Text Balance: #{@texts}"
        else 
            puts "No account specified. Defaulting to Calls..." if account != "calls"
            @calls += amount
            puts "New Call Balance: #{@calls}"
        end
    end

    def send method
        if method == "sms"
            if @texts < @text_rate
                puts "Insufficient Text Balance"
                return
            end

            @texts -= @text_rate
            puts "New Text Balance: #{@texts}"
        else 
            if @calls < @call_rate
                puts "Insufficient Call Balance"
                return
            end
            @calls -= @call_rate
            puts "New Call Balance: #{@calls}"
        end
    end
end

m1 = MobilePhone.new
m1.get_number
m1.get_texts
m1.get_calls

m1.load(100, "text")
m1.load(100, "call")

m1.send("sms")
m1.send("call")

m1.get_sim_information