class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @following_id = Follow.new
  end

  def index
    @users = User.all
  end
end
