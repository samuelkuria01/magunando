class Category < ApplicationRecord
    has_many :products

    def self.find_by_name(name)
      includes(:products).find_by(name: name)
    end
  end