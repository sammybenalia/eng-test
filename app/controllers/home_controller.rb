class HomeController < ApplicationController
  def index
    @search = Post.search(params[:q])
    @posts = @search.result.order("created_at DESC").page(params[:page]).per(4)
    if params[:page]
    @url = "/?page="+params[:page]
  end
    
  end
  def tag
    @search = Post.search(params[:q])
    @results = @search.result.page(params[:page]).per(4)
    @posts = @results.tagged_with(params[:tag]).order("created_at DESC")
    #set order
    set_meta_tags :title => params[:tag]
    set_meta_tags :keywords => params[:tag]
    
    render 'index'
  end
  def author(user)
    @search = Post.search(params[:q])
    @results = @search.result.order("created_at DESC").page(params[:page]).per(4)
    @posts = @results.where(["user_id = ?", user.id])
    set_meta_tags :title => user.fullname
  end
  

end
