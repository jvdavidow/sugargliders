class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.string :post
      t.integer :following_id
      t.integer :user_id

      t.timestamps
    end
  end
end
