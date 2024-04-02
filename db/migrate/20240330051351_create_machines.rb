class CreateMachines < ActiveRecord::Migration[6.1]
  def change
    create_table :machines do |t|
      t.string :machin_name
      t.string :chassis_type
      t.string :motor_type
      t.float :machin_weight

      t.timestamps
    end
  end
end
