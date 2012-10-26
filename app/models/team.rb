class Team < ActiveRecord::Base
  attr_accessible :group_id, :tags, :user_id
  
  has_many :users
  has_many :tags
  has_one :team, :foreign_key => :group
  has_many :internal_posts
  has_many :followers, :through => :users
  
end
