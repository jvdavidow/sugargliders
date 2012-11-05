class InternalPost < ActiveRecord::Base
  attr_accessible :body
  
  belongs_to :user
  # belongs_to :team
  
end
