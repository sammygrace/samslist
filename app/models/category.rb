class Category < ApplicationRecord
  include Sluggerize
  
  has_many :subcategories
  has_many :posts

  validates_uniqueness_of :name
end
