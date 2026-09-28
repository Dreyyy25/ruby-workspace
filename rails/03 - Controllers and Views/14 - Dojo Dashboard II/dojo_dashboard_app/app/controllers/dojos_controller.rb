class DojosController < ApplicationController
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

  private

  def dojo_params
    params.require(:dojo).permit(:branch, :street, :city, :state)
  end
end