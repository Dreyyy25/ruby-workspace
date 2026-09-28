class DisplayController < ApplicationController
    def show_all
        @feedbacks = Feedback.all
        @name = session[:name]
    end
end
