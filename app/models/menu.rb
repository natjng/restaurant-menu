class Menu < ApplicationRecord
  belongs_to :restaurant
  has_many :items
  has_many :categories, through: :items
end
