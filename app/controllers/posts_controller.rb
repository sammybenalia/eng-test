class PostsController < ApplicationController
  load_and_authorize_resource
 
  def show
    @post = Post.find(params[:id])
  end

            
end
