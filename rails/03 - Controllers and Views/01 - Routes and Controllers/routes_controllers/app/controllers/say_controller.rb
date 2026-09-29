class SayController < ApplicationController
  def index
    render plain: "What do you want me to say???"
  end

  def hello
    render plain: "Saying Hello!"
  end

  # :name in the route ("say/hello/:name") arrives here as params[:name]
  def hello_name
    if params[:name] == "michael"
      redirect_to "/say/hello/joe"
    else
      render plain: "Saying Hello #{params[:name].capitalize}!"
    end
  end
end
