class UsersController < ApplicationController
  # GET /users
  def index
    render json: User.all
  end

  # GET /users/new
  def new
    # Renders app/views/users/new.html.erb automatically
  end

  # GET /users/total
  def total
    render plain: "Total users: #{User.count}"
  end

  # GET /users/:id
  def show
    user = User.find(params[:id])
    render json: user
  end

  # GET /users/:id/edit
  def edit
    @user = User.find(params[:id])
    # Renders app/views/users/edit.html.erb with @user
  end

  # POST /users
  def create
    User.create(user_params)
    redirect_to "/users"
  end

  private

  # Strong parameters to safely allow the name field
  def user_params
    params.require(:user).permit(:name)
  end
end