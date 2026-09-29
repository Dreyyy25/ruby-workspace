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
      flash[:notice] = "The form was submitted!"
      redirect_to "/dojos"
    else
      # Rails 8 (Turbo) needs this status, or the page with the errors won't show
      render "new", status: :unprocessable_entity
    end
  end

  private
    def dojo_params
      params.expect(dojo: [:branch, :street, :city, :state])
    end
end
