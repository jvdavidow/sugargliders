class CreateReadings < ActiveRecord::Migration
  def change
    create_table :readings do |t|
      t.integer :stress_level 
      t.integer :glucose_reading
      t.integer :exercise_level
      t.integer :carbs_consumed
      t.integer :unit_output
      t.string  :post
      t.references :user
      t.boolean :stress_level_public
      t.boolean :glucose_reading_public
      t.boolean :exercise_level_public
      t.boolean :carbs_consumed_public

      t.timestamps
    end
  end
end
