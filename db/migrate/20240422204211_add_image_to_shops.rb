class AddImageToShops < ActiveRecord::Migration[6.1]
  def change
    add_column :shops, :shop_image, :string
    add_column :shops, :course_layout, :string
  end
end
