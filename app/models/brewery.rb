class Brewery < ApplicationRecord
  has_many :beers
  has_many :categories, through: :beers

  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }

  def by_category(category_id)
    beers.where(category: category_id)
  end
end
