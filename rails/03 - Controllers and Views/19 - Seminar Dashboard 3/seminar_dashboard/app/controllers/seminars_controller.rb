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
      flash[:notice] = "The form was submitted!"
      redirect_to "/seminars"
    else
      # Rails 8 (Turbo) needs this status, or the page with the errors won't show
      render "new", status: :unprocessable_entity
    end
  end

  def show
    @seminar = Seminar.find(params[:id])
  end

  def edit
    @seminar = Seminar.find(params[:id])
  end

  def update
    @seminar = Seminar.find(params[:id])
    if @seminar.update(seminar_params)
      redirect_to "/seminars/#{@seminar.id}"
    else
      render "edit", status: :unprocessable_entity
    end
  end

  def destroy
    @seminar = Seminar.find(params[:id])
    @seminar.destroy
    redirect_to "/seminars"
  end

  private
    def seminar_params
      params.expect(seminar: [:seminar_number, :start_date, :end_date])
    end
end
