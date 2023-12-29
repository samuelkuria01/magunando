json.extract! foodyproduct, :id, :name, :image, :price, :category, :created_at, :updated_at
json.url foodyproduct_url(foodyproduct, format: :json)
