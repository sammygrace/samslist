class Subcategory < ApplicationRecord
  validates_uniqueness_of :name
  belongs_to :category
end
