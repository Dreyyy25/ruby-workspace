class MobilePhone
  attr_reader :sim_number, :text_balance, :call_balance

  def initialize
    @sim_number = make_sim
    @text_balance = 0
    @call_balance = 0.0
  end

  def sim_card_number
    @sim_number
  end

  def load(amount, balance)
    if balance == :text
      @text_balance += amount
    else
      @call_balance += amount
    end
  end

  def text
    return "Insufficient text balance." if @text_balance < text_rate
    @text_balance -= text_rate
    @text_balance -= text_rate
  end

  def call
    return "Insufficient call balance." if @call_balance < call_rate
    @call_balance -= call_rate
    @call_balance -= call_rate
  end

  def sim_information
    puts "SIM number: #{@sim_number}"
    puts "Text balance: #{@text_balance}"
    puts "Call balance: #{@call_balance}"
    puts "Text deduction rate: #{text_rate}"
    puts "Call deduction rate: #{call_rate}"
  end

  private

  # make the sim number and rates inside so they cant be changed outside
  def make_sim
    rand(100_000_000..999_999_999)
  end

  def text_rate
    1
  end

  def call_rate
    1.5
  end
end

phone = MobilePhone.new
phone.load(5, :text).load(10, :call)
phone.sim_information
