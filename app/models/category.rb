class Category < ApplicationRecord
    has_many :items

    validates :name, presence: true
    validates :image_url, presence: true
end
