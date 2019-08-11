class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :phone_number, length: {is: 10}, numericality: true, allow_nil: true

  belongs_to :user
  has_many :menus

  scope :address_like, -> { where("address LIKE ?", "%ca%") }

  def self.restaurant_menu_categories
    Restaurant.all.map do |r|
      r.menus.each do |menu|
        menu.categories
      end
    end
  end

  # restaurants, menus, categories

end
