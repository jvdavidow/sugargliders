class FeedController < ApplicationController
  
  def new
    @feed = Feed.new(params[:id])
  end
  
  def select
    @post = Posts.find(params[:id])
    render @post
  end
end
