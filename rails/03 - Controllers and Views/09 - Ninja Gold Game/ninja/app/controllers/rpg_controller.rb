class RpgController < ApplicationController

  def main
    session[:money] = 0 unless session[:money]
    session[:history] = [] unless session[:history]
    @money = session[:money]
    @history = session[:history]
  end

  def farm
    check_session
    session[:money] += 5
    session[:history].push({place: "Farm", earned: 5, total: session[:money]})
    redirect_to "/"
  end

  def cave
    check_session
    session[:money] += 8
    session[:history].push({place: "Cave", earned: 8, total: session[:money]})
    redirect_to "/"
  end

  def casino
    check_session
    result = rand(0..1)
    if result > 0.5 
      session[:money] += 50
      session[:history].push({place: "Casino", earned: 50, total: session[:money]})
    else
      session[:money] = [session[:money] - 50, 0].max
      session[:history].push({place: "Casino", earned: -50, total: session[:money]})
    end
    redirect_to "/"
  end

  def house
    check_session
    session[:money] += 2
    session[:history].push({place: "House", earned: 2, total: session[:money]})
    redirect_to "/"
  end

  private
  def check_session
    redirect_to "/" unless session[:money] and session[:history]
  end
end
