class MainController < ApplicationController
    #GET / and GET/main
    def index
        render plain: "I am Main Class!"
    end

    # GET /main/hello
  def hello
    render plain: "Hello World!"
  end

  # GET /main/say/hi
  def say
    render plain: "HI"
  end

  # GET /main/say_anything/:word
  def say_anything
    # params[:word] fetches the string from the URL, then .upcase capitalizes it
    render plain: params[:word].upcase
  end

  # GET /main/danger
  def danger
    redirect_to "/main"
  end

  # GET /count
  def count
    session[:count] ||= 0
    session[:count] += 1

    times_word = session[:count] == 1 ? "time" : "times"
    render plain: "You visited this url #{session[:count]} #{times_word}"
  end

  # GET /count/reset
  def reset
    reset_session
    render plain: "Destroyed the session!"
  end
end
