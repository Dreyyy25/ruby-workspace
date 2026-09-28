class TrainingsController < ApplicationController
  before_action :set_training, only: [:show, :edit, :update, :destroy]
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

  def show
    # @training is set by before_action
  end

  def edit
    # @training is set by before_action
  end

  def update
    if @training.update(training_params)
      flash[:notice] = "Training successfully updated!"
      redirect_to training_path(@training)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @training.destroy
    flash[:notice] = "Training successfully deleted!"
    redirect_to trainings_path
  end

  private

  def set_training
    @training = Training.find(params[:id])
  end

  def training_params
    params.require(:training).permit(:training_number, :date_started, :date_ended)
  end
end