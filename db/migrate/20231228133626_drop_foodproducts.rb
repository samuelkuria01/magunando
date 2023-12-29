class DropFoodproducts < ActiveRecord::Migration[7.0]
  def change
    drop_table :foodproducts
  end

  def down
    create_table :foodproducts do |t|
      t.string :name
      t.string :image
      t.integer :price
      t.timestamps
    end
  end
end
