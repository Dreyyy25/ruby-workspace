class MainController < ApplicationController
    def index
        render plain: "I am Main Class"
    end

    def hello
        render plain: "Hello World!"
    end

    def say
        render plain: "Hi!"
    end

    def say_word
        render plain: "#{params[:word].upcase}"
    end

    def danger 
        redirect_to "/main"
    end

    def count
        if session[:times]
            session[:times] += 1
        else
            session[:times] = 1
        end

        render plain: "You have visited #{session[:times]} times."
    end

    def reset
        session.clear
        render plain: "Session reset."
    end
end