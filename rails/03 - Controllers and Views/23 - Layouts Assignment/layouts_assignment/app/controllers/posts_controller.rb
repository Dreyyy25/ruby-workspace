class PostsController < ApplicationController
  layout "three_column"

  def index
    @posts = Post.includes(:user).all
    @post = Post.new
    @users = User.all
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      flash[:notice] = "Post created successfully!"
      redirect_to posts_path
    else
      @posts = Post.includes(:user).all
      @users = User.all
      render :index, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :user_id)
  end
end