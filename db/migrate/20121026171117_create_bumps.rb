class CreateBumps < ActiveRecord::Migration
  def change
    create_table :bumps do |t|
      t.integer :post_id
      t.integer :bumper_id
      t.integer :bumped_id

      t.timestamps
    end
  end
end
