class CreateInternalPosts < ActiveRecord::Migration
  def change
    create_table :internal_posts do |t|
      t.text :body
      t.integer :group_id
      t.references :user

      t.timestamps
    end
  end
end
