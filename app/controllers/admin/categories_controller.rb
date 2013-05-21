module Admin
class CategoriesController < BaseController
  def index
    @categories = Category.all
  end
  def edit
    @category = Category.find(params[:id])
  end
  def create
    @category = Category.new(params[:category])
    if @category.save
      redirect_to admin_categories_path, :notice => "Saved!"
    else 
      render 'new'
    end
  end
  def new 
    @category = Category.new
  end
  def update
      @category = Category.find(params[:id])
      if @category.update_attributes(params[:category])
        redirect_to admin_categories_path, :notice => "Updated!"
      else
        render 'edit'
      end
  end
  def destroy
    @category = Category.find(params[:id])
    @category.delete
    redirect_to admin_categories_path
  end
end
end