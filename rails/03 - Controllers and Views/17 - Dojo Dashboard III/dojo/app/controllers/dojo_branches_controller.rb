class DojoBranchesController < ApplicationController
  def index
    @dojos = DojoBranch.all
  end

  def show
    @dojo = DojoBranch.find(params[:id])
  end

  def new
    @dojo = DojoBranch.new
  end

  def create
    @dojo = DojoBranch.new(dojo_params)
    if @dojo.save
      redirect_to '/dojos'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @dojo = DojoBranch.find(params[:id])
  end

  def update
    @dojo = DojoBranch.find(params[:id])
    if @dojo.update(dojo_params)
      redirect_to "/dojos/#{@dojo.id}"
    else
      render "edit", status: :unprocessable_content
    end
  end

  def destroy
    @dojo = DojoBranch.find(params[:id])
    @dojo.destroy!
    redirect_to "/dojos"
  end

  private
  def dojo_params
    params.expect(dojo_branch: [:branch, :street, :city, :state])
  end
end
