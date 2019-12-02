class Post < ApplicationRecord
  include Sluggerize

  belongs_to :county, optional: true
  belongs_to :city, optional: true
  belongs_to :category, optional: true
  belongs_to :subcategory, optional: true

  has_many_attached :photos

  validates_uniqueness_of :title

  scope :per_subcategory, -> (subcategory) { where(subcategory_id: subcategory.id) }
  scope :per_category, -> (category) { where(category_id: category.id) }
  scope :filter_by, -> (title) { where("title ilike ?", title) }
  scope :filter_price_max, -> (max) { where("price_cents <= ?", max) }
  scope :filter_price_min, -> (min) { where("price_cents >= ?", min) }

  def slug_field
    title
  end
end
