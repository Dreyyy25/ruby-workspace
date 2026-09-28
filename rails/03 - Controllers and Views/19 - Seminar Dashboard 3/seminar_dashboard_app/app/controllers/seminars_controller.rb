class SeminarsController < ApplicationController
  before_action :set_seminar, only: [:show, :edit, :update, :destroy]
  def index
    @seminars = Seminar.all
  end

  def new
    @seminar = Seminar.new
  end

  def create
    @seminar = Seminar.new(seminar_params)

    if @seminar.save
      flash[:notice] = "Seminar successfully created!"
      redirect_to "/seminars"

    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    # @seminar is set by before_action
  end
  
  def edit
    # @seminar is set by before_action
  end

  def update
    if @seminar.update(seminar_params)
      flash[:notice] = "Seminar successfully updated!"
      redirect_to seminar_path(@seminar)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @seminar.destroy
    flash[:notice] = "Seminar successfully deleted!"
    redirect_to seminars_path
  end

  private

  def set_seminar
    @seminar = Seminar.find(params[:id])
  end

  def seminar_params
    params.require(:seminar).permit(:seminar_number, :date_started, :date_ended)
  end
end
