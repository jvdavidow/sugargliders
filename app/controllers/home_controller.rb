class HomeController < ApplicationController
  def index
    @current_user = current_user
    # if current_user?
    #   render 'home', readings_path
    # else
    #   redirect_to 'new', sessions_path
    # end
  end
end
