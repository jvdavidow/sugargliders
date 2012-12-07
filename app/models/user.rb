class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :age, :email, :name, :password, :username, :image
  
  validates_presence_of :username
  
  has_many :readings
  has_many :bumps
  has_many :memberships
  has_many :teams, :through => :memberships
  has_many :internal_posts

  # the follows class itself
  has_many :follows, :foreign_key => :follower_id 
  # then we build the relationship through that
  has_many :following, :through => :follows

  has_many :following_readings, :through => :following, :source => :readings

  # need to get follows, but the other way
  has_many :followed_by, :class_name => 'Follow', :foreign_key => :following_id
  # then get the followers through that relationship
  has_many :followers, :through => :followed_by
  
  # we don't plan on ever using follows or followed_by, but they are simply there to build the other relationships that we do want.

  # acts_as_voter
  # has_karma(:questions, :as => :submitter, :weight => 0.5)
  mount_uploader :image, ImageUploader

  def following_for(other_user)
    # self.follows.where(following_id:other_user.id).first
    self.follows.find_by_following_id(other_user.id)
  end

end
