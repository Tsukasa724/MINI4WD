class CreateMachines < ActiveRecord::Migration[6.1]
  def change
    create_table :machines do |t|
      t.string :machine_name
      t.string :machine_image
      t.float :machine_weight

      t.timestamps
    end
  end
end
