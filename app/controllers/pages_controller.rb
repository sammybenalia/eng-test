class PagesController < ApplicationController
  def about
    set_meta_tags :title => "About"
  end
  def mission
    set_meta_tags :title => "Mission Statement"
  end
end
