class SeminarsController < ApplicationController
  def index
    @seminars = Seminar.all
  end

  def show
    @seminar = Seminar.find(params[:id])
  end

  def new
    @seminar = Seminar.new
  end

  def create
    @seminar = Seminar.new(seminar_params)
    if @seminar.save 
      redirect_to "/seminars"
    else
      render "new", status: :unprocessable_entity
    end
  end

  def edit
    @seminar = Seminar.find(params[:id])
  end

  def update
    @seminar = Seminar.find(params[:id])
    if @seminar.update(seminar_params)
      redirect_to "/seminars/#{@seminar[:id]}"
    else
      render "edit", status: :unprocessable_entity
    end
  end

  def destroy
    @seminar = Seminar.find(params[:id])
    @seminar.destroy!
    redirect_to "/seminars"
  end

  private
  def seminar_params
    params.expect(seminar: [:date_start, :date_end])
  end
end
