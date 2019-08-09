class Item < ApplicationRecord
  validates :name, presence: true
  validates :price, numericality: true

  belongs_to :menu
  belongs_to :category
end
