class InternalPost < ActiveRecord::Base
  attr_accessible :body, :group_id
  
  belongs_to :user
  has_one :group, :class => :team  
  
end
