class Item < ApplicationRecord
  validates :name, presence: true
  validates :price, numericality: true, allow_nil: true

  belongs_to :menu
  belongs_to :category

  scope :no_price, -> { where(price: nil) }

  def category_name
    self.try(:category).try(:name)
  end

  def category_name=(category_name)
    category = Category.find_or_create_by(name: category_name)
    self.category = category
  end
end
