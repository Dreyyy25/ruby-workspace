class RpgController < ApplicationController
  def index
    # Initialize gold and activities log array if they don't exist yet
    session[:gold] ||= 0
    session[:activities] ||= []
    
    @gold = session[:gold]
    @activities = session[:activities]
  end

  def farm
    earned = rand(10..20)
    process_gold(earned, "farm")
    redirect_to "/"
  end

  def cave
    earned = rand(5..10)
    process_gold(earned, "cave")
    redirect_to "/"
  end

  def house
    earned = rand(2..5)
    process_gold(earned, "house")
    redirect_to "/"
  end

  def casino
    earned = rand(-50..50)
    process_gold(earned, "casino")
    redirect_to "/"
  end

  def reset
    session[:gold] = 0
    session[:activities] = []
    redirect_to "/"
  end

  private

  def process_gold(amount, location)
    session[:gold] += amount
    timestamp = Time.now.strftime("%Y/%m/%d %l:%M %P")

    if amount >= 0
      msg = "Earned #{amount} golds from the #{location}! (#{timestamp})"
      style = "green"
    else
      msg = "Entered a #{location} and lost #{amount.abs} golds... Ouch. (#{timestamp})"
      style = "red"
    end

    # Store message and style color in session
    session[:activities].unshift({ message: msg, style: style })

    # Keep only the 15 most recent activities
    session[:activities] = session[:activities].first(15)
    
  end
end