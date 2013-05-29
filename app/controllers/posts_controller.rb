class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
    if request.path != posts_path(@post)
        redirect_to posts_path(@post), status: :moved_permanently #need to fix
      end
      set_meta_tags :title => @post.title
      set_meta_tags :og => {
        :title => @post.title,
        :type => 'article',
        :url => request.protocol+request.host_with_port+posts_path(@post),
        :image => @post.featured_image.url
      }
      set_meta_tags :twitter => {
        :card => "summary_large_image",
        :image => @post.featured_image.url(:twitter)
        #remove host part when upload to server
        #have to add description value
      }
    render 'admin/posts/show'
  end

            
end
