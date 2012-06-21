class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.references :event
      t.references :station

      t.integer :duration
      t.decimal :epi_dist, :precistion => 9, :scale => 1

      t.timestamps
    end
  end
end
