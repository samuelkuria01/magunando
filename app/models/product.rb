class Product < ApplicationRecord
    belongs_to :category

    attribute :description, :text

end
