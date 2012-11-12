class Reading < ActiveRecord::Base
  attr_accessible :carbs_consumed, :exercise_level, :stress, :glucose_reading, :unit_output, :post

  belongs_to :user
  
end
