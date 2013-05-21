class ApplicationController < ActionController::Base
  protect_from_forgery
  rescue_from CanCan::AccessDenied do |exception|
      redirect_to root_url, :alert => exception.message
    end
    before_filter :links
    
    
    
  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  def links
    @nav_cat ||= Category.all
  end
  
  helper_method :current_user

end
