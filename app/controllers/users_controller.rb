class UsersController < ApplicationController
  def show
    @user = User.find(params[:user_id])
  end

  def edit
    @user = User.find(params[:user_id])
  end
end
