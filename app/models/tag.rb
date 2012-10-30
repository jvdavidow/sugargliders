class Tag < ActiveRecord::Base
  attr_accessible :tag
  
  belongs_to_and_has_many :teams
  
end
