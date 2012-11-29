class HomeController < ApplicationController
  def index
    @current_user = current_user
    # if current_user?
    #   render :index
    # else
    #   redirect_to sessions_path
    # end
    render layout: false
  end
end


