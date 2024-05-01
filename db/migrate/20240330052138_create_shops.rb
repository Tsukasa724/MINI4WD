class CreateShops < ActiveRecord::Migration[6.1]
  def change
    create_table :shops do |t|
      t.string :shop_name
      t.string :address
      t.string :business_hours
      t.string :regular_holiday

      t.timestamps
    end
  end
end
