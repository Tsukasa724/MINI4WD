class CreateLapTimeToRaces < ActiveRecord::Migration[6.1]
  def change
    create_table :lap_time_to_races do |t|
      t.time :lap_time

      t.timestamps
    end
  end
end
