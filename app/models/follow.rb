class Follow < ActiveRecord::Base
  attr_accessible :follower_id, :following_id
  
  belongs_to :follower, :class => :user
  
end
