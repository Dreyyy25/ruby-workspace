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

  private
    def seminar_params
      params.expect(seminar: [:seminar_number, :start_date, :end_date])
    end
end
