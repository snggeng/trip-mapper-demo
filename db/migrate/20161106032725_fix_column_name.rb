class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :trips, :lattitude, :latitude
  end
end
