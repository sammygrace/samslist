class Post < ApplicationRecord

  include Sluggerize

  def slug_field
    :title
  end

  validates_uniqueness_of :title

  belongs_to :county, optional: true
  belongs_to :city, optional: true
  belongs_to :category, optional: true
  belongs_to :subcategory, optional: true
end
