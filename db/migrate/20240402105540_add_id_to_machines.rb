class AddIdToMachines < ActiveRecord::Migration[6.1]
  def change
    add_column :machines, :user_id, :integer
  end
end
