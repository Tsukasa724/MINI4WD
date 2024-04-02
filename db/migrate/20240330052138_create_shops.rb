class CreateShops < ActiveRecord::Migration[6.1]
  def change
    create_table :shops do |t|
      t.string :address
      t.time :business_hours
      t.string :regular_holiday

      t.timestamps
    end
  end
end
