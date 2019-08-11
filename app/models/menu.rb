class Menu < ApplicationRecord
  belongs_to :restaurant
  has_many :items
  has_many :categories, through: :items

  validates :name, presence: true
  validates_associated :restaurant
end
