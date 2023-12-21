json.extract! foodproduct, :id, :name, :image, :price, :created_at, :updated_at
json.url foodproduct_url(foodproduct, format: :json)
