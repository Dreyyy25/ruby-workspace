class PostsController < ApplicationController

  layout "three_column"

  def index
    @posts = Post.includes(:user)
    @users = User.all
    @post = Post.new

    puts @posts.inspect
  end

  def create
    @user = User.find(params[:post][:user_id])
    @post = @user.posts.new(post_params)
    if @post.save 
      redirect_to "/posts"
    else
      puts "Failed"
    end
  end

  private
  def post_params
    params.expect(post: [:title, :content])
  end
end
