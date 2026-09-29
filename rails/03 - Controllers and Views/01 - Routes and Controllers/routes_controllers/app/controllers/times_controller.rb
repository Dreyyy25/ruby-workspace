class TimesController < ApplicationController
  def index
    # session starts empty, so the first visit turns nil into 0 before adding 1
    session[:times] = (session[:times] || 0) + 1
    word = session[:times] == 1 ? "time" : "times"
    render plain: "You visited this url #{session[:times]} #{word}"
  end

  def restart
    reset_session
    render plain: "Destroyed the session!"
  end
end
