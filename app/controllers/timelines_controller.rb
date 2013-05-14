class TimelinesController < ApplicationController
  def new 
    @timeline = Timeline.new
  end
  def create
    @timeline = Timeline.new(params[:timeline])
    if @timeline.save
      redirect_to root_path
    else
      render 'new'
    end
  end
end
