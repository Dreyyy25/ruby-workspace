class SeminarsController < ApplicationController
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

  private

  def seminar_params
    params.require(:seminar).permit(:seminar_number, :date_started, :date_ended)
  end
end
