class AlumniController < ApplicationController
  before_action :set_training
  before_action :set_alumn, only: [:show, :edit, :update, :destroy]

  def index
    @alumni = @training.alumni
  end

  def new
    @alumn = @training.alumni.build
    @all_trainings = Training.all
  end

  def create
    # Allows selecting a different training batch from the dropdown
    target_training = Training.find_by(id: alumn_params[:training_id]) || @training
    @alumn = target_training.alumni.build(alumn_params)

    if @alumn.save
      flash[:notice] = "Alumn successfully added!"
      redirect_to training_path(target_training)
    else
      @all_trainings = Training.all
      render :new, status: :unprocessable_entity
    end
  end

  def show
    # Fetch classmates (all alumni in this batch except the current one)
    @classmates = @training.alumni.where.not(id: @alumn.id)
  end

  def edit
    @all_trainings = Training.all
  end

  def update
    if @alumn.update(alumn_params)
      flash[:notice] = "Alumn successfully updated!"
      redirect_to training_alumn_path(@alumn.training, @alumn)
    else
      @all_trainings = Training.all
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @alumn.destroy
    flash[:notice] = "Alumn successfully deleted!"
    redirect_to training_path(@training)
  end

  private

  def set_training
    @training = Training.find(params[:training_id])
  end

  def set_alumn
    @alumn = @training.alumni.find(params[:id])
  end

  def alumn_params
    params.require(:alumn).permit(:first_name, :last_name, :job_role, :training_id)
  end
end