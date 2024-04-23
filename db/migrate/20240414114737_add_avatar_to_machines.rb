class AddAvatarToMachines < ActiveRecord::Migration[6.1]
  def change
    add_column :machines, :image, :string
  end
end
