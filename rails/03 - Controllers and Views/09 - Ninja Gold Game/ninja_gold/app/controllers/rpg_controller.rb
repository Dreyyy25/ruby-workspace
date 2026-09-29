class RpgController < ApplicationController
  def index
    session[:gold] = session[:gold] || 0
    session[:activities] = session[:activities] || []
  end

  def farm
    earn(rand(10..20), "the farm")
  end

  def cave
    earn(rand(5..10), "the cave")
  end

  def house
    earn(rand(2..5), "the house")
  end

  def casino
    gold = rand(-50..50)
    session[:gold] = session[:gold] + gold
    if gold >= 0
      add_activity("green", "Entered a casino and won #{gold} gold!")
    else
      add_activity("red", "Entered a casino and lost #{-gold} gold... Ouch.")
    end
    redirect_to "/"
  end

  private
    def earn(gold, place)
      session[:gold] = session[:gold] + gold
      add_activity("green", "Earned #{gold} gold from #{place}!")
      redirect_to "/"
    end

    def add_activity(color, message)
      time = Time.now.strftime("%B %d, %Y %I:%M %p")
      session[:activities] << { "color" => color, "message" => "#{message} (#{time})" }
      # session is stored in a cookie, which holds only about 4 KB, so keep just the last 15
      session[:activities] = session[:activities].last(15)
    end
end
