class Item < ApplicationRecord
    belongs_to :category


    validates :name, presence: true
    validates :price, presence: true
    validates :description, presence: true
    validates :image_url, presence: true
end
