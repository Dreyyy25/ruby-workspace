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
      redirect_to "/seminars"
    else
      render "new", status: :unprocessable_entity
    end
  end

  private
  def seminar_params
    params.expect(seminar: [:date_start, :date_end])
  end
end
