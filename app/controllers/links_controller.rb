class LinksController < ApplicationController
  def index
    @blogrolls = Link.all
    respond_to do |format|
      format.js
    end
  end
end
