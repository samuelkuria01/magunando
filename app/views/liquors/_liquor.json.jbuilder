json.extract! liquor, :id, :name, :description, :price, :image_url, :created_at, :updated_at
json.url liquor_url(liquor, format: :json)
