module Admin
  class BaseController < ApplicationController
    before_filter :verify_admin, :dont_follow
    private
    def dont_follow
      set_meta_tags :nofollow => true
      set_meta_tags :nofollow => 'googlebot'
    end
    def verify_admin
      
      redirect_to login_path unless current_user.role == "admin"
    end
    
  end
end