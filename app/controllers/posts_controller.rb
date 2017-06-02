class PostsController < ApplicationController

  def index
    @posts = Post.all
  end
  
  def show
    @posts = Post.find(params[:id])
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.create(post_params)
    redirect_to root_path
  end
  
  def edit

  end
  
  def update

  end
  
  def destroy

  end

  private

  def post_params
    params.require(:post).permit(:title, :author, :content)
  end

end