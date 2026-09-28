class AttendeesController < ApplicationController
  before_action :set_seminar
  before_action :set_attendee, only: [:show, :edit, :update, :destroy]

  def index
    @attendees = @seminar.attendees
  end

  def new
    @attendee = @seminar.attendees.build
    @all_seminars = Seminar.all
  end

  def create
    target_seminar = Seminar.find_by(id: attendee_params[:seminar_id]) || @seminar
    @attendee = target_seminar.attendees.build(attendee_params)

    if @attendee.save
      flash[:notice] = "Attendee successfully added!"
      redirect_to seminar_path(target_seminar)
    else
      @all_seminars = Seminar.all
      render :new, status: :unprocessable_entity
    end
  end

  def show
    # Fetch co-attendees (everyone else in the same seminar)
    @co_attendees = @seminar.attendees.where.not(id: @attendee.id)
  end

  def edit
    @all_seminars = Seminar.all
  end

  def update
    if @attendee.update(attendee_params)
      flash[:notice] = "Attendee successfully updated!"
      redirect_to seminar_attendee_path(@attendee.seminar, @attendee)
    else
      @all_seminars = Seminar.all
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @attendee.destroy
    flash[:notice] = "Attendee successfully deleted!"
    redirect_to seminar_path(@seminar)
  end

  private

  def set_seminar
    @seminar = Seminar.find(params[:seminar_id])
  end

  def set_attendee
    @attendee = @seminar.attendees.find(params[:id])
  end

  def attendee_params
    params.require(:attendee).permit(:first_name, :last_name, :email, :seminar_id)
  end
end