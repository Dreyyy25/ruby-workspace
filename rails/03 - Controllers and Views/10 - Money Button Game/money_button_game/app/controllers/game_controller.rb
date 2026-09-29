class GameController < ApplicationController
  def index
    session[:gold] ||= 0
    session[:activities] ||= []

    @gold = session[:gold]
    @activities = session[:activities]
  end

  def low
    gamble(-25, 100, "Low Risk")
  end

  def moderate
    gamble(-100, 1000, "Moderate Risk")
  end

  def high
    gamble(-500, 2500, "High Risk")
  end

  def severe
    gamble(-3000, 5000, "Severe Risk")
  end

  def reset
    session[:gold] = 0
    session[:activities] = []

    redirect_to root_path
  end

  private 

  def gamble (min, max, risk)
    gold = rand(min..max)

    session[:gold] += gold

    if gold >= 0
      session[:activities] << "WIN: You pushed #{risk}. Value is #{gold}. Your current money is now #{session[:gold]}"
    else
      session[:activities] << "LOSS: You pushed #{risk}. Value is #{gold}. Your current money is now #{session[:gold]}"
    end
    
    redirect_to root_path
  end
end
