class ErrorsController < ApplicationController
  def not_found
    @error = "#{request.protocol}#{request.host_with_port}#{request.fullpath}"
  end
end
