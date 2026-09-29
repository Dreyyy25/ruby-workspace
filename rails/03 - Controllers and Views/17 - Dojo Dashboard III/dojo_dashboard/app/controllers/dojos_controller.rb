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

  def show
    @dojo = Dojo.find(params[:id])
  end

  def edit
    @dojo = Dojo.find(params[:id])
  end

  def update
    @dojo = Dojo.find(params[:id])
    
    if @dojo.update(dojo_params)
      redirect_to "/dojos/#{@dojo.id}"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @dojo = Dojo.find(params[:id])
    @dojo.destroy

    redirect_to "/dojos"
  end

  private

  def dojo_params
    params.require(:dojo).permit(:branch, :street, :city, :state)
  end
end
