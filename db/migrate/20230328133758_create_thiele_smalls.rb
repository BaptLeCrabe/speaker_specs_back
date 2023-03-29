class CreateThieleSmalls < ActiveRecord::Migration[7.0]
  def change
    create_table :thiele_smalls do |t|
      t.belongs_to :driver, null: false, foreign_key: true
      t.float :resonant_frequency
      t.float :qes
      t.float :qms
      t.float :qts
      t.float :vas
      t.float :re
      t.float :zmin
      t.float :le
      t.float :force_factor
      t.float :rms
      t.float :cms
      t.float :mmd
      t.float :mms
      t.float :sd
      t.float :edd
      t.float :driver_xmax
      t.float :xlim
      t.float :xmaxvd
      t.float :efficiency
      t.float :ebp

      t.timestamps
    end
  end
end
