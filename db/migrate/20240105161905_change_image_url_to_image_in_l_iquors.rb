class ChangeImageUrlToImageInLIquors < ActiveRecord::Migration[7.0]
  def change
    rename_column :liquors, :image_url, :image
  end
end
