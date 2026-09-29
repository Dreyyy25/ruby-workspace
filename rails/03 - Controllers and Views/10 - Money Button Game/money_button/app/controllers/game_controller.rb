class GameController < ApplicationController
  def index
    session[:money] = session[:money] || 500
    session[:logs] = session[:logs] || []
  end

  def low
    bet("Low Risk", -25, 100)
  end

  def moderate
    bet("Moderate Risk", -100, 1000)
  end

  def high
    bet("High Risk", -500, 2500)
  end

  def severe
    bet("Severe Risk", -3000, 5000)
  end

  def reset
    reset_session
    redirect_to "/"
  end

  private
    def bet(risk, min, max)
      value = rand(min..max)
      session[:money] = session[:money] + value
      color = value >= 0 ? "green" : "red"
      time = Time.now.strftime("%m/%d/%Y %-I:%M%p")
      session[:logs] << { "color" => color, "message" => "#{time} You pushed #{risk}. Value is #{value}. Your current money now is #{session[:money]}" }
      # session is stored in a cookie, which holds only about 4 KB, so keep just the last 15
      session[:logs] = session[:logs].last(15)
      redirect_to "/"
    end
end
