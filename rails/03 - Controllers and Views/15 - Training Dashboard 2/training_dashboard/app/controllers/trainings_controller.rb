class TrainingsController < ApplicationController
  def index
    @trainings = Training.all
  end

  def new
    @training = Training.new
  end

  def create
    @training = Training.new(training_params)
    if @training.save
      flash[:notice] = "The form was submitted!"
      redirect_to "/trainings"
    else
      # Rails 8 (Turbo) needs this status, or the page with the errors won't show
      render "new", status: :unprocessable_entity
    end
  end

  private
    def training_params
      params.expect(training: [:training_number, :start_date, :end_date])
    end
end
