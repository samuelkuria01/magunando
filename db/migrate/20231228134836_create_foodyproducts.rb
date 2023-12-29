class CreateFoodyproducts < ActiveRecord::Migration[7.0]
  def change
    create_table :foodyproducts do |t|
      t.string :name
      t.string :image
      t.integer :price
      t.string :category

      t.timestamps
    end
  end
end
