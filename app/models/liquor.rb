class Liquor < ApplicationRecord

    validates :name, presence: true
    validates :description, presence: true
    validates :price, presence: true, numericality: { greater_than: 0 }
    validates :image_url, presence: true
    validates :second_image_url, presence: true

    
end
