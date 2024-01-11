class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.integer :price

      t.bigint :category_id
      t.foreign_key :categories

      t.timestamps
    end
  end
end
