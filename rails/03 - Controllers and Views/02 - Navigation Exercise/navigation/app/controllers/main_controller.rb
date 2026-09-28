class MainController < ApplicationController
  def hello
    render plain: "Hello World!"
  end

  def say
    render plain: "HI"
  end

  def say_anything
    message = params[:message].upcase

    render plain: message
  end

  def index
    render plain: "I am Main Class!"
  end

  def danger
    redirect_to "/main"
  end
end
