class CreateEarthquakes < ActiveRecord::Migration
  def change
    create_table :earthquakes do |t|
      t.string :eqid
      t.string :title
      t.float :magnitude
      t.float :latitude
      t.float :longitude
      t.string :place
      t.float :time

      t.timestamps null: false
    end
  end
end
