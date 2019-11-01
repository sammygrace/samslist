class Category < ApplicationRecord
  include Sluggerize
  
  validates_uniqueness_of :name

  has_many :subcategories
  has_many :posts
end
