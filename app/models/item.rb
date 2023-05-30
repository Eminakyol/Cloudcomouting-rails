class Item < ApplicationRecord

    # Validations
    validates :name, :price, :category, presence: true
    validates :price, numericality: { greater_than: 0 }

    # Enums
    enum category: [:burger, :pizza, :toast, :main_course, :beverage, :dessert]
end
