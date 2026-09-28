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
      redirect_to "/trainings"
    else
      render "new", status: :unprocessable_entity
    end
  end

  private
  def training_params
    params.expect(training: [:date_start, :date_end])
  end

end
