class RenameFoodyProductsToFreshfoods < ActiveRecord::Migration[7.0]
  def change
    rename_table :foodyproducts, :freshfoods
  end
end
