class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :code

      t.timestamps
    end
  end
end
