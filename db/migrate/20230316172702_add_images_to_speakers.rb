class AddImagesToSpeakers < ActiveRecord::Migration[7.0]
  def change
    add_column :speakers, :images, :text
  end
end
