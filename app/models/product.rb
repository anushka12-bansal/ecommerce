class Product < ApplicationRecord
    has_many :users
    has_many :categories
    # belongs_to :category
end
