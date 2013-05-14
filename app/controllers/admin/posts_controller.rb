module Admin

class PostsController < BaseController
  load_and_authorize_resource
  def index
    @posts = Post.all
  end
  def show
    @post = Post.find(params[:id])
  end
  def edit
    @post = Post.find(params[:id])
  end
  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      redirect_to root_path
    else
      render "new"
      flash[:error] = "Error"
    end
  end
  def new
    @post = Post.new
  end
  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to root_path
    else
      render "new"
      flash[:error] = "Error"
    end
  end
  
end
end
