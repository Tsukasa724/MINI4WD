class CreateMachines < ActiveRecord::Migration[6.1]
  def change
    create_table :machines do |t|
      t.string :machin_name
      t.string :machin_image
      t.float :machin_weight

      t.timestamps
    end
  end
end
