class AddImageToReadings < ActiveRecord::Migration
  def change
    add_column :readings, :image, :string
  end
end
