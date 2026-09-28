class AttendeesController < ApplicationController
def show
    @attendee = find_attendee(params)
  end

  def new
    @attendee = Attendee.new
    @seminar_id = params[:seminar_id]
  end

  def create
    @attendee = Seminar.find(params[:seminar_id]).attendees.new(attendee_params)
    if @attendee.save 
      redirect_to "/seminars/#{@attendee[:seminar_id]}"
    else
      render "new", status: :unprocessable_content
    end
  end

  def edit
    @attendee = find_attendee(params)
  end

  def update
    @attendee = find_attendee(params)
    if @attendee.update(attendee_params)
      redirect_to "/seminars/#{@attendee[:seminar_id]}/attendees/#{@attendee[:id]}"
    else
      render "edit", status: :unprocessable_content
    end

  end

  def destroy
    @attendee = find_attendee(params)
    @attendee.destroy!
    redirect_to "/seminars/#{@attendee[:seminar_id]}"
  end

  private
  def attendee_params
    params.expect(attendee: [:first_name, :last_name, :email])
  end

  def find_attendee params
    return Seminar.find(params[:seminar_id]).attendees.find(params[:attendee_id])
  end
end
