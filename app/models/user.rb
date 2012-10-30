class User < ActiveRecord::Base
  attr_accessible :age, :email, :name, :password, :username
  
  has_many :readings
  has_many :posts
  has_many :bumps
  has_many :teams, :through => :memberships
  has_many :internal_posts, :through => :teams

  # the follows class itself
  has_many :follows, :foreign_key => :follower_id 
  # then we build the relationship through that
  has_many :following, :through => :follows

  # need to get follows, but the other way
  has_many :followed_by, :class_name => 'Follow', :foreign_key => :follower_id
  # then get the followers through that relationship
  has_many :followers, :through => :followed_by
  
  # we don't plan on ever using follows or followed_by, but they are simply there to build the other relationships that we do want.

  acts_as_voter
  has_karma(:questions, :as => :submitter, :weight => 0.5)

end
