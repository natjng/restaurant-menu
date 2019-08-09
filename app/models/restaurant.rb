class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :phone_number, length: {maximum: 10}

  belongs_to :user
  has_many :menus
end
