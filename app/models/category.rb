class Category < ApplicationRecord
    has_many :items
    has_many :menus, through: :items
end
