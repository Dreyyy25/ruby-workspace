class AttendeesController < ApplicationController
  def index
    @seminar = Seminar.find(params[:seminar_id])
    @attendees = @seminar.attendees
  end

  def new
    @seminar = Seminar.find(params[:seminar_id])
    @attendee = Attendee.new
  end

  def create
    @seminar = Seminar.find(params[:seminar_id])
    @attendee = @seminar.attendees.new(attendee_params)

    if @attendee.save
      redirect_to "/seminars/#{@seminar.id}/attendees"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @seminar = Seminar.find(params[:batch_id])
    @attendee = @seminar.attendees.find(params[:id])
  end

  def edit
    @seminar = Seminar.find(params[:seminar_id])
    @attendee = @seminar.attendees.find(params[:id])
  end

  def update
    @seminar = Seminar.find(params[:seminar_id])
    @attendee = @seminar.attendees.find(params[:id])

    if @attendee.update(attendee_params)
      redirect_to "/batches/#{@seminar.id}/graduates/#{@attendee.id}"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @seminar = Seminar.find(params[:seminar_id])
    @attendee = @seminar.attendees.find(params[:id])

    @attendee.destroy

    redirect_to "/seminars/#{@seminar.id}/attendees"
  end

  private

  def attendee_params
    params.require(:attendee).permit(
      :first_name,
      :last_name,
      :email
    )
  end
end