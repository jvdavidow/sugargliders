class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
