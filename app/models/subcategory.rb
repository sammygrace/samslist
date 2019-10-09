class Subcategory < ApplicationRecord
  belongs_to :category

  include Sluggerize
end
