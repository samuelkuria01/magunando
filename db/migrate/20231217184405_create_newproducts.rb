class CreateNewproducts < ActiveRecord::Migration[7.0]
  def change
    create_table :newproducts do |t|
      t.string :image
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end


