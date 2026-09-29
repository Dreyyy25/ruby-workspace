class MainController < ApplicationController
  def index
    render plain: "I am Main Class!"
  end

  def hello
    render plain: "Hello World!"
  end

  def say
    render plain: "HI"
  end

  # :word in the route ("main/say_anything/:word") arrives here as params[:word]
  def say_anything
    render plain: params[:word].upcase
  end

  def danger
    redirect_to "/main"
  end

  def count
    # session starts empty, so the first visit turns nil into 0 before adding 1
    session[:count] = (session[:count] || 0) + 1
    word = session[:count] == 1 ? "time" : "times"
    render plain: "You visited this url #{session[:count]} #{word}"
  end

  def reset
    reset_session
    render plain: "Destroyed the session!"
  end
end
