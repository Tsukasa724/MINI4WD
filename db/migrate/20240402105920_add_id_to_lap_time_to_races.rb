class AddIdToLapTimeToRaces < ActiveRecord::Migration[6.1]
  def change
    add_column :lap_time_to_races, :user_id, :integer
    add_column :lap_time_to_races, :shop_id, :integer
  end
end
