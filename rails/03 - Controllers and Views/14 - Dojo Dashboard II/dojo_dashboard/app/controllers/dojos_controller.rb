class DojosController < ApplicationController
  def index
    @dojos = Dojo.order(created_at: :desc)
  end

  def new
    @dojo = Dojo.new
  end

  def create
    @dojo = Dojo.new(dojo_params)

    if @dojo.save
      redirect_to "/dojos"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def dojo_params
    params.require(:dojo).permit(:branch, :street, :city, :state)
  end
end
