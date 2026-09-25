class FeedbacksController < ApplicationController
  # GET /
  def index
    # Renders the feedback form page
  end

  # POST /feedbacks/create
  def create
    # Basic validation check using flash for error messages
    if params[:feedback][:reason].blank?
      flash[:errors] = ["Reason cannot be blank!"]
      redirect_to "/"
      return
    end

    # Store form data in session so it persists on the result page
    session[:result] = params[:feedback]

    # Clear any previous errors and redirect to result
    redirect_to "/feedbacks/result"
  end

  # GET /feedbacks/result
  def result
    @result = session[:result]
  end
end