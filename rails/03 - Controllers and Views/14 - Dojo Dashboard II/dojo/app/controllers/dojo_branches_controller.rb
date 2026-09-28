class DojoBranchesController < ApplicationController
  def index
    @dojos = DojoBranch.all
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

  private
  def dojo_params
    params.expect(dojo_branch: [:branch, :street, :city, :state])
  end
end
