class Subcategory < ApplicationRecord
  include Sluggerize

  belongs_to :category

  has_many :posts
end
