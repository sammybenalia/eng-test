module Admin
class PagesController < BaseController
  def index
    @pages = Page.all
  end
  def new
    @page = Page.new
  end
  def create 
    @page = Page.new(params[:page])
    if @page.save
      redirect_to admin_root_path
    else
      render 'new'
    end
  end
  def show
    @page = Page.find(params[:id])
  end
  def edit
    @page = Page.find(params[:id])
  end
  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(params[:page])
      redirect_to admin_root_path
    else
      render 'edit'
    end
  end
  def destroy
    @page = Page.find(params[:id])
    redirect_to admin_root_path
  end
end
end