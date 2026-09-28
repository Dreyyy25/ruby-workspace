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
      flash[:notice] = "Training successfully created!"
      redirect_to "/trainings"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def training_params
    params.require(:training).permit(:training_number, :date_started, :date_ended)
  end
end