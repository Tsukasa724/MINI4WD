class AddIdToShops < ActiveRecord::Migration[6.1]
  def change
    add_column :shops, :lap_time_to_race_id, :integer
  end
end
