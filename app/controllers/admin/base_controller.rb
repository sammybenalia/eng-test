module Admin
  class BaseController < ApplicationController
    before_filter :verify_admin
    private
    def verify_admin
      
      redirect_to login_path unless current_user.role == "admin"
    end
    
  end
end