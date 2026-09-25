class TimesController < ApplicationController
    def times
        if session[:times]
            session[:times] += 1
        else
            session[:times] = 1
        end

        render plain: "You have visited #{session[:times]} times."
    end

    def restart
        session.clear
        render plain: "Session restarted."
    end
end
