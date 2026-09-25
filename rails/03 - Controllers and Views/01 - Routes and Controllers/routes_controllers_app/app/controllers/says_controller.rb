class SaysController < ApplicationController
  # GET /
  def index
    render plain: "What do you want me to say???"
  end

  # GET /hello
  def hello
    render plain: "Hello CodingDojo!"
  end

  # GET /say/hello
  def say_hello
    render plain: "Saying Hello!"
  end

  # GET /say/hello/joe
  def joe
    render plain: "Saying Hello Joe!"
  end

  # GET /say/hello/michael
  def michael
    redirect_to "/say/hello/joe"
  end

  # GET /times
  def times
    # Initialize session counter if it doesn't exist
    session[:count] ||= 0
    session[:count] += 1

    # Singular vs Plural word handling
    times_word = session[:count] == 1 ? "time" : "times"

    render plain: "You visited this url #{session[:count]} #{times_word}"
  end

  # GET /times/restart
  def restart
    reset_session
    render plain: "Destroyed the session!"
  end
end