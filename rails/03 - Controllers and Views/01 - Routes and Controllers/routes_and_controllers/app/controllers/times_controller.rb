class TimesController < ApplicationController
  def times
    if session[:count]
      session[:count] += 1
    else
      session[:count] = 1
    end 

    render plain: "You have visited this url #{session[:count]} time/s"
  end

  def restart
    session.clear
    render plain: "Destroyed the session!"
  end
end
