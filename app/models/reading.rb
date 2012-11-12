class Reading < ActiveRecord::Base
  attr_accessible :carbs_consumed, :exercise_level, :stress_level, :glucose_reading, :unit_output, :post, :stress_level_public, :glucose_reading_public, :exercise_level_public, :carbs_consumed_public
  
  belongs_to :user
  
end
