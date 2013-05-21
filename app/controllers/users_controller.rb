class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "Signed Up!"
    else
      render 'new'
    end
  
  end
  
  def show
    @user = User.find(params[:id])
    @search = Post.search(params[:q])
    @results = @search.result.order("created_at DESC").page(params[:page]).per(2)
    @posts = @results.where(" user_id = ?", @user.id)
    render 'home/index'
  end
end
