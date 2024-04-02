class CreateLapTimeToRaces < ActiveRecord::Migration[6.1]
  def change
    create_table :lap_time_to_races do |t|
      t.float :lap_time
      t.string :shop_name

      t.timestamps
    end
  end
end
