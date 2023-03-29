class CreateSpeakers < ActiveRecord::Migration[7.0]
  def change
    create_table :speakers do |t|
      t.string :name
      t.string :plan_file
      t.integer :conceptor_id
      t.integer :acoustic_load_id
      t.float :sensitivity
      t.string :hpf
      t.float :f3
      t.string :driver_sizes, array: true, default: []
      t.string :frequency_range
      t.string :hornsrep_file
      t.string :akabak_file
      t.string :glb_file

      t.timestamps
    end
  end
end
