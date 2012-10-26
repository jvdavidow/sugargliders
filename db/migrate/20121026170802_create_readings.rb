class CreateReadings < ActiveRecord::Migration
  def change
    create_table :readings do |t|
      t.integer :stress_level 
      t.integer :glucose_reading
      t.integer :exercise_level
      t.integer :carbs_consumed
      t.integer :unit_output

      t.timestamps
    end
  end
end
