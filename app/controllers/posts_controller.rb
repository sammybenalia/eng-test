class PostsController < ApplicationController
  load_and_authorize_resource
 
  def show
    @post = Post.find(params[:id])
    if request.path != posts_path(@post)
        redirect_to posts_path(@post), status: :moved_permanently #need to fix
      end
      set_meta_tags :title => @post.title
      
    render 'admin/posts/show'
  end

            
end
