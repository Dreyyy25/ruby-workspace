class GameController < ApplicationController
  def low
    check_session
    val = rand(-25..100)
    session[:money] += val
    session[:history].push({mode: "low", earned: val, total: session[:money], timestamp: Time.zone.now})
    redirect_to "/"
  end

  def moderate
    check_session
    val = rand(-100..1000)
    session[:money] += val
    session[:history].push({mode: "moderate", earned: val, total: session[:money], timestamp: Time.zone.now})
    redirect_to "/"
  end

  def high
    check_session
    val = rand(-500..2500)
    session[:money] += val
    session[:history].push({mode: "high", earned: val, total: session[:money], timestamp: Time.zone.now})
    redirect_to "/"
  end

  def severe
    check_session
    val = rand(-3000..5000)
    session[:money] += val
    session[:history].push({mode: "high", earned: val, total: session[:money], timestamp: Time.zone.now})
    redirect_to "/"
  end

  def main
    session[:money] = 0 unless session[:money]
    session[:history] = [] unless session[:history]
    @money = session[:money]
    @history = session[:history]
    
  end

  private
  def check_session
    redirect_to "/" unless session[:money] and session[:history]
  end
end
