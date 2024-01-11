class DropOldLiqourTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :liqours
  end

end
