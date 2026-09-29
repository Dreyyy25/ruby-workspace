class AlumniController < ApplicationController
  def index
    @training = Training.find(params[:training_id])
    @alumni = @training.alumns
  end

  def new
    @training = Training.find(params[:training_id])
    @alumn = Alumn.new
  end

  def create
    @training = Training.find(params[:training_id])
    @alumn = @training.alumns.new(alumn_params)

    if @alumn.save
      redirect_to "/trainings/#{@training.id}/alumni"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @training = Training.find(params[:batch_id])
    @alumn = @training.alumns.find(params[:id])
  end

  def edit
    @training = Training.find(params[:training_id])
    @alumn = @training.alumns.find(params[:id])
  end

  def update
    @training = Training.find(params[:training_id])
    @alumn = @training.alumns.find(params[:id])

    if @alumn.update(alumn_params)
      redirect_to "/batches/#{@training.id}/graduates/#{@alumn.id}"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @training = Training.find(params[:training_id])
    @alumn = @training.alumns.find(params[:id])

    @alumn.destroy

    redirect_to "/trainings/#{@training.id}/alumni"
  end

  private

  def alumn_params
    params.require(:alumn).permit(:first_name, :last_name, :job_role)
  end
end