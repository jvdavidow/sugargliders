class UsersController < ApplicationController
  def show
    @user = Users.find(params[:id])
  end

  def edit
    @user = Users.find(params[:id])
  end
end
