class CreateDrivers < ActiveRecord::Migration[7.0]
  def change
    create_table :drivers do |t|
      t.string :name
      t.integer :brand_id
      t.float :size
      t.string :type
      t.float :spl
      t.string :frequency_range
      t.string :loadspeaker_link
      t.string :doc_files
      t.string :glb_file
      t.integer :thiele_small_id

      t.timestamps
    end
  end
end
