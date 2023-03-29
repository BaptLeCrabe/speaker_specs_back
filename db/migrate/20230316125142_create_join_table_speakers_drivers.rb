class CreateJoinTableSpeakersDrivers < ActiveRecord::Migration[7.0]
  def change
    create_join_table :speakers, :drivers do |t|
      t.index [:speaker_id, :driver_id]
      t.index [:driver_id, :speaker_id]
    end
  end
end
