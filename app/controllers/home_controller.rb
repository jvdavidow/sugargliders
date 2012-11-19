class HomeController < ApplicationController
  def index
    if @current_user = User.find(params[:id]).rememberable?
      render 'home', readings_path
    else
      redirect_to 'new', sessions_path
    end
  end
end
