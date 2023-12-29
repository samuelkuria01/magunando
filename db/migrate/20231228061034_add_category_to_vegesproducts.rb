class AddCategoryToVegesproducts < ActiveRecord::Migration[7.0]
  def change
    add_column :vegesproducts, :category, :string
  end
end
