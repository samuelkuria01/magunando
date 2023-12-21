json.extract! allproduct, :id, :name, :image, :price, :created_at, :updated_at
json.url allproduct_url(allproduct, format: :json)
