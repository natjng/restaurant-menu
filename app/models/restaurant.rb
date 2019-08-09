class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :phone_number, numericality: true, length: { maximum: 15 }
  # accoounts for international phone numbers

  belongs_to :user
  has_many :menus
end
