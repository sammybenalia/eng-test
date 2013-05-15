class HomeController < ApplicationController
  def index
    @search = Post.search(params[:q])
    @posts = @search.result.page(params[:page]).per(2)
    
  end
end
