class FormController < ApplicationController
    def new
        @name = session[:name]
    end

    def create
        name = params[:name]

        if name.empty?
            name = "Anonymous"
        end
        
        session[:name] = name

        Feedback.create(
            name: name, 
            course_title: params[:course_title],
            given_score: params[:given_score],
            reason: params[:reason]
        )

        redirect_to "/display/show_all"
    end
end
