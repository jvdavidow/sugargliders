class FollowsController < ApplicationController
  
  respond_to :html, :xml, :json, :js
  
  def create
    @user = User.find(params[:follow][:following_id])
    unless current_user.following.include?(@user)
      current_user.following << @user 
    end
    respond_with(@user, location: @user)
  end
  def destroy
    follow = Follow.find(params[:id])
    @user = follow.following
    follow.destroy
    respond_with(@user, location: readings_path) do |format|
      format.js {render :create}
    end
  end
end
