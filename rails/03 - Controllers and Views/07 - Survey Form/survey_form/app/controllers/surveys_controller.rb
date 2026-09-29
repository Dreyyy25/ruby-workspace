class SurveysController < ApplicationController
  def index
  end

  # "process" is reserved in Rails, so the form goes to create
  def create
    session[:survey] = survey_params.to_h
    session[:count] = (session[:count] || 0) + 1
    flash[:notice] = "Thanks for submitting this form! You have submitted this form #{session[:count]} times now."
    redirect_to "/result"
  end

  def result
    # nothing submitted yet, so there is nothing to show
    if !session[:survey]
      redirect_to "/"
    end
    @survey = session[:survey]
  end

  private
    def survey_params
      params.require(:survey).permit(:name, :location, :language, :comment)
    end
end
