class SurveysController < ApplicationController
  # GET /
  def index
    # Render form
  end

  # POST /surveys/create
  def create
    # Increment form submission counter in session
    session[:count] ||= 0
    session[:count] += 1

    # Store form parameters into session so they persist across redirect
    session[:result] = params[:survey]

    # Set green success message using flash
    flash[:success] = "Thanks for submitting this form! You have submitted this form #{session[:count]} times now."

    # Redirect to result page to prevent duplicate submissions on refresh
    redirect_to "/surveys/result"
  end

  # GET /surveys/result
  def result
    # Pull submitted data from session
    @result = session[:result]
  end
end