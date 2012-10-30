class Team < ActiveRecord::Base
  attr_accessible :group_id, :tags, :user_id
  
  has_many :users, :through => :memberships
  has_many :tags
  has_many :internal_posts
  
end
