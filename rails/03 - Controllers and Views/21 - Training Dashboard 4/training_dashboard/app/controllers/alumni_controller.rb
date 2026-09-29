class AlumniController < ApplicationController
  def index
    @training = Training.find(params[:training_id])
    @alumns = @training.alumns
  end

  def new
    @training = Training.find(params[:training_id])
    @alumn = @training.alumns.new
    @trainings = Training.all
  end

  def create
    @training = Training.find(params[:training_id])
    @alumn = @training.alumns.new(alumn_params)
    if @alumn.save
      flash[:notice] = "The form was submitted!"
      redirect_to "/trainings/#{@alumn.training_id}"
    else
      @trainings = Training.all
      # Rails 8 (Turbo) needs this status, or the page with the errors won't show
      render "new", status: :unprocessable_entity
    end
  end

  def show
    @training = Training.find(params[:training_id])
    @alumn = @training.alumns.find(params[:id])
    @classmates = @training.alumns.where.not(id: @alumn.id)
  end

  def edit
    @training = Training.find(params[:training_id])
    @alumn = @training.alumns.find(params[:id])
    @trainings = Training.all
  end

  def update
    @training = Training.find(params[:training_id])
    @alumn = @training.alumns.find(params[:id])
    if @alumn.update(alumn_params)
      redirect_to "/trainings/#{@alumn.training_id}/alumni/#{@alumn.id}"
    else
      @trainings = Training.all
      render "edit", status: :unprocessable_entity
    end
  end

  def destroy
    @training = Training.find(params[:training_id])
    @alumn = @training.alumns.find(params[:id])
    @alumn.destroy
    redirect_to "/trainings/#{@training.id}"
  end

  private
    def alumn_params
      params.expect(alumn: [:first_name, :last_name, :job_role, :training_id])
    end
end
