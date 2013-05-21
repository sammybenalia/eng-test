module Admin
class LinksController < BaseController
  def index
    @links = Link.all
  end
  def edit
    @link = Link.find(params[:id])
  end
  def create
    @link = Link.new(params[:link])
    if @link.save
      redirect_to admin_links_path, :notice => "Saved!"
    else 
      render 'new'
    end
  end
  def new 
    @link = Link.new
  end
  def update
      @link = Link.find(params[:id])
      if @link.update_attributes(params[:link])
        redirect_to admin_links_path, :notice => "Updated!"
      else
        render 'edit'
      end
  end
  def destroy
    @link = Link.find(params[:id])
    @link.delete
    redirect_to admin_links_path
  end
end
end