class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :user_id
      t.integer :group_id
      t.string :tags

      t.timestamps
    end
  end
end
