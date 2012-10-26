class Bump < ActiveRecord::Base
  attr_accessible :bumped_id, :bumper_id, :post_id
  
  belongs_to :user
  belongs_to :post
  
end
