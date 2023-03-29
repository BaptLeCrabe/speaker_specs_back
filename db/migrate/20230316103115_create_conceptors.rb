class CreateConceptors < ActiveRecord::Migration[7.0]
  def change
    create_table :conceptors do |t|
      t.string :name
      t.string :desc
      t.string :website

      t.timestamps
    end
  end
end
