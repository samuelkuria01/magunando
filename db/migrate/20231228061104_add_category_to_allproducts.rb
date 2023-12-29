class AddCategoryToAllproducts < ActiveRecord::Migration[7.0]
  def change
    add_column :allproducts, :category, :string
  end
end
