class TrainingsController < ApplicationController
  def index
    @trainings = Training.all
  end

  def show
    @training = Training.find(params[:id])
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

  def edit 
    @training = Training.find(params[:id])
  end

  def update
    @training = Training.find(params[:id])
    if @training.update(training_params)
      redirect_to "/trainings/#{@training[:id]}"
    else
      render "edit", status: :unprocessable_content
    end
  end

  def destroy
    @training = Training.find(params[:id])
    @training.destroy!
    redirect_to "/trainings"
  end

  private
  def training_params
    params.expect(training: [:date_start, :date_end])
  end

end
