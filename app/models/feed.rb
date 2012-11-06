class Feed < ActiveRecord::Base
  attr_accessible :following_id, :post, :user_id
  
  belongs_to :user
  has_many :posts, :through => :readings
  

end
