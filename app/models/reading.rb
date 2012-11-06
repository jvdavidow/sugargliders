class Reading < ActiveRecord::Base
  attr_accessible :carbs_consumed, :exercise_level, :glucose_reading, :unit_output, :post

  belongs_to :user
  has_one :post
  
end
