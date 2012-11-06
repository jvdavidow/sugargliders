class SessionsController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.find(params[:user])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end
end
