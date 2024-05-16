class CreateDefaults < ActiveRecord::Migration[6.1]
  def change
    create_table :defaults do |t|
      t.string :default_image

      t.timestamps
    end
  end
end
