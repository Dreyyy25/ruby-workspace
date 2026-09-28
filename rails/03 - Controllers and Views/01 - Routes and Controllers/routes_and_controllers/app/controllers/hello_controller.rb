class HelloController < ApplicationController
  def hello
    render plain: "Hello CodingDojo!"
  end
end
