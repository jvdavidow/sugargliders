class Reading < ActiveRecord::Base
  attr_accessible :carbs_consumed, :exercise_level, :stress_level, :glucose_reading, :unit_output, :post, :stress_level_public, :glucose_reading_public, :exercise_level_public, :carbs_consumed_public
  
  belongs_to :user
  
  def meal_time
    time = self.created_at.strftime("%a %-m/%-d/%y")
    if self.created_at.hour < 10 && self.created_at.hour > 3
      "#{time}, in the morning"
    elsif self.created_at.hour < 4
      "#{time}, in the afternoon"
    elsif self.created_at.hour < 9
      "#{time}, in the evening"
    else
      "#{time}, at night"
    end
  end
  
end
