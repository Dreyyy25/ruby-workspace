class DojosController < ApplicationController
  before_action :set_dojo, only: [:show, :edit, :update, :destroy]
  def index
    @dojos = Dojo.all
  end

  def new
    @dojo = Dojo.new
  end

  def create
    @dojo = Dojo.new(dojo_params)

    if @dojo.save
      flash[:notice] = "Dojo successfully created!"
      redirect_to dojos_path # or redirect_to "/dojos"
    else
      # Re-render the form page with error messages in @dojo.errors
      render :new
    end
  end

  def show
    # @dojo is set by before_action
  end

  def edit
    # @dojo is set by before_action
  end

  def update
    if @dojo.update(dojo_params)
      flash[:notice] = "Dojo successfully updated!"
      redirect_to dojo_path(@dojo)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @dojo.destroy
    flash[:notice] = "Dojo successfully deleted!"
    redirect_to dojos_path
  end

  private

  def set_dojo
    @dojo = Dojo.find(params[:id])
  end

  def dojo_params
    params.require(:dojo).permit(:branch, :street, :city, :state)
  end
end