class AddTypeToEarthquakes < ActiveRecord::Migration
  def change
    add_column :earthquakes, :type, :string
  end
end
