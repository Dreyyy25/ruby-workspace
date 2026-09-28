class CountController < ApplicationController
  def count
    if session[:count]
      session[:count] += 1
    else
      session[:count] = 1
    end

    render plain: "You have visited this url #{session[:count]} time/s"
  end

  def reset
    session.clear
    render plain: "Destroyed the session!"
  end
end
