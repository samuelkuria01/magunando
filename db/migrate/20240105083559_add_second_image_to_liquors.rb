class AddSecondImageToLiquors < ActiveRecord::Migration[7.0]
  def change
    add_column :liquors, :second_image_url, :string
  end
end
