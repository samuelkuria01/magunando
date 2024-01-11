class CreateLiqours < ActiveRecord::Migration[7.0]
  def change
    create_table :liqours do |t|
      t.string :name
      t.string :image
      t.string :description
      t.integer :price
      t.string :category

      t.timestamps
    end
  end
end
