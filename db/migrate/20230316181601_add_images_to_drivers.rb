class AddImagesToDrivers < ActiveRecord::Migration[7.0]
  def change
    add_column :drivers, :images, :text
  end
end
