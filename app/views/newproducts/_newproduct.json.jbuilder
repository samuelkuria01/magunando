json.extract! newproduct, :id, :image, :name, :price, :created_at, :updated_at
json.url newproduct_url(newproduct, format: :json)
