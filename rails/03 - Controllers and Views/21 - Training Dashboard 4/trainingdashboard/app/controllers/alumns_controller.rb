class AlumnsController < ApplicationController
  def show
    @alumn = find_alumn(params)
  end

  def new
    @alumn = Alumn.new
    @training_id = params[:training_id]
  end

  def create
    @alumn = Training.find(params[:training_id]).alumns.new(alumn_params)
    if @alumn.save 
      redirect_to "/trainings/#{@alumn[:training_id]}"
    else
      render "new", status: :unprocessable_content
    end
  end

  def edit
    @alumn = find_alumn(params)
  end

  def update
    @alumn = find_alumn(params)
    if @alumn.update(alumn_params)
      redirect_to "/trainings/#{@alumn[:training_id]}/alumns/#{@alumn[:id]}"
    else
      render "edit", status: :unprocessable_content
    end

  end

  def destroy
    @alumn = find_alumn(params)
    @alumn.destroy!
    redirect_to "/trainings/#{@alumn[:training_id]}"
  end

  private
  def alumn_params
    params.expect(alumn: [:first_name, :last_name, :job_role])
  end

  def find_alumn params
    return Training.find(params[:training_id]).alumns.find(params[:alumn_id])
  end
end
