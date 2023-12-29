json.extract! babyproduct, :id, :name, :image, :price, :category, :created_at, :updated_at
json.url babyproduct_url(babyproduct, format: :json)
