class CreateParts < ActiveRecord::Migration[6.1]
  def change
    create_table :parts do |t|
      t.string :motor_name
      t.string :motor_image
      t.string :chassi_name
      t.string :chassi_image
      t.integer :user_id

      t.timestamps
    end
  end
end
