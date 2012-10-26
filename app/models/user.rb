class User < ActiveRecord::Base
  attr_accessible :age, :email, :name, :password, :username
  
  has_many :readings
  has_many :posts
  has_many :follows
  has_many :bumps
  has_many :teams
  has_many :internal_posts, :through => :teams
  has_many :followers, :foreign_key => :follower_id
  has_many :follows, :through => :followings, :foreign_key => :following_id
  
end
