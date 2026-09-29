class FeedbackController < ApplicationController
  def index
  end

  # "process" is reserved in Rails, so the form goes to create
  def create
    errors = []
    errors << "Course Title is required" if feedback_params[:course].blank?
    errors << "Given Score is required" if feedback_params[:score].blank?
    errors << "Reason is required" if feedback_params[:reason].blank?

    if errors.any?
      flash[:errors] = errors
      redirect_to "/"
    else
      session[:feedback] = feedback_params.to_h
      redirect_to "/result"
    end
  end

  def result
    # nothing submitted yet, so there is nothing to show
    if !session[:feedback]
      redirect_to "/"
    end
    @feedback = session[:feedback]
  end

  private
    def feedback_params
      params.require(:feedback).permit(:name, :course, :score, :reason)
    end
end
