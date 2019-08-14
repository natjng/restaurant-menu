class Item < ApplicationRecord
  belongs_to :menu
  belongs_to :category

  validates :name, presence: true
  validates :price, numericality: true, allow_nil: true
  validates_associated :menu
  validates_associated :category

  scope :users_no_price, ->(menus) { where(price: nil).where("menu_id IN (?)", menus) }

  scope :recently_updated, ->(menus) { where("menu_id IN (?)", menus).order(updated_at: :desc) }

  def category_name
    self.try(:category).try(:name)
  end

  def category_name=(category_name)
    category = Category.find_or_create_by(name: category_name)
    self.category = category
  end
end
