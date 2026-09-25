class GameController < ApplicationController
  def index
    # Initial money starts at 500 per the wireframe
    session[:money] ||= 500
    session[:activities] ||= []

    @money = session[:money]
    @activities = session[:activities]
  end

  def low
    earned = rand(-25..100)
    process_bet(earned, "Low Risk")
    redirect_to "/"
  end

  def moderate
    earned = rand(-100..1000)
    process_bet(earned, "Moderate Risk")
    redirect_to "/"
  end

  def high
    earned = rand(-500..2500)
    process_bet(earned, "High Risk")
    redirect_to "/"
  end

  def severe
    earned = rand(-3000..5000)
    process_bet(earned, "Severe Risk")
    redirect_to "/"
  end

  def double_or_nothing
    current_money = session[:money]

    if current_money <= 0
      # Can't gamble if you're broke!
      timestamp = Time.now.strftime("%m/%d/%Y %l:%M%p")
      msg = "#{timestamp} You tried Double or Nothing, but you don't have any money to gamble!"
      session[:activities].unshift({ message: msg, style: "red" })
      session[:activities] = session[:activities].first(15)
    else
      # 50/50 chance: 1 = Win, 0 = Lose
      win = rand(0..1) == 1

      if win
        earned = current_money # Gain equal to current money
        process_bet(earned, "Double or Nothing [WIN]")
      else
        lost = -current_money # Lose all current money
        process_bet(lost, "Double or Nothing [LOSE]")
      end
    end

    redirect_to "/"
  end

  def reset
    session[:money] = 500
    session[:activities] = []
    redirect_to "/"
  end

  private

  def process_bet(amount, risk_level)
    session[:money] += amount
    timestamp = Time.now.strftime("%m/%d/%Y %l:%M%p")

    # Format output according to wireframe log spec
    msg = "#{timestamp} You pushed #{risk_level}. Value is #{amount}. Your current money now is #{session[:money]}"
    style = amount >= 0 ? "green" : "red"

    # Prepend new activity and cap array size to prevent cookie overflow
    session[:activities].unshift({ message: msg, style: style })
    session[:activities] = session[:activities].first(15)
  end
end