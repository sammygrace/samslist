class Post < ApplicationRecord
  include Sluggerize

  def slug_field
    title
  end

  scope :per_subcategory, -> (subcategory) { where(subcategory_id: subcategory.id) }
  scope :per_category, -> (category) { where(category_id: category.id) }

  validates_uniqueness_of :title

  belongs_to :county, optional: true
  belongs_to :city, optional: true
  belongs_to :category, optional: true
  belongs_to :subcategory, optional: true

  has_many_attached :photos
end
