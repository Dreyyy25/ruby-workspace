class UsersController < ApplicationController
  layout "two_column"

  def index
    @users = User.all
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:notice] = "User created successfully!"
      redirect_to users_path
    else
      @users = User.all
      render :index, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :favorite_language)
  end
end