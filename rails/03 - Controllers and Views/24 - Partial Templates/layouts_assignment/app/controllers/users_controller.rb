class UsersController < ApplicationController
  layout "two_column"

  def index
    @users = User.all
    @user = User.new
  end
end