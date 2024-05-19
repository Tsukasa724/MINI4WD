class CreateParts < ActiveRecord::Migration[6.1]
  def change
    create_table :parts do |t|
      t.string :motor_name
      t.string :motor_image
      t.string :chassi_name
      t.string :chassi_image
      t.string :shaft_name
      t.string :propeller_name
      t.string :gikuuke_name
      t.string :terminal_name
      t.string :tire_name
      t.string :wheel_name
      t.string :gear_name
      t.string :roller_name
      t.integer :user_id

      t.timestamps
    end
  end
end
