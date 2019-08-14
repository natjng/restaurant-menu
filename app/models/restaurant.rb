class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :phone_number, length: {is: 10}, numericality: true, allow_nil: true

  belongs_to :user
  has_many :menus

end
