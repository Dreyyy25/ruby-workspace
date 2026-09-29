class AttendeesController < ApplicationController
  def index
    @seminar = Seminar.find(params[:seminar_id])
    @attendees = @seminar.attendees
  end

  def new
    @seminar = Seminar.find(params[:seminar_id])
    @attendee = @seminar.attendees.new
    @seminars = Seminar.all
  end

  def create
    @seminar = Seminar.find(params[:seminar_id])
    @attendee = @seminar.attendees.new(attendee_params)
    if @attendee.save
      flash[:notice] = "The attendee was added!"
      redirect_to "/seminars/#{@attendee.seminar_id}"
    else
      @seminars = Seminar.all
      # Rails 8 (Turbo) needs this status, or the page with the errors won't show
      render "new", status: :unprocessable_entity
    end
  end

  def show
    @seminar = Seminar.find(params[:seminar_id])
    @attendee = @seminar.attendees.find(params[:id])
    @co_attendees = @seminar.attendees.where.not(id: @attendee.id)
  end

  def edit
    @seminar = Seminar.find(params[:seminar_id])
    @attendee = @seminar.attendees.find(params[:id])
    @seminars = Seminar.all
  end

  def update
    @seminar = Seminar.find(params[:seminar_id])
    @attendee = @seminar.attendees.find(params[:id])
    if @attendee.update(attendee_params)
      redirect_to "/seminars/#{@attendee.seminar_id}/attendees/#{@attendee.id}"
    else
      @seminars = Seminar.all
      render "edit", status: :unprocessable_entity
    end
  end

  def destroy
    @seminar = Seminar.find(params[:seminar_id])
    @attendee = @seminar.attendees.find(params[:id])
    @attendee.destroy
    redirect_to "/seminars/#{@seminar.id}"
  end

  private
    def attendee_params
      params.expect(attendee: [:first_name, :last_name, :email, :seminar_id])
    end
end
