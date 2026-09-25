class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def show
    render json: User.find(params[:id])
  end

  def add_user
    
  end

  def create
    user = User.create(name: params[:user][:name])
    redirect_to "/users"
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    puts params
    User.find(params[:id]).update(name: params[:user][:name])
    redirect_to "/users"
  end

  def total
    render plain: "There are #{User.all.to_a.length} users."
  end
end
