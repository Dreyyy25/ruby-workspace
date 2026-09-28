class UsersController < ApplicationController
    def index 
        render json: User.all
    end

    def new 
    end

    def show 
        user = User.find(params[:id])
        render json: user
    end

    def edit
        @user = User.find(params[:id])
    end

    def create
        User.create(name: params[:name])

        redirect_to "/users"
    end

    def total
        render plain: User.count.to_s
    end
end
