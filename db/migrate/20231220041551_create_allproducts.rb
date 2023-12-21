class CreateAllproducts < ActiveRecord::Migration[7.0]
  def change
    create_table :allproducts do |t|
      t.string :name
      t.string :image
      t.integer :price

      t.timestamps
    end
  end
end
