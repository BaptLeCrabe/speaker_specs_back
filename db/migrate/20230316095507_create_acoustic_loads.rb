class CreateAcousticLoads < ActiveRecord::Migration[7.0]
  def change
    create_table :acoustic_loads do |t|
      t.string :name

      t.timestamps
    end
  end
end
