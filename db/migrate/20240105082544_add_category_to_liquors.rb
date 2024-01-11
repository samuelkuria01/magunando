class AddCategoryToLiquors < ActiveRecord::Migration[7.0]
  def change
    add_column :liquors, :category, :string
  end
end
